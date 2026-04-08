# Anticipated Q&A

This file helps me prepare for the Q&A session after my 2-3 minute poster presentation.  
Because my project is still at proposal stage, some replies refer to planned methodology and anticipated findings rather than completed experiments.

---

## Non-specialist audience questions

### 1. What is graph similarity search in simple terms?

- It means searching for structures that are similar to a query structure, not necessarily identical.
- A graph can represent things like molecules, networks, or relationships between objects.
- The task is useful when "close enough" is more meaningful than exact matching.

### 2. Why is this topic important outside computer science?

- It has practical value in chemistry, for example when searching for molecules with similar structures.
- It also matters in biology, software engineering, and other fields that use relational data.
- Better similarity search can support faster discovery, analysis, and decision-making.

### 3. Why do you use machine learning here?

- Machine learning can help reduce the search cost by filtering candidates or approximating similarity faster.
- Traditional exact methods are often too expensive for large databases.
- My project examines how ML can help without losing too much accuracy or recall.

### 4. Are you saying machine learning will replace exact methods?

- No, not necessarily.
- One of my main arguments is that exact methods and machine learning should work together.
- A hybrid system may be more effective than relying on only one approach.

---

## Specialist or semi-specialist audience questions

### 5. Why focus on graph edit distance rather than another similarity measure?

- GED is one of the most widely used similarity measures in graph similarity search.
- It is flexible because it captures structural differences through edit operations.
- I focus on GED because it is both important and computationally challenging, which makes it a good test case for ML-enhanced search.

### 6. What research gap are you addressing?

- Existing approaches often improve only one part of the retrieval pipeline.
- Filtering/indexing methods reduce comparisons, but may struggle with recall-efficiency trade-offs at larger thresholds.
- Approximate GED methods can be fast, but they are often not fully integrated into end-to-end retrieval systems.
- Hybrid approaches are promising, but their design space is still underexplored.

### 7. What exactly is your proposed contribution?

- First, I want to provide a clearer synthesis of ML-based approaches in this area.
- Second, I want to investigate how learned approximate distances can be combined with metric-space indexing.
- Third, I aim to propose and evaluate a unified framework for efficient, high-recall graph similarity search.

### 8. How will you evaluate your framework?

- I plan to compare methods using multiple criteria rather than a single metric.
- Key measures include recall, query time, memory usage, index build cost, and scalability across different database sizes and thresholds.
- This is important because a method that is fast in one setting may not remain effective in another.

### 9. What kinds of datasets or experiments do you expect to use?

- I expect to use benchmark graph datasets that vary in size and structure.
- I will compare isolated baselines with integrated or hybrid approaches.
- The exact dataset choice will depend on availability and suitability for GED-based similarity search.

### 10. What do you expect to find?

- I expect that integrated learned-plus-indexed systems will improve end-to-end efficiency over isolated approaches.
- I also expect hybrid systems to preserve recall better at larger thresholds and larger scales.
- Another likely outcome is practical guidance on when different methods are most appropriate.

---

## Tougher follow-up questions

### 11. What is the biggest limitation of your current poster?

- The project is still at proposal stage, so I am presenting a research design and literature-based preliminary insights rather than final experimental results.
- That means some claims are hypotheses or anticipated findings, not confirmed outcomes yet.
- I would make this clear during the presentation so expectations remain realistic.

### 12. What if your unified framework does not outperform current baselines?

- That would still be a useful result.
- It could show where integration is difficult or where specific components create bottlenecks.
- Negative or mixed results could still help refine method selection and future research design.

### 13. How would you answer if someone asks a question you cannot answer on the spot?

- I would acknowledge the question honestly rather than guessing.
- I could say that I need to examine the issue more carefully and would be happy to follow up later.
- That approach is more professional than giving an uncertain or incorrect answer.

---

## One-sentence fallback answers

- `My project is at proposal stage, so the poster focuses on research design, literature synthesis, and anticipated findings.`
- `The main gap is that existing ML methods often improve only one part of the graph similarity search pipeline.`
- `My key idea is to combine learned components with metric-space indexing in a unified system.`
- `I evaluate the problem as a whole system issue, not just a single-model accuracy issue.`
