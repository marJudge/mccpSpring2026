# Presentation Outline — AStar-BMao Paper  
## Oral Presentation Assessment 1: Research Story-telling by Experienced Writers

**Paper:** *Accelerating Graph Similarity Search via Efficient GED Computation*  
**Authors:** Lijun Chang, Xing Feng, Kai Yao, Lu Qin, Wenjie Zhang  
**Source:** Journal article (conference-style), graph algorithms / databases

---

## Opening (~1 minute)

### Content
- **Hook:** “Imagine searching a huge library of chemical molecules or protein structures for ones that *look similar* to a query—not identical, but close. The core step is measuring *how many changes* you need to turn one graph into another. That step used to be slow and memory-hungry; today’s paper makes it faster and much lighter on memory.”
- **Context:** This is a paper from **graph and data management**: it improves the speed and memory use of “graph similarity search,” which is used in chemistry, biology, and other areas where data is naturally represented as graphs (nodes and edges).
- **Transition:** “I’ll introduce the problem and the article, summarise the main findings, say why they matter, and then reflect on what I take away for my own research and writing.”

### Presenter notes
- **Content/Structure:** Keep the hook to one concrete scenario (e.g. molecules or proteins). Avoid jargon (e.g. “GED” can wait until after you’ve said “minimum number of edits”).
- **Delivery:** Pause after the hook; make eye contact. Use a clear transition: “First, …” / “I’ll start by …”.
- **Visual Aids:** Title slide with paper title, authors, and a simple “graph = nodes + edges” icon if helpful.
- **Language:** e.g. “The impetus for this study stems from…” / “The pressing question we seek to answer is how to make this step faster and more memory-efficient.”

---

## Section 1: Introduction to the Article (~1.5 minutes)

### Content
- **What the research is about:** The article tackles **graph similarity search**: given a query graph and a database of graphs, find all graphs that are “similar enough.” Similarity is measured by the **minimum number of edit operations** (add/delete/relabel nodes or edges) needed to turn the query into a data graph. Computing this “edit distance” exactly is the bottleneck.
- **Gap/problem:** The best previous method (AStar-LSa) is fast in some settings but **uses a lot of memory** when graphs get bigger or when the allowed distance gets larger, and can even run out of memory. That limits real-world use.
- **Research question/objective:** Can we design a **better way to estimate costs** during the search so that we **prune more bad options earlier**, and thus run **faster** and use **much less memory** than AStar-LSa?

### Presenter notes
- **Content/Structure:** Explain “edit distance” with one simple example (e.g. “change one edge, relabel one node = 2 edits”). Use a metaphor: “like spell-check distance between two words, but for graphs.”
- **Delivery:** Slight stress on “minimum number of edits” and “memory.” Avoid reading; use short phrases.
- **Visual Aids:** One slide with “Query graph → Database → Similar graphs”; optional second slide with a tiny example of two small graphs and “3 edits” between them.
- **Language:** “The research design was structured around improving the lower bound estimation…” / “We were prompted to investigate this issue due to the memory limits of the state-of-the-art.”

---

## Section 2: Key Findings (~2 minutes)

### Content
- **Finding 1 — Speed and memory:** The authors’ new algorithm **AStar-BMao** is **faster** than AStar-LSa and uses **much less main memory** on real datasets (e.g. AIDS, PubChem, GR). On large graphs or large distance thresholds, AStar-LSa often runs out of memory while AStar-BMao still finishes. So AStar-BMao **scales better**.
- **Finding 2 — Why it works:** They propose a new **tighter lower-bound estimate** (so the search can discard more branches earlier). They **prove formally** that their bound is never looser than the one in AStar-LSa. They also give **efficient algorithms** to compute it, and a slightly relaxed version (lbBMao) that trades a bit of tightness for **faster computation**, so overall runtime improves.
- **Finding 3 — Exact vs machine learning:** Compared to a recent machine-learning method (GENN-A*) that also predicts an edit path, AStar-BMao is **more than four orders of magnitude faster** and, importantly, **guarantees an optimal edit path**, whereas the ML method does not.

**Evidence from the paper:** The experimental section (Section 6) reports processing time, memory, and search space on multiple datasets and varying thresholds; the conclusion (Section 7) states that AStar-BMao outperforms AStar-LSa in both time and memory for graph similarity search and for GED verification/computation.

### Presenter notes
- **Content/Structure:** Present 2–3 findings in order: (1) main result (faster + less memory), (2) how (tighter bound + efficient computation), (3) comparison to ML. Use signaling language.
- **Delivery:** “The findings reveal…” / “Our data indicates…” — refer to “the paper’s experiments” or “the figures” without going into formulas.
- **Visual Aids:** One slide summarising “Faster + Less memory + Better scaling”; optional second slide with a simple bar or trend (e.g. “AStar-BMao vs AStar-LSa: time and memory” from the figures).
- **Language:** “The findings reveal a significant improvement in both processing time and memory consumption.” / “The analysis demonstrates that the new method scales to larger graphs and larger thresholds.”

