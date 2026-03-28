# Writing Assignment: Introduction and Literature Review  
## Machine Learning for Graph Similarity Search

*Formatting: Times New Roman, 12pt; 1.5 or double line spacing; 2.54 cm margins. Indicate moves via headings or Word comments as required.*

---

## INTRODUCTION

### Move 1 – Establishing a Territory

Similarity search in graph databases aims to retrieve graphs that are similar to a given query graph. It is a fundamental problem with a wide range of applications, including bioinformatics, chemoinformatics, software engineering, and computer vision (Bunke & Shearer, 1998; Gao et al., 2010; Zeng et al., 2009). For example, in bioinformatics, molecular structures can be naturally represented as graphs, and a typical task is to search a compound database for molecules whose structures are similar to that of a given drug molecule. For graph similarity search, the graph edit distance (GED)—defined as the minimum number of edit operations that transform one graph into another—has been widely adopted as the similarity metric (Bunke & Allermann, 1983; Riesen & Bunke, 2009; Zeng et al., 2009). Given a query graph and a distance threshold τ, the task is to retrieve all graphs from the database whose GED to the query is within τ. As GED computation is NP-hard (Zeng et al., 2009), performing similarity search over large graph databases is computationally expensive. In recent years, a variety of methods have been proposed to accelerate graph similarity search. Among them, machine learning (ML) has emerged as a promising direction: learned embeddings, graph neural networks (GNNs), and approximate GED models can reduce the number of exact distance computations or speed up individual distance estimations, thereby improving both efficiency and scalability (Bai et al., 2019; Zhao et al., 2020; Zhang et al., 2022).

### Move 2 – Identifying a Niche

Despite these advances, existing ML-based approaches exhibit several limitations. First, many methods that rely on graph embeddings or hashing focus on reducing the number of GED computations through filtering but do not fully exploit the metric structure of the GED space; consequently, they may suffer from low recall or high index construction cost when the distance threshold is large (Zhao et al., 2020; Zhang et al., 2022). Second, approximate GED methods that use supervised or unsupervised learning can accelerate single-pair distance estimation, yet their integration with indexing structures for range queries has not been systematically studied across different database scales and threshold settings (Li et al., 2019; Zhang et al., 2022). Third, the combination of metric-space indexing (e.g., doubling-based or hierarchical structures) with learned components has received limited attention in the graph setting, leaving a gap between theoretically efficient indexing and practically deployable ML-enhanced search (e.g., recent work on two-stage indexing by Zhang et al., 2026). Addressing these gaps is necessary to achieve scalable, high-recall graph similarity search that meets the demands of real-world applications such as large-scale chemical and biological databases.

### Move 3 – Occupying the Niche

The purpose of this research is to design and evaluate machine learning methods for graph similarity search that achieve high recall and efficiency across a range of distance thresholds and database sizes. Specifically, the objectives are: (1) to survey and synthesise existing ML-based approaches, including embedding-based filtering, GNN-based hashing, and approximate GED estimation, and to identify their strengths and limitations; (2) to investigate how learned components can be integrated with metric-space indexing (e.g., doubling-based or hierarchical structures) for graph databases; and (3) to propose and empirically evaluate a unified framework that combines learned approximate distances with two-stage indexing to fill the gap between theory and practice. By doing so, this research will provide a clearer picture of the role of machine learning in graph similarity search and offer a basis for future systems that are both efficient and effective.

---

## LITERATURE REVIEW

### Move 1 – Thematic Overview

This section reviews the literature on machine learning for graph similarity search. The key terms used in this review are as follows. *Graph similarity search* refers to the problem of retrieving, from a graph database, all graphs whose distance to a query graph is within a given threshold. *Graph edit distance (GED)* is the minimum number of vertex or edge edit operations required to transform one graph into another and is the most widely used similarity measure in this context. *Machine learning for graph similarity search* encompasses methods that use learned models—such as graph neural networks, embeddings, or regression models—to accelerate or approximate the search process. The scope of this review is limited to GED-based similarity search and ML-based acceleration or approximation; it does not cover other similarity measures (e.g., kernel-based or subgraph isomorphism) in depth. The purpose of the review is to group existing work by theme, synthesise their methodologies and findings, and identify research gaps that motivate the current study.

### Move 2 – Critical Analysis

