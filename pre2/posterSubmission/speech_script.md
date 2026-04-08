# Poster Speech Script

**Purpose:** a slightly concise English script for the 2-3 minute poster presentation.  
**Important:** practise with this script first, then speak from understanding rather than reading it aloud.

---

Good morning everyone.

My poster is titled **Machine Learning for Graph Similarity Search**. In this project, I focus on how machine learning can improve graph similarity search in large graph databases.

In simple terms, graph similarity search means finding graphs that are similar to a query graph rather than exactly the same. This is important in areas such as chemistry, biology, and software analysis. A common measure here is **graph edit distance**, or GED, which means the minimum number of edits needed to transform one graph into another.

The main challenge is that exact GED is computationally expensive, especially when the database is large. That is why researchers have started to use machine learning to make the search process more efficient.

In my literature review, I identify three main directions. The first is filtering and indexing methods, which reduce the number of exact comparisons. The second is approximate GED methods, which make each comparison faster. The third is hybrid or two-stage methods, which try to combine different strengths.

My main observation is that each direction is useful, but none of them fully solves the whole problem on its own. This leads to the research gap in my study: existing methods often improve only one part of the retrieval pipeline, while stronger integration is still limited.

So my study has three main aims. First, I synthesise current machine-learning approaches to graph similarity search. Second, I investigate how learned approximate distances can be combined with metric-space indexing. Third, I propose a unified framework that aims to improve efficiency while maintaining high recall.

Methodologically, I plan to compare isolated methods and integrated methods across several criteria, including recall, query time, memory usage, index build cost, and scalability.

Because this project is still at the proposal stage, my poster presents anticipated rather than final findings. However, I expect that hybrid systems will improve end-to-end efficiency and preserve recall better at larger thresholds.

Overall, the key message of my poster is that better graph similarity search needs not only a faster model, but a better overall search system.

Thank you very much for listening. I would be happy to answer any questions.
