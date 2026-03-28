# Presentation Script - Machine Learning for Graph Similarity Search

**Suggested use:** This is a slightly conversational script for the current `slides.html` deck.  
**Target length:** about 6.5 to 7.5 minutes, depending on your pace.  
**Tip:** Use this for practice first, then reduce it to key points or note cards.

---

## Slide 1 - Opening

Good morning everyone.

Today I'd like to talk about **machine learning for graph similarity search**. My source text is an introduction and literature review, so this presentation is not about one single experiment. Instead, I will focus on the main ideas in the field, the gaps identified by the writer, and what I learned for my own research and writing.

---

## Slide 2 - Hook

To begin with, imagine searching a huge database of molecules, software networks, or biological structures.

Usually, we do not want something that is exactly the same as the query. We want something **similar enough** to be useful.

That sounds simple for people, but for computers it can be very expensive, especially when the database is large. This is why graph similarity search matters, and why researchers are interested in using machine learning to make it faster and more scalable.

---

## Slide 3 - Core concept

Let me briefly explain the basic idea.

A **graph** is a set of points connected by lines. To measure similarity between two graphs, researchers often use **graph edit distance**, or GED, which means the minimum number of changes needed to turn one graph into another.

An easy analogy is edit distance between words, but here the objects are graphs rather than words.

So the task is to find all graphs in a database that are within an acceptable distance from a query graph. The problem is that exact GED computation is very expensive on large databases.

---

## Slide 4 - Why this review is needed

The source text explains that exact GED is **NP-hard**, so better methods are needed.

It also makes an important point: many existing ML methods improve only **one part** of the problem. Some reduce the number of comparisons, while others make each comparison faster. But only a limited number of approaches deal with the full search problem in an integrated way.

So the goal of the review is to survey the main ML-based approaches, compare them, identify the gaps, and point toward a more unified framework.

---

## Slide 5 - Theme 1

The first major theme is **filtering and indexing methods**.

These methods try to reduce the number of exact GED computations by narrowing the candidate set early. Examples mentioned in the review include **GHashing** and **LAN**.

Their main strength is efficiency. However, the review also points out a trade-off: when the distance threshold becomes large, the balance between efficiency and recall may become weaker.

So this first direction is helpful, but it is not enough on its own.

---

## Slide 6 - Theme 2

The second theme is **approximate GED methods**.

Instead of reducing the number of comparisons, these methods try to make each graph-pair comparison faster. The review mentions examples such as **App-BMao**, **GEDHOT**, and **GREED**.

The advantage is speed, but the limitation is that these methods are often studied outside a full end-to-end search pipeline. The review also notes that learned approximators may perform less well when the testing data differs from the training data.

So again, we can see progress, but also a clear limitation.

---

## Slide 7 - Theme 3

The third theme is **hybrid or two-stage methods**, and this is probably the most promising direction.

These methods combine different strengths. For example, one stage narrows the search region, and another stage examines the most promising candidates in more detail.

The review highlights **Gisma** as one example. What I find most interesting here is the bigger message: theory and machine learning do not have to compete. They can work together.

That is why the review presents hybrid systems as an important future direction.

---

## Slide 8 - Main insight and research gaps

After discussing these three themes, the review arrives at its main insight: **no single method is enough**.

It then identifies three main gaps: limited integration of learned approximate GED with indexing frameworks, too few comparative studies across datasets and thresholds, and underused metric-space structure such as doubling properties.

At this point, the review is doing more than summarising past work. It is building an argument and setting up a future research agenda.

---

## Slide 9 - Why this matters

These insights matter because better graph similarity search is useful in real applications such as chemistry, biology, and software analysis.

If search systems become faster and more scalable while keeping good recall, researchers can work with larger and more complex databases.

Another reason the review matters is that it gives readers a **clear map of the field**. It does not simply list studies one by one. Instead, it offers a taxonomy, explains the trade-offs, and shows where the field may go next.

---

## Slide 10 - Reflection

Finally, I would like to explain what I learned from this text for my own research and writing.

In terms of research design, this review reminds me to evaluate the **whole system**, not just one number such as pairwise accuracy. I should also consider recall, runtime, threshold sensitivity, database size, and index construction cost.

In terms of writing, I learned three useful strategies: a clear move structure in the introduction, thematic organisation in the literature review, and explicit gap statements that guide the reader through the argument.

These are all strategies I would like to use more carefully in my own academic writing.

---

## Slide 11 - Closing

To sum up, this source text shows that machine learning can improve graph similarity search, but the strongest future direction is integration: combining learning, indexing, and careful system-level evaluation.

At the same time, the text is also a good example of effective academic writing because it explains a complex topic clearly and leads the reader toward a clear research agenda.

Thank you very much for listening. I'd be happy to answer any questions.

---

## Short delivery tips

- Slow down on key terms such as "graph similarity search," "graph edit distance," "trade-off," and "research gap."
- Pause briefly after Slides 5, 6, and 7 so the audience can follow the three-theme structure.
- If you still need to shorten it, trim examples and method names before cutting transitions.