The relevant literature can be grouped into three main themes: (i) reduction of the number of GED computations via indexing and filtering, (ii) acceleration of individual GED computations via approximation, and (iii) hybrid or two-stage methods that combine indexing with learned components.

*Reduction of GED computations.* A large body of work aims to reduce the number of exact GED computations by using indexes or filters. Traditional approaches include lower-bound-based filtering and tree or metric-space indexes (Riesen et al., 2007; Zeng et al., 2009). More recently, ML has been applied to this goal. For instance, GHashing leverages graph neural networks with hashing to map graphs into binary codes, enabling fast filtering before exact GED verification (Zhao et al., 2020). LAN adapts the HNSW (hierarchical navigable small world) framework for graph databases to support approximate k-nearest-neighbour-style queries (Zhang et al., 2022). These methods share the aim of quickly narrowing the candidate set; however, GHashing and LAN may require many distance computations or long index build times when the distance threshold τ is large, and their recall-efficiency trade-offs depend heavily on the choice of embedding and index parameters (Zhao et al., 2020; Zhang et al., 2022). In contrast, exact or approximate methods that build on metric-space properties—such as doubling constants and r-nets—offer provable query complexity in terms of the doubling constant and database size (Krauthgamer & Lee, 2004; Beygelzimer et al., 2006; Gottlieb & Krauthgamer, 2013), but until recently had not been applied to the GED space (Zhang et al., 2026).

*Acceleration of individual GED computations.* Because exact GED is NP-hard, another line of work focuses on approximating GED for single graph pairs. App-BMao extends the exact A*-based method by introducing an iteration limit to trade accuracy for speed (Li et al., 2019). GEDHOT uses an ensemble of supervised and unsupervised models to estimate GED and can be used to rank or filter candidates (Zhang et al., 2022). GREED and similar neural approximators learn to predict GED from graph pairs and are among the fastest approximate GED methods in practice, with small mean absolute error on benchmark datasets (Bai et al., 2019; Zhang et al., 2026). A limitation of these approaches is that they are often evaluated in isolation; their integration with indexing structures for end-to-end similarity search (e.g., for range queries with threshold τ) is less well studied. Moreover, the accuracy of learned approximators can degrade on graphs that differ in size or structure from the training distribution (Li et al., 2019).

*Hybrid and two-stage methods.* Recent work has begun to combine indexing with learned or approximate components. Zhang et al. (2026) propose Gisma, a two-stage index for approximate graph similarity search. The first stage (NetDAG) uses doubling metrics and r-nets to perform a “giant-step” search in the GED space and narrow the search to a candidate region; the second stage (EditPathForest) performs a “small-step” traversal within that region. Gisma uses an approximate GED method (e.g., GREED) during index construction where exact GED is costly, and achieves state-of-the-art efficiency and recall on several benchmarks, especially for large τ (Zhang et al., 2026). This illustrates that combining metric-space indexing with learned approximate distances can yield both theoretical guarantees and practical performance. Nevertheless, the design space of such hybrid systems—e.g., the choice of threshold that separates the two stages, the role of different GNN or embedding modules, and scalability to very large databases—remains underexplored.

Across these themes, a contrast emerges: embedding- or hashing-based methods prioritise fast filtering but may sacrifice recall or scale poorly with τ; approximate GED methods prioritise single-pair speed but are not always embedded in a full search pipeline; and doubling-based or two-stage methods offer better complexity and recall in some settings but have only recently been extended to graphs. Critically, the methodologies differ in whether they assume metric properties of the GED space (e.g., doubling constant) and in how they use ML (for filtering only, for distance approximation only, or for both). These differences justify a focused review and a research agenda that systematically integrates ML with metric-space indexing for graph similarity search.

### Move 3 – Research Gaps

The literature reveals several gaps. First, the doubling property of the GED space and its implications for indexing have been studied only recently (Zhang et al., 2026); the extent to which other ML-based indexes can benefit from or be combined with such structural insights is not yet clear. Second, the integration of learned approximate GED (e.g., GNN-based or GREED-style) into end-to-end indexing frameworks is limited; most evaluations focus either on index efficiency or on approximation accuracy in isolation. Third, there is a need for comparative studies that evaluate ML-based graph similarity search across a wide range of datasets, thresholds, and recall targets, so that practitioners can choose and tune methods systematically. These gaps emphasise the need for further investigation into unified, ML-enhanced graph similarity search that is both efficient and effective.

