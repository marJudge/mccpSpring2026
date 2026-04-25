# Design and Storytelling Notes for Presentation 3

## Slide design

The one-slide visual is designed as a simple research story rather than a mini poster. It uses a left-to-right structure:

1. **The everyday problem:** people often need to find things that are similar, not exactly the same. The slide shows a small query graph and many possible graph records to make this problem visible.
2. **The research idea:** the central funnel shows the core argument of the project. Machine learning and indexing work together to narrow a large search space before expensive checking.
3. **The significance:** the right side connects the research to drug discovery, biology/network analysis, and software analysis.

I chose HTML because it is text-based, machine-readable, and easy to open in a browser or publish through GitHub Pages. The visual elements are made with CSS and inline SVG, not static image files, so the text and graphic structure remain readable by machines. The colour palette follows my previous Pre1 and Pre2 materials: dark green for the research theme, warm orange for the problem/bottleneck, and soft backgrounds to keep the slide clear.

The slide intentionally avoids dense references, equations, and long technical labels. It uses only a few key phrases because the 3MT slide should support the spoken explanation, not replace it. The main visual metaphor is a **smart librarian/funnel**: instead of checking every book in a huge library, the system first learns which shelves are worth searching.

## Storytelling approach for a non-specialist audience

My 3MT explanation will begin with a familiar idea: when we search, we often want something "similar enough", not an exact copy. I will then connect this to graphs by explaining that a graph is a way to show objects and relationships, such as molecules, biological structures, networks, or software patterns.

To avoid heavy jargon, I will not begin with terms such as "graph edit distance", "NP-hard", or "metric-space indexing". If I mention them, I will translate them immediately:

- **Graph edit distance** becomes "the number of changes needed to turn one structure into another".
- **Indexing** becomes "knowing which shelves to search first".
- **Recall** becomes "not missing the useful matches".
- **Scalability** becomes "still working when the collection becomes very large".

The talk will follow five 3MT moves:

1. **Hook:** "How do we find a similar molecule without checking every molecule one by one?"
2. **Problem:** exact comparison can be reliable, but it becomes too slow in large databases.
3. **Aim:** my research asks how machine learning and indexing can work together.
4. **Expected contribution:** a unified framework may reduce wasted comparisons while keeping useful matches.
5. **Significance:** better graph similarity search can support drug discovery, biology, and software analysis.

I will use the slide as a guide for movement through the story: left side for the problem, centre for the proposed idea, and right side for significance. I will use note cards with keywords only and will not read from a full script during the audio presentation.
