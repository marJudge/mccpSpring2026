# HTML Slide Plan — AStar-BMao Presentation

## Overview

- **Total slides:** 10 (for an 8-minute presentation)
- **Format:** Single-file HTML using custom CSS (e.g. Reveal.js or simple custom CSS; no heavy dependencies)
- **Navigation:** Arrow keys (← →) and click to advance; optional progress bar at bottom
- **Design:** Clean, modern; minimal text; large font; high contrast; suitable for projectors
- **Responsive:** Usable on laptop and projector screens
- **Sample reference:** Check `sample_slides/` for format examples (if present)

---

## Slide-by-Slide Plan

### Slide 1: Title Slide
**Title:** Accelerating Graph Similarity Search  
**Subtitle:** Research Story-telling — Oral Presentation Assessment 1  
**Content:**
- Paper: *Accelerating Graph Similarity Search via Efficient GED Computation*
- Authors: Chang, Feng, Yao, Qin, Zhang
- Presenter name and date

**Visual:** Simple title layout; optional small icon (e.g. two small graphs with an arrow).  
**Design notes:** Large title; one or two lines of subtitle; no clutter.

---

### Slide 2: The Hook — Searching for Similar Graphs
**Title:** When “close enough” matters  
**Content:**
- Icon or diagram: “Query graph” → “Database of graphs” → “Similar graphs”
- Caption: “Like finding molecules or proteins that are *similar* to a query—not identical.”
- One line: “The bottleneck: how many edits to turn one graph into another?”

**Visual:** Simple diagram: one query graph, a database cloud, and a few result graphs.  
**Design notes:** No formulas. One key idea per line. Large, readable text.

---

### Slide 3: The Problem — Speed vs Memory
**Title:** The previous best method hit a wall  
**Content:**
- Bullet: State-of-the-art (AStar-LSa) is fast but **memory-hungry**
- Bullet: When graphs get bigger or the allowed distance gets larger → **runs out of memory**
- Bullet: Limits real-world use (e.g. large chemical or protein databases)

**Visual:** Simple “scale” or “graph size / threshold ↑ → memory ↑” sketch; optional “out of memory” icon.  
**Design notes:** 3 short bullets; high contrast; no jargon.

---

### Slide 4: The Idea — Smarter Cost Estimation
**Title:** Smarter search, less memory  
**Content:**
- Bullet: New **tighter lower-bound** estimate → prune more bad options earlier
- Bullet: Formally **proved** tighter than the previous method
- Bullet: **Efficient algorithms** to compute it → faster overall

**Visual:** Metaphor: “Like a better map that tells you earlier when a path is dead-end.” Optional: simple “search tree” with pruned branches.  
**Design notes:** No formulas. Focus on “tighter estimate” and “proved + efficient.”

---

### Slide 5: Main Result — AStar-BMao
**Title:** Result: faster and lighter  
**Content:**
- **AStar-BMao** = new algorithm using the new bound
- **Faster** than AStar-LSa on real datasets
- **Much less memory** → scales to larger graphs and larger thresholds
- Where AStar-LSa runs out of memory, AStar-BMao still finishes

**Visual:** Two bars or two trend lines: “Time” and “Memory” — AStar-BMao vs AStar-LSa (simplified from paper figures).  
**Design notes:** Emphasise “faster” and “less memory”; one simple visual.

---

### Slide 6: Finding 2 — Why It Works
**Title:** Tighter bound + efficient computation  
**Content:**
- Tighter bound → smaller search space → less memory
- Slightly relaxed version (lbBMao) → faster to compute → **faster overall**
- Experiments: smaller search space, lower memory, better runtime

**Visual:** Optional: “Bound tightness” vs “Computation cost” trade-off (one simple diagram).  
**Design notes:** Max 3 bullets; avoid equations.

---

### Slide 7: Finding 3 — Exact vs Machine Learning
**Title:** Exact method vs machine learning  
**Content:**
- Compared to ML method (GENN-A*): AStar-BMao **>10,000× faster** (4+ orders of magnitude)
- AStar-BMao: **guarantees optimal** edit path
- ML: no optimality guarantee

**Visual:** Simple comparison table or two icons: “Exact” vs “ML” with “Speed” and “Optimality” checkmarks.  
**Design notes:** One number (e.g. “4 orders of magnitude”); rest in bullets.

---

### Slide 8: Significance
**Title:** Why this matters  
**Content:**
- Graph similarity search is **core** in chemistry, biology, program analysis
- **Faster, lighter** verification → better scalability without bigger hardware
- Same ideas apply to **graph classification, clustering**, and other areas

**Visual:** 3 small icons: molecules, proteins, networks (or similar).  
**Design notes:** Application-focused; no technical details.

---

### Slide 9: Impact on My Research & Writing
**Title:** Takeaways for my research  
**Content:**
- **Research design:** Invest in better cost estimation and memory scalability; “tight bound + efficient implementation” pays off.
- **Writing:** Clear problem framing; explicit contributions list; back claims with experiments and comparisons (as in this article).

**Visual:** Two columns or two bullets with short sub-points.  
**Design notes:** Personal and specific; minimal text.

---

### Slide 10: Summary & Thank You
**Title:** Summary  
**Content:**
- One line: “Faster, lighter, scalable graph similarity verification — with a proved tighter bound and efficient algorithms.”
- “Thank you. Any questions?”

**Visual:** Clean closing slide; optional course/assessment title.  
**Design notes:** One sentence summary; friendly sign-off.

---

## HTML Format Specifications

1. **Structure**
   - Single HTML file; optional single CSS block or external CSS.
   - Use semantic sections (e.g. `<section>` per slide) for accessibility and navigation.

2. **Design**
   - Clean, modern look (e.g. Reveal.js theme or simple custom CSS).
   - Minimal text on each slide; key points and one main visual per slide where possible.
   - Large font size (e.g. title 2–2.5rem, body 1.25–1.5rem); high contrast (e.g. dark text on light background or the reverse).

3. **Navigation**
   - Advance: arrow keys (← / →) and click (e.g. next/previous button or click on slide).
   - Optional: progress bar or slide counter (e.g. “5 / 10”).

4. **Responsive**
   - Use relative units (rem, %) and simple media queries so slides are readable on different screen sizes and projectors.

5. **Content**
   - No full paragraphs; bullet points and short phrases only.
   - Use bold for emphasis (e.g. “Faster,” “Much less memory”).
   - If using figures from the paper, use simplified versions and cite the paper.

6. **Reference**
   - Check `sample_slides/` for layout and style examples when generating the HTML.