---

## Section 3: Significance of the Research (~1.5 minutes)

### Content
- **Why it matters:** Graph similarity search is a **core operation** in applications that use graph databases (e.g. chemical compounds, proteins, program call graphs). Making the verification step faster and less memory-heavy **directly improves** what practitioners can do without bigger hardware.
- **Contribution to the field:** The paper shows that **smarter cost estimation** (tighter lower bounds plus efficient algorithms) can beat the previous best and scale better. It also shows that **exact algorithms** can still vastly outperform a recent ML-based approach in both speed and optimality.
- **Broader implications:** The same verification and computation methods apply beyond similarity search—e.g. graph classification, clustering, and other areas where “distance between graphs” is needed. So the improvement is useful across several research and application areas.

### Presenter notes
- **Content/Structure:** Link to “real-world impact”: faster search, ability to handle larger data, no need for ML training or sacrificing optimality.
- **Delivery:** Connect to audience: “If you’ve ever waited for a search to finish or seen a program run out of memory, this is the kind of improvement that addresses that.”
- **Visual Aids:** One slide: “Why this matters” — applications (chemistry, biology, etc.) and “Faster + Less memory = More scalable systems.”
- **Language:** “This research contributes to the field by…” / “The implications of the findings suggest that exact algorithms can still deliver large gains.”

---

## Section 4: Impact on My Own Research (~1.5 minutes)

### Content
- **Impact on research design:** In my own work, when I use or implement graph-based or search-style algorithms, I will pay more attention to **memory scalability** and **cost estimation**. The paper shows that investing in **theoretically better bounds** (with proofs) and **efficient computation** of those bounds can yield practical wins. I would consider similar “tight bound + efficient implementation” trade-offs in my designs.
- **Writing skills learned (with evidence from the article):**  
  - **Clear problem framing:** The introduction states the application (graph similarity search), the bottleneck (GED verification), and the limitation of the state-of-the-art (memory) in a few sentences.  
  - **Explicit contributions:** The “Contributions” bullet list and the “Organization” paragraph make the structure and contributions easy to follow.  
  - **Evidence-based claims:** The abstract and conclusion are backed by empirical studies (Section 6) and a comparison with another paradigm (ML).  
  I will aim to state the gap, list contributions clearly, and support claims with experiments and comparisons in my own writing.

### Presenter notes
- **Content/Structure:** Be specific and personal: “In my research I…” / “I learned from this article to…”. Quote or refer to the paper (e.g. “as the authors do in their Introduction and Contributions”).
- **Delivery:** Genuine reflection; avoid generic praise. One concrete writing takeaway and one research-design takeaway.
- **Visual Aids:** One slide: “Takeaways for my research” — two bullets (research design; writing) with short sub-points.
- **Language:** “This study has influenced my research design by…” / “One of the writing strategies I will adopt is…”

---

## Closing (~0.5 minutes)

### Content
- **Summary:** This article improves graph similarity search by a new, tighter cost estimation and efficient algorithms. The result is **faster** and **much less memory-intensive** verification than the previous best, and better scaling; it also vastly outperforms a recent ML-based method in speed and optimality.
- **Thank audience and invite questions:** “Thank you for listening. I’m happy to take any questions.”

### Presenter notes
- **Content/Structure:** One sentence to sum up the main result; one sentence to close.
- **Delivery:** “To sum up…” / “In conclusion…”; maintain eye contact; smile and pause before “Any questions?”
- **Visual Aids:** Optional “Summary” slide with one line: “Faster, lighter, scalable graph similarity verification.”
- **Language:** Concluding phrases from Session 4 materials; keep it brief.

---

## Rubric Alignment Summary

| Rubric criterion | How this outline addresses it |
|------------------|--------------------------------|
| Content appropriate to non-specialist audience | Plain language; metaphors (e.g. edit distance ≈ spell-check for graphs); minimal jargon; applications (chemistry, biology) explained. |
| In-depth reflection integrated into analysis | Section 4 ties the article to research design and writing skills with specific evidence (problem framing, contributions, experiments). |
| Well-structured, clear logical flow | Fixed sections (Opening → Intro → Findings → Significance → My research → Closing); transition statements in presenter notes. |
| Delivery / body language / timing | Notes on pausing, eye contact, stress, signaling language, and no reading from script. |
| Visual aids | Each section has slide suggestions; minimal text, key points and one visual per slide where possible. |
| Language range and accuracy | Suggested phrases from Session 4 (motivation, methodology, findings, significance, contributions, conclusion). |

---

*Outline generated according to `genOutline.md`. Slide-by-slide plan for HTML slides is in `slide_plan.md`.*
