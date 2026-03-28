# HTML Slide Plan - Machine Learning for Graph Similarity Search

## Overview

- **Source text:** `writing/writingSampleCollection/MCCP6020_Writing_Assignment_Machine_Learning_Graph_Similarity_Search.md`
- **Presentation type:** 8-minute academic presentation for a non-specialist audience
- **Recommended total slides:** 11
- **Slide logic:** Title -> hook/context -> core concept -> gap/objective -> three literature themes -> synthesis/gap -> significance -> personal reflection -> closing
- **Important note:** Because the source is a literature review rather than a single empirical article, the slides should focus on **themes, trade-offs, and research gaps**, not on one experiment's methodology/results table.

---

## Slide-by-Slide Plan

### Slide 1: Title Slide
**Title:** Machine Learning for Graph Similarity Search  
**Subtitle:** Research Story-telling - Oral Presentation Assessment 1  
**Content:**
- Source text title
- Presenter name
- Course / date if needed
- Small note: "Introduction and literature review"

**Visual:** Minimal title layout with a simple graph icon or node-link motif.  
**Design notes:** Large heading, low text density, strong first impression.

---

### Slide 2: Hook - Why "Similar Enough" Matters
**Title:** Searching for what is similar, not identical  
**Content:**
- "Imagine searching a huge database of molecules or networks"
- "We want graphs that are close enough to a query"
- "That idea is useful, but computationally expensive"

**Visual:** Query graph -> database -> similar matches flow diagram.  
**Design notes:** No jargon yet; use one concrete example and a clean visual.

---

### Slide 3: Core Concept
**Title:** What is graph similarity search?  
**Content:**
- Graph = dots and lines representing relationships
- Graph edit distance (GED) = number of changes needed to transform one graph into another
- Search task = return graphs within an allowed distance limit

**Visual:** Tiny before/after graph example with a label such as "2 edits."  
**Design notes:** Use metaphor such as spell-check distance for graphs; avoid formulas.

---

### Slide 4: Why This Review Is Needed
**Title:** The problem behind the review  
**Content:**
- Exact GED is expensive because the problem is NP-hard
- Existing ML methods help, but often solve only part of the full search problem
- The review asks how ML can be integrated more effectively with indexing and scalable retrieval

**Visual:** Problem -> limitation -> review objective flow.  
**Design notes:** Keep the slide focused on challenge and purpose, not technical detail.

---

### Slide 5: Theme 1 - Filtering and Indexing
**Title:** Theme 1: reduce the number of comparisons  
**Content:**
- Methods such as GHashing and LAN try to narrow the candidate set quickly
- Strength: faster filtering before exact GED verification
- Limitation: recall-efficiency trade-offs and possible difficulty when the threshold is large

**Visual:** Two cards labelled "Strength" and "Limitation," plus a small filter funnel icon.  
**Design notes:** Use bold keywords like "faster filtering" and "trade-off."

---

### Slide 6: Theme 2 - Approximate GED
**Title:** Theme 2: make each comparison faster  
**Content:**
- Methods such as App-BMao, GEDHOT, and GREED estimate GED more quickly
- Strength: faster pairwise similarity estimation
- Limitation: often studied outside a full end-to-end search pipeline

**Visual:** Stopwatch icon + pairwise comparison cards.  
**Design notes:** Present this as a second strategy, not as a competing final answer.

---

### Slide 7: Theme 3 - Hybrid / Two-Stage Methods
**Title:** Theme 3: combine indexing and learning  
**Content:**
- Newer work such as Gisma combines metric-space indexing with learned approximate distances
- Stage 1 narrows the search region
- Stage 2 explores the promising candidates in more detail

**Visual:** Two-step pipeline diagram: giant step -> small step.  
**Design notes:** This slide should feel like the most forward-looking part of the literature review.

---

### Slide 8: Main Insight of the Review
**Title:** The key insight: no single method is enough  
**Content:**
- Filtering methods, approximation methods, and hybrid methods all solve different parts of the problem
- The best future direction is integration, not isolation
- The review identifies clear research gaps: limited end-to-end integration, limited comparison across datasets/thresholds, and underused metric-space structure

**Visual:** Three columns converging into one "unified framework" box.  
**Design notes:** This is the synthesis slide; make the argument very explicit.

---

### Slide 9: Why This Matters
**Title:** Why these insights matter  
**Content:**
- Relevant to chemistry, biology, and software/network analysis
- Better search systems need speed, recall, and scalability together
- The review offers a taxonomy and a research agenda, not just a list of papers

**Visual:** Three application icons plus a short takeaway banner.  
**Design notes:** Keep this audience-facing and practical.

---

### Slide 10: Impact on My Research and Writing
**Title:** What I learned for my own work  
**Content:**
- **Research design:** evaluate runtime, recall, thresholds, database size, and indexing cost together
- **Writing:** use move structure, thematic organisation, explicit gap statements, and a purpose-driven conclusion
- **Evidence from the text:** labelled moves, thematic grouping, research gap section, concluding agenda

**Visual:** Two-column layout: "Research Design" and "Writing Skills."  
**Design notes:** Personal, reflective, and clearly linked to the course rubric.

---

### Slide 11: Summary and Q&A
**Title:** Summary  
**Content:**
- Machine learning helps graph similarity search, but stronger systems need integration with indexing and careful evaluation
- This review clarifies the field and points to future hybrid approaches
- Thank you / questions

**Visual:** Clean closing slide with one-line takeaway.  
**Design notes:** Minimal text and strong closing emphasis.

---

## HTML Format Specifications

1. **Structure**
   - Single self-contained HTML file
   - One `<section>` or `.slide` block per slide
   - All CSS in `<style>` and all JavaScript in `<script>`

2. **Design**
   - Modern academic style with white or very light background
   - Dark teal or green accent color
   - Large fonts suitable for projector display
   - Minimal text, strong hierarchy, generous margins

3. **Rubric Support**
   - Add small rubric tags such as `NON-SPECIALIST`, `KEY INSIGHT`, `SIGNIFICANCE`, `WRITING SKILLS`
   - Add transition cues at the bottom of content slides
   - Show slide number on every slide

4. **Navigation**
   - Arrow keys, Space, click left/right, Home/End
   - Fixed progress bar at the bottom

5. **Editable Mode**
   - Press `E` to toggle editable mode
   - Press `T` to show toolbar
   - Toolbar buttons: save to cache, load from cache, download HTML, clear cache

6. **Responsiveness**
   - Use `clamp()` for large, readable text
   - Keep layouts flexible for laptop and projector screens

7. **Visual Strategy**
   - Prefer CSS/HTML diagrams over screenshots
   - Use diagrams for flows, trade-offs, and theme comparison
   - Avoid dense tables unless the comparison is very simple

---

## Slide Generation Reminder

When generating the HTML deck, frame the presentation as a **literature-based research story**. The strongest visuals should therefore show:
- topic and context
- the three themes in the literature
- trade-offs among methods
- the research gap
- what the presenter learns for future research and writing
