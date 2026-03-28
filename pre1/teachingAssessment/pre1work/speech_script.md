# Presentation Script - Machine Learning for Graph Similarity Search

**Suggested use:** This is a slightly conversational first-person script for the current `slides.html` deck.  
**Target length:** about 6.5 to 7.5 minutes, depending on your pace.  
**Tip:** Use this for practice first, then reduce it to key points or note cards.

---

## Slide 1 - Opening

Good morning everyone.

Today I'd like to present my paper on **machine learning for graph similarity search**.

In this paper, I focus on the introduction and literature review of the topic. So in this presentation, I will first explain the basic idea of graph similarity search, then I will go through the three main themes I identified in the literature, and finally I will explain the research gaps and what this topic means for my future research.

---

## Slide 2 - Hook

To begin with, imagine searching a huge database of molecules, software networks, or biological structures.

In many cases, we do not want something that is exactly the same as the query. We want something **similar enough** to be useful.

This sounds simple from a human point of view, but for computers it can be very expensive, especially when the database is large.

This is the starting point of my paper. I chose this topic because graph similarity search is important in areas such as chemistry, biology, and software engineering, and machine learning seems to be a promising way to make the search process faster and more scalable.

---

## Slide 3 - Core concept

Before I move on, let me briefly explain the core concept.

A **graph** is a set of points connected by lines. To measure similarity between two graphs, I focus on **graph edit distance**, or GED. In simple terms, GED means the minimum number of changes needed to turn one graph into another.

An easy analogy is edit distance between words. But here, instead of changing letters, we are changing parts of a graph.

So the task is to find all graphs in a database that are within an acceptable distance from a query graph. The reason this becomes difficult is that exact GED computation is very expensive on large databases.

---

## Slide 4 - Why this review is needed

In the introduction of my paper, I argue that better methods are needed because exact GED is **NP-hard**.

I also point out that many existing ML-based methods improve only **one part** of the problem. Some reduce the number of comparisons, while others make each comparison faster. But only a limited number of approaches deal with the full search problem in an integrated way.

So in my paper, my goal is to survey the main ML-based approaches, compare their strengths and limitations, identify the research gaps, and point toward a more unified framework.

---

## Slide 5 - Theme 1

In my literature review, the first major theme is **filtering and indexing methods**.

These methods try to reduce the number of exact GED computations by narrowing the candidate set early. Examples I discuss include **GHashing** and **LAN**.

Their main strength is efficiency. However, in my analysis, there is also a clear trade-off: when the distance threshold becomes large, the balance between efficiency and recall may become weaker.

So my view is that this first direction is useful, but not sufficient on its own.

---

## Slide 6 - Theme 2

The second theme in my paper is **approximate GED methods**.

Instead of reducing the number of comparisons, these methods try to make each graph-pair comparison faster. In this section, I discuss examples such as **App-BMao**, **GEDHOT**, and **GREED**.

Their advantage is speed. But in my paper, I also point out a limitation: these methods are often studied outside a full end-to-end search pipeline. In addition, learned approximators may perform less well when the testing data differs from the training data.

So again, we can see progress, but also an important limitation.

---

## Slide 7 - Theme 3

The third theme is **hybrid or two-stage methods**, and this is the direction I find most promising.

These methods combine different strengths. For example, one stage narrows the search region, and another stage examines the most promising candidates in more detail.

In my paper, I use **Gisma** as an example of this idea. What I find especially important here is the larger message: theory and machine learning do not have to compete. They can work together.

That is why, in my discussion, hybrid systems become an important future direction.

---

## Slide 8 - Main insight and research gaps

After discussing these three themes, I arrive at one main argument in my paper: **no single method is enough**.

I then identify three main gaps. First, the integration of learned approximate GED with indexing frameworks is still limited. Second, there are too few comparative studies across datasets, thresholds, and recall targets. Third, metric-space structure, such as doubling properties, is still underused.

So at this point, my paper moves beyond summarising the literature and starts to build a research agenda for future work.

---

## Slide 9 - Why this matters

I think these issues matter because better graph similarity search can support real applications in chemistry, biology, and software analysis.

If search systems become faster and more scalable while still keeping good recall, researchers can work with larger and more complex databases.

Another reason this matters is that one aim of my paper is to provide a **clear map of the field**. Instead of listing papers one by one, I organise them into themes, explain the trade-offs, and show where I think the field should go next.

---

## Slide 10 - Reflection

Finally, I would like to explain what writing this paper has made me think about.

For my own research design, this topic reminds me that I should evaluate the **whole system**, not just one number such as pairwise accuracy. I should also consider recall, runtime, threshold sensitivity, database size, and index construction cost.

For my writing, I also became more aware of three useful strategies: a clear move structure in the introduction, thematic organisation in the literature review, and explicit gap statements that guide the reader through the argument.

These are all strategies I want to use more consciously in my own future academic writing.

---

## Slide 11 - Closing

To sum up, in my paper I argue that machine learning can improve graph similarity search, but the strongest future direction is integration: combining learning, indexing, and careful system-level evaluation.

I also hope the paper offers a clear overview of the field and shows why this topic is worth further study.

Thank you very much for listening. I'd be happy to answer any questions.

---

## Short delivery tips

- Slow down on key terms such as "graph similarity search," "graph edit distance," "trade-off," and "research gap."
- Pause briefly after Slides 5, 6, and 7 so the audience can follow the three-theme structure.
- If you still need to shorten it, trim examples and method names before cutting transitions.
