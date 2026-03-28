# Presentation Script - Machine Learning for Graph Similarity Search

**Suggested use:** This is a slightly conversational English speaking script for the current `slides.html` deck.  
**Target length:** about 8 minutes, depending on your pace and pauses.  
**Tip:** Do not memorise every sentence word for word. Use this as a practice script, then reduce it to key points.

---

## Slide 1 - Opening

Good morning everyone.

Today I'd like to talk about **machine learning for graph similarity search**. More specifically, I am looking at a source text that introduces the topic and reviews the literature in this area.

So this is not a presentation on one single experiment. Instead, it is a presentation about how the writer explains an important research area, what the main insights of the review are, and what I can learn from the text for my own research and writing.

In the next few minutes, I will first explain what graph similarity search means in simple terms. Then I will go through the main patterns in the literature, explain why they matter, and finally reflect on what this text teaches me as a student researcher.

---

## Slide 2 - Hook

To begin with, imagine that you have a huge database of molecules, or software networks, or biological structures.

Usually, you are not searching for something that is exactly the same as your query. You are searching for something that is **similar enough** to be useful.

For a human being, that sounds quite natural. We make this kind of judgment all the time. But for a computer, especially when the database is very large, this can be extremely expensive.

That is why graph similarity search matters. It has practical value in areas like chemistry, biology, and software engineering, where data can often be represented as graphs.

And this is exactly where machine learning becomes interesting: researchers hope it can help make the search process faster and more scalable.

---

## Slide 3 - Core concept

Before going any further, let me briefly explain the core idea.

A **graph** is basically a set of points connected by lines. The points represent objects, and the lines represent relationships.

To measure similarity between two graphs, researchers often use something called **graph edit distance**, or GED. In simple words, GED means the minimum number of changes needed to turn one graph into another.

I think an easy way to understand this is to compare it to spell-check distance between words. For example, if you change a few letters, one word can become another word. Here, instead of letters, we are changing parts of a graph.

The search task is: given one query graph, how can we find all the graphs in a database that are within an acceptable distance?

The problem is that exact GED computation is very expensive, especially when the database gets large.

---

## Slide 4 - Why this review is needed

This brings me to the reason why this review is needed.

The source text explains that exact GED is **NP-hard**, which means it is computationally difficult. So if we want graph similarity search to work well in real-world settings, we need smarter methods.

Now, machine learning has helped a lot, but the review makes an important point: many existing methods improve only **one part** of the full problem.

Some methods reduce the number of comparisons we need to make. Other methods make each individual comparison faster. But not many approaches solve the whole search problem in a fully integrated way.

So the goal of this review is to survey the existing ML-based approaches, compare their strengths and weaknesses, identify the gaps, and point toward a more unified framework for future research.

---

## Slide 5 - Theme 1

The first major theme in the review is **filtering and indexing methods**.

These methods try to reduce the number of exact GED computations by narrowing the candidate set early. In other words, instead of comparing everything with everything, they first filter out graphs that are unlikely to match.

Methods such as **GHashing** and **LAN** are examples of this direction.

Their main strength is speed. They can make the search process more efficient because they reduce unnecessary work.

However, the review also points out an important trade-off. When the distance threshold becomes large, or when the database becomes more complex, the balance between efficiency and recall can become weaker.

So this first group of methods is useful, but not complete on its own.

---

## Slide 6 - Theme 2

The second theme is **approximate GED methods**.

Instead of reducing the number of comparisons, these methods focus on making each graph-pair comparison faster.

The review mentions examples such as **App-BMao**, **GEDHOT**, and **GREED**. These methods try to estimate graph edit distance more quickly, often with the help of machine learning.

The advantage here is obvious: if each comparison is faster, the whole system may also become faster.

But again, there is a limitation. These methods are often studied in isolation. In other words, researchers may show that the approximation works well for one graph pair, but they do not always show how it performs inside a complete end-to-end search pipeline.

The review also reminds us that learned approximators may perform less well when the testing data is different from the training data.

So once again, we see progress, but also a clear limitation.

---

## Slide 7 - Theme 3

The third theme is probably the most promising one, and that is **hybrid or two-stage methods**.

These methods try to combine the strengths of different approaches. For example, one stage can narrow the search region, and the next stage can examine the most promising candidates in more detail.

The review highlights **Gisma** as an example of this kind of thinking.

What I find especially interesting here is the bigger message: researchers do not necessarily need to choose between theory and machine learning. Instead, they can combine them.

So rather than asking, "Should we use indexing or learning?", the more useful question may be, "How can we use both together in a smart way?"

This is why the review presents hybrid systems as a very important future direction.

---

## Slide 8 - Main insight and research gaps

After presenting these three themes, the review arrives at its main insight: **no single method is enough**.

That, for me, is the most important takeaway from the text.

The review then identifies several research gaps.

First, there is still limited integration of learned approximate GED methods with full indexing frameworks.

Second, there are not enough comparative studies across different datasets, distance thresholds, and recall targets.

And third, the metric-space structure of GED, such as doubling properties, is still underused.

So at this point, the review is doing more than summarising previous work. It is building an argument and setting up a future research agenda.

I think this is one of the strongest parts of the writing.

---

## Slide 9 - Why this matters

So why do these insights matter?

They matter because better graph similarity search is useful in many real applications, such as chemistry, biology, and software analysis.

If search systems become faster, more scalable, and still maintain good recall, researchers and practitioners can work with larger and more complex databases.

Another reason this review matters is that it gives readers a **clear map of the field**. It does not simply list papers one by one. Instead, it offers a taxonomy, explains the trade-offs, and shows where the field may go next.

In that sense, the review is useful not only for specialists, but also for new researchers who are trying to understand the big picture.

---

## Slide 10 - Reflection

Finally, I would like to talk about what I learned from this text for my own research and writing.

In terms of research design, this review reminds me that I should not evaluate a method only by one number, such as pairwise accuracy. I should also think about recall, runtime, threshold sensitivity, database size, and index construction cost.

In other words, I should think in terms of the **whole system**, not just one isolated component.

In terms of writing, I learned several useful strategies from this source text.

First, the introduction uses a very clear move structure: it establishes the field, identifies the gap, and then states the purpose.

Second, the literature review is organised by **themes**, not by a loose list of authors. That makes the comparison much easier to follow.

Third, the gap statements are very explicit. Phrases like *"Despite these advances"* and *"The literature reveals several gaps"* clearly guide the reader through the argument.

So for my own writing, I would like to be more deliberate about structure, comparison, and signaling language.

---

## Slide 11 - Closing

To sum up, this source text shows that machine learning can definitely help graph similarity search, but its strongest message is that no single technique can solve everything.

The most convincing future direction is to combine learning, indexing, and careful system-level evaluation.

At the same time, the text is also a good example of effective academic writing because it explains a complex topic clearly, organises the literature thematically, and leads the reader toward a clear research agenda.

Thank you very much for listening. I'd be happy to answer any questions.

---

## Short delivery tips

- Slow down on key terms: "graph similarity search," "graph edit distance," "trade-off," and "research gap."
- Pause briefly after each theme so the audience can follow the structure.
- Do not read too quickly in Slides 5 to 8; those are the most information-dense parts.
- If you need to shorten the script, cut some examples, not the transitions.
