# Presentation Outline - Machine Learning for Graph Similarity Search
## Oral Presentation Assessment 1: Research Story-telling by Experienced Writers

**Source text:** `writing/writingSampleCollection/MCCP6020_Writing_Assignment_Machine_Learning_Graph_Similarity_Search.md`  
**Type of source:** Introduction and literature review / research proposal in computer science  
**Important note:** Because this source text is a literature review rather than a single empirical journal article, the "key findings" section below focuses on the paper's **synthesised insights from previous studies** and the **research gaps** it identifies.

**Suggested timing:** 1:00 + 1:30 + 2:00 + 1:30 + 1:30 + 0:30 = 8:00

---

## Opening (~1 minute)

### Content
- **Hook:** "Imagine searching a huge database of molecules, software networks, or biological structures. You are not looking for an exact copy. You are looking for something *close enough* to be useful. For humans, that idea feels simple. For computers, it can be extremely expensive."
- **Context:** This paper sits at the intersection of **machine learning, graph databases, and data retrieval**. It matters because many real-world objects can be represented as graphs, and searching for similar graphs is useful in bioinformatics, chemoinformatics, software engineering, and computer vision.
- **Transition:** "Today I will explain what graph similarity search is, what this review reveals about current machine-learning methods, why those insights matter, and what I learn from the writer's research design and writing choices."

### Presenter notes
- **Content/Structure:** Start with one concrete example such as drug discovery. Explain a graph as "dots connected by lines." Keep the opening accessible and practical.
- **Delivery:** Pause after "close enough." Stress "extremely expensive" and "real-world objects." Make eye contact before moving into the roadmap.
- **Visual Aids:** Title slide plus a simple diagram: query graph -> database -> similar matches.
- **Language:** "The impetus for this topic stems from..." / "This issue matters because..."

---

## Section 1: Introduction to the Article (~1.5 minutes)

### Content
- **What the research is about:** This text reviews how **machine learning can accelerate graph similarity search**. In simple terms, the task is to search a database and find graphs that are similar to a query graph.
- **Key concept explained simply:** Similarity is often measured by **graph edit distance (GED)**, which means the minimum number of changes needed to turn one graph into another. You can compare it to the way spell-check measures how many edits turn one word into another, but here the objects are graphs instead of words.
- **Gap/problem:** Exact GED computation is **NP-hard**, so searching large graph databases is expensive. Existing ML methods help, but many solve only part of the problem. Some reduce the number of comparisons but may lose recall or become costly at large thresholds. Others estimate GED faster for one pair of graphs, but are not well integrated into a full search pipeline.
- **Research objective:** The writer aims to **survey existing ML-based approaches**, compare their strengths and limitations, identify research gaps, and motivate a **unified framework** that combines learned components with metric-space indexing.

### Presenter notes
- **Content/Structure:** Avoid formulas. Translate `threshold tau` into "distance limit" or "allowed difference." Mention clearly that this is a structured review, not a single lab experiment.
- **Delivery:** Stress "minimum number of changes," "expensive," and "unified framework." Use short phrases rather than full sentences.
- **Visual Aids:** One slide with a small before/after graph example and a label such as "2 or 3 edits." Another option: a simple "problem -> challenge -> review objective" flow.
- **Language:** "The research design was structured around synthesising existing methods..." / "The pressing question the writer seeks to answer is..."

---

## Section 2: Key Findings / Key Insights from the Review (~2 minutes)

### Content
- **Finding 1 - The literature falls into three clear themes:**  
  The review groups existing studies into **three main strategies**:  
  1. **Filtering and indexing methods** that reduce the number of exact GED computations.  
  2. **Approximate GED methods** that make individual graph-pair comparison faster.  
  3. **Hybrid or two-stage methods** that combine indexing with learned components.
- **Finding 2 - Every strategy involves trade-offs:**  
  Embedding- and hashing-based methods such as **GHashing** and **LAN** can narrow the candidate set quickly, but performance may weaken when the distance threshold becomes large. Approximate GED methods such as **App-BMao**, **GEDHOT**, and **GREED** can speed up pairwise estimation, but they are often evaluated outside a full end-to-end search system.
- **Finding 3 - Hybrid design looks especially promising:**  
  The review highlights newer work such as **Gisma**, which combines metric-space indexing with learned approximate distances. This suggests that the most promising direction is not choosing between theory and machine learning, but **combining them** to improve both efficiency and recall.

**Evidence from the text:** The literature review explicitly organises the field into the three themes above and later states three major gaps: limited integration of learned approximate GED into full indexing frameworks, limited comparative evaluation across datasets and thresholds, and underexplored use of metric-space structure such as the doubling property of GED space.

