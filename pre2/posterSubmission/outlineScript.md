# Poster Presentation Outline Notes

**Purpose:** note-card style prompts for a 2-3 minute poster presentation.  
**Important:** do not read this word for word during the recording or live presentation.

---

## 0:00-0:20 Opening

- Greet audience.
- Title: `Machine Learning for Graph Similarity Search`.
- One-line focus:
  - My poster looks at how machine learning can improve graph similarity search.
  - I focus on the research gap and a proposed unified framework.

## 0:20-0:45 Why this topic matters

- Explain graph similarity search in simple words:
  - find graphs that are similar to a query graph
  - useful in chemistry, biology, software analysis
- Mention GED:
  - minimum number of edits between two graphs
- Key problem:
  - exact GED is powerful but expensive

## 0:45-1:20 Main gap in the literature

- Existing methods improve only part of the problem.
- Theme 1:
  - filtering/indexing reduces comparisons
  - but recall-efficiency trade-offs can worsen
- Theme 2:
  - approximate GED speeds up pairwise comparison
  - but often not tested in full end-to-end retrieval
- Theme 3:
  - hybrid methods look promising
  - but integration is still limited

## 1:20-1:55 What my study will do

- State my three objectives:
  - synthesise current ML-based approaches
  - investigate integration with metric-space indexing
  - design and evaluate a unified framework
- Point to the framework diagram:
  - learned approximate distance + metric-space index
  - candidate selection + efficient verification

## 1:55-2:25 Anticipated findings

- Expected result 1:
  - integrated systems improve end-to-end efficiency
- Expected result 2:
  - hybrid methods preserve recall better at larger thresholds
- Expected result 3:
  - systematic comparison gives practical guidance for method selection

## 2:25-2:50 Significance and close

- Main significance:
  - clearer map of the field
  - bridge theory and practical deployment
  - support scalable search systems
- Closing line:
  - my main argument is that better graph similarity search needs not only a faster model, but a better overall search system
- Thank audience and invite questions.

---

## Delivery reminders

- Point to the poster sections instead of reading from them.
- Slow down on:
  - graph similarity search
  - graph edit distance
  - unified framework
  - recall and scalability
- Keep eye contact after each section.
- If asked about final results, clarify that this is a proposal-stage poster with anticipated findings based on the literature and planned methodology.