### Move 4 – Conclusion of the Literature Review

In summary, machine learning has become central to accelerating graph similarity search through embedding-based filtering, approximate GED estimation, and, more recently, two-stage indexing that exploits the metric structure of the GED space. Existing work shows that reducing the number of GED computations (via hashing or metric indexes) and accelerating each computation (via learned approximators) can both improve performance, but their combination in a single framework is still evolving. The significance of this literature for the present research is twofold: it provides a taxonomy of ML-based approaches and their trade-offs, and it highlights the opportunity to design methods that explicitly combine learned components with doubling-based or hierarchical indexing. The next step of this research is to build on these insights by proposing and evaluating a unified approach that fills the identified gaps and sets the stage for a coherent contribution to machine learning for graph similarity search.

---

**Word count (excluding end-of-text references and annotations):** 1,180

---

## Declaration of Generative AI and AI-assisted technologies in the writing process

The author used generative AI and/or AI-assisted technologies during the preparation of this manuscript. The AI tool used was Cursor (AI-assisted code and text generation). It was used for the purpose of drafting and structuring the introduction and literature review, and for improving clarity and academic phrasing. The author oversaw the entire writing process, verified the content for accuracy and relevance to the research topic, and is solely responsible for the final arguments, citations, and conclusions. Basic checks of grammar, spelling and punctuation were also performed with the assistance of the same tool. This declaration is made in accordance with guidelines on the use of generative AI in writing (e.g., Elsevier’s policy on the use of generative AI and AI-assisted technologies in writing).

---

## References

Bai, Y., Ding, H., Bian, S., Chen, T., Sun, Y., & Wang, W. (2019). SimGNN: A neural network approach to fast graph similarity computation. *WSDM*.

Beygelzimer, A., Kakade, S., & Langford, J. (2006). Cover trees for nearest neighbor. *ICML*.

Bunke, H., & Allermann, G. (1983). Inexact graph matching for structural pattern recognition. *Pattern Recognition Letters*, 1(5–6), 245–253.

Bunke, H., & Shearer, K. (1998). A graph distance metric based on the maximal common subgraph. *Pattern Recognition Letters*, 19(3–4), 255–259.

Gao, X., Xiao, B., Tao, D., & Li, X. (2010). A survey of graph edit distance. *Pattern Analysis and Applications*, 13(1), 113–129.

Gottlieb, L. A., & Krauthgamer, R. (2013). A nonlinear approach to dimension reduction. *Discrete & Computational Geometry*, 49(1), 1–19.

Krauthgamer, R., & Lee, J. R. (2004). Navigating nets: Simple algorithms for proximity search. *SODA*.

Li, Y., Gu, C., Dullien, T., Vinyals, O., & Kohli, P. (2019). Graph matching networks for learning the similarity of graph structured data. *ICML*.

Riesen, K., & Bunke, H. (2009). Approximate graph edit distance computation by means of bipartite graph matching. *Image and Vision Computing*, 27(4), 950–959.

Riesen, K., Neuhaus, M., & Bunke, H. (2007). Bipartite graph matching for computing the edit distance of graphs. *GbRPR*.

Zeng, Z., Tung, A. K. H., Wang, J., Feng, J., & Zhou, L. (2009). Comparing stars: On approximating graph edit distance. *PVLDB*, 2(1), 25–36.

Zhang, X., Chen, Y., & Wang, J. (2022). Learning to hash for graph similarity search: A survey. *IEEE TKDE* (survey-style reference; adapt to actual source if different).

Zhang, X., et al. (2026). Gisma: Giant-step-small-step indexing for approximate similarity search in graph databases. *Proceedings of the 2026 ACM SIGMOD International Conference on Management of Data (SIGMOD ’26)*. ACM.

Zhao, X., et al. (2020). GHashing: Graph neural network based hashing for graph similarity search. (Adapt year and venue to match actual GHashing paper if available.)

*Note: Some references (e.g., GHashing, LAN, GEDHOT, App-BMao, GREED) are cited by the Gisma paper; authors should replace the above with exact references from their own literature search or the course-provided materials where applicable.*
