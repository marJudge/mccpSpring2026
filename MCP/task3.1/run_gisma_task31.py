#!/usr/bin/env python3
"""用 conda MCP 环境和 task3.1 工具链阅读 workplace 下的 Gisma 论文：解析结构并生成可视化"""
import asyncio
import json
import re
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent
sys.path.insert(0, str(SCRIPT_DIR))

from tools import file_tools, paper_tools, visualization_tools

# Gisma 目录在 task3.1 下
GISMA_DIR = Path(__file__).resolve().parent / "Gisma__A_Giant_Step_Small_Step_Indexing_Framework_for_Approximate_Similarity_Search_in_Graph_Databases"
MAIN_TEX = GISMA_DIR / "main.tex"


def expand_inputs(main_path: Path) -> str:
    """展开 main.tex 中的 \\input{...}，合并被引用 .tex 以解析完整章节结构"""
    main_path = main_path.resolve()
    base_dir = main_path.parent
    with open(main_path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()
    pattern = re.compile(r"\\(?:input|include)\{([^}]+)\}")
    combined = content
    for match in pattern.finditer(content):
        name = match.group(1).strip()
        if not name.endswith(".tex"):
            name = name + ".tex"
        inc_path = (base_dir / name).resolve()
        if inc_path.exists() and inc_path.is_file():
            with open(inc_path, "r", encoding="utf-8", errors="ignore") as g:
                combined += "\n\n% ----- \\input{" + name + "} -----\n\n" + g.read()
    return combined


async def main():
    if not MAIN_TEX.exists():
        print(f"错误：未找到 {MAIN_TEX}")
        sys.exit(1)
    print(f"使用 conda MCP 环境 + MCP/task3.1 阅读 Gisma 论文: {MAIN_TEX}\n")

    print("1. read_paper_file ...")
    read_result = await file_tools.read_paper_file(str(MAIN_TEX))
    print(json.dumps(read_result, indent=2, ensure_ascii=False)[:600] + "...\n")

    print("2. parse_paper_structure (展开 \\input) ...")
    expanded_content = expand_inputs(MAIN_TEX)
    structure = await paper_tools.parse_paper_structure(
        file_path=str(MAIN_TEX), file_content=expanded_content
    )
    print("标题:", structure.get("title"))
    print("章节数:", structure.get("section_count", 0), "\n")

    print("3. analyze_section_interconnections ...")
    connections = await paper_tools.analyze_section_interconnections(structure, str(MAIN_TEX))
    print("connections:", connections.get("connection_count", 0), "\n")

    out_hier = GISMA_DIR / "visual.html"
    print("4. generate_hierarchical_html ->", out_hier)
    result_hier = await visualization_tools.generate_hierarchical_html(
        structure, str(out_hier), SCRIPT_DIR
    )
    print(result_hier, "\n")

    out_inter = GISMA_DIR / "visual_interconnection_text.html"
    print("5. generate_interconnected_html ->", out_inter)
    result_inter = await visualization_tools.generate_interconnected_html(
        structure, connections, str(out_inter), SCRIPT_DIR
    )
    print(result_inter)

    print("\n完成。在浏览器打开:")
    print("  file://" + str(out_hier))
    print("  file://" + str(out_inter))


if __name__ == "__main__":
    asyncio.run(main())