### Presenter notes
- **Content/Structure:** Make it clear that these are **synthesised findings from prior studies**, not the results of one experiment. Use signposting: "The review identifies...", "The literature suggests...", "A key contrast is..."
- **Delivery:** Use your voice to distinguish the three themes. Pause briefly between themes so the audience can follow the structure.
- **Visual Aids:** A three-column taxonomy slide works well here. You can also add a simple trade-off chart: speed, recall, scalability, and system integration.
- **Language:** "The findings reveal three broad patterns..." / "The analysis demonstrates that no single approach solves every part of the problem."

---

## Section 3: Significance of the Research (~1.5 minutes)

### Content
- **Why it matters:** This review helps make a technically complex field more understandable. It shows that improving graph similarity search is not only about building a faster model; it is also about building a better **search system**.
- **Contribution to the field:** The paper contributes a **clear taxonomy**, a comparison of **strengths and limitations**, and a **future research agenda**. It shows where current ML approaches are useful, where they remain weak, and where hybrid systems may create better solutions.
- **Broader implications:** These insights matter for large graph databases in chemistry, biology, and related fields, where researchers need fast search, strong recall, and scalable systems. More broadly, the paper shows the value of combining **learning** with **structural or theoretical insights**.

### Presenter notes
- **Content/Structure:** Connect to problems a non-specialist can imagine: bigger databases, slower search, and the risk of missing useful matches.
- **Delivery:** Use emphasis on "better search system," "taxonomy," and "future research agenda." Keep the tone confident but explanatory.
- **Visual Aids:** One slide with three application icons or labels: chemistry, biology, software. Add a short line such as "faster search + better recall + better scalability."
- **Language:** "This research contributes to the field by..." / "The implications of these insights suggest that..."

---

## Section 4: Impact on My Own Research (~1.5 minutes)

### Content
- **Impact on my research design:** This review reminds me that I should not evaluate a method only by how accurate it is on one graph pair. I should also consider **recall, runtime, threshold sensitivity, database size, and index construction cost**. It encourages me to think in system terms and to combine machine learning with algorithmic structure rather than treating them separately.
- **Writing skills I learned from this article:**  
  - **Clear move structure:** The introduction is organised as territory -> niche -> purpose, so the reader quickly understands the field, the gap, and the objective.  
  - **Strong thematic organisation:** The literature review is grouped by theme, not by a loose list of authors, which makes the comparison clearer.  
  - **Explicit gap statements:** Phrases such as "Despite these advances..." and "The literature reveals several gaps" make the argument easy to follow.  
  - **Purpose-driven conclusion:** The final paragraph explains exactly how the review leads to the writer's next research step.
- **Evidence from the text:** The source uses labelled moves in the introduction and literature review, a section called **Thematic Overview**, a focused **Research Gaps** section, and a closing paragraph that links the review to a future unified framework.

### Presenter notes
- **Content/Structure:** Make this section personal and specific. Say "In my own research, I would..." rather than giving generic praise.
- **Delivery:** Sound reflective rather than descriptive. Slow down slightly when talking about writing skills so the audience can see the connection to the course.
- **Visual Aids:** Two-column slide: "Research Design" on one side and "Writing Lessons" on the other.
- **Language:** "This text has influenced my research design by..." / "One writing strategy I will adopt is..."

---

## Closing (~0.5 minutes)

### Content
- **Summary:** This source text shows that machine learning can help graph similarity search, but its strongest message is that **no single technique is enough**. The field needs better combinations of learning, indexing, and careful evaluation.
- **Closing line:** "Thank you for listening. I would be happy to take any questions."

### Presenter notes
- **Content/Structure:** Use one sentence for the main takeaway and one sentence for the ending.
- **Delivery:** Use a clear concluding phrase such as "To sum up..." or "In conclusion..." Maintain eye contact and pause before inviting questions.
- **Visual Aids:** Final slide with one takeaway sentence and a simple "Questions?" prompt.
- **Language:** "To sum up..." / "In conclusion..." / "Thank you for your attention."

---

## Rubric Alignment Summary

| Rubric criterion | How this outline addresses it |
|------------------|--------------------------------|
| Content appropriate to non-specialist audience | Uses plain-language explanations of graphs and GED; avoids formulas; links the topic to molecules, biology, and software. |
| In-depth reflection integrated into analysis | Section 4 connects the source to research design and writing practice with specific evidence from the text. |
| Well-structured and logically clear | Follows a clear progression: hook -> introduction -> key insights -> significance -> personal impact -> closing. |
| Delivery, body language, and timing | Each section includes delivery notes on pausing, emphasis, eye contact, and pacing. |
| Use of visual aids | Each section suggests simple, purposeful visuals rather than text-heavy slides. |
| Language range and accuracy | Includes useful academic presentation phrases from Session 4 materials. |

---

*This outline was regenerated from scratch based on `writing/writingSampleCollection/MCCP6020_Writing_Assignment_Machine_Learning_Graph_Similarity_Search.md`.*
