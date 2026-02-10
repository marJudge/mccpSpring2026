# IDDR-NGP Author Reflection  
## Reflection on Writing Challenges, Process, and Goals

---

## 1. Writing Challenges

**Clarifying the boundary between the problem and our contribution.** Our work sits at the intersection of 3D scene reconstruction, object detection, and image/scene restoration. The hardest part was explaining in limited space exactly *what* problem we address and *what* we do (and do not do). Reviewers often ask how we differ from existing desnow or inpainting methods, so we had to stress repeatedly in the Introduction and Related Work that we perform **unified multi-class distractor removal in an implicit 3D representation (Instant-NGP)** and leverage multi-view information—rather than doing 2D inpainting on a single image. If this is not stated clearly, the work can easily be misread as “yet another desnow/derain method.”

**Balancing technical detail with readability.** The method section had to cover NeRF/volume rendering, multi-resolution hash encoding, detectors (YOLOv5/FCOS), and the motivation and formulation of LPIPS and MVCL. Readers have mixed backgrounds: some know NeRF but not detection, others the opposite. We addressed this by keeping the Background to only the NeRF and hash encoding points directly needed for our pipeline, compressing detector details into one subsection with figures, and for the loss functions explaining the *motivation* first (why multi-view compensation, why LPIPS) before giving the equations. Even so, staying rigorous without losing the main narrative under page limits remained an ongoing challenge.

**Positioning and length of Related Work.** Related work spans NeRF, fast NeRF/Instant-NGP, object detection, and 2D distractor/aesthetics/inpainting literature. We needed to distinguish “3D recovery from contaminated multi-view images with NeRF” from prior work without turning Related Work into a full survey. We organized it along the line “NeRF → fast NeRF → detection → distractor removal in 3D scenes” and explicitly stated that “training NeRF with contaminated images is an unexplored area” to pinpoint our niche. The difficulty was covering the main threads while keeping the section short enough not to dilute the method section.

**Articulating limitations and failure cases.** We were well aware that the method depends on detection quality, degrades with single or very few views, and cannot handle large-scale static distractors that are stationary across views. We had to state these honestly in Discussion/Limitations without leaving the impression that “there are too many issues.” Our approach was to briefly acknowledge failure cases, then in Limitations and Future work clearly describe dependence on detection, single/few-view settings, and directions such as SAM, and to stress that “exploring ways to detach from reliance on detection algorithms” is an interesting future direction—turning limitations into extendable research questions.

**Presenting experiments and comparisons.** We had results on synthetic snow, petals, defoliation, real confetti, SOTA desnow methods, IDDR-Inpainting, IDDR-NeRF, and ablations. The writing challenge was to highlight “unified framework + multiple distractor types” without turning the experiments into a long list. We used the teaser and pipeline figure to set the first impression, let one multi-scene multi-distractor figure (Fig. 1) and one desnow comparison figure (Fig. 4) carry the main narrative, kept tables for quantitative results, and gave ablations their own subsection with a “coarse-to-fine” loss ablation figure so readers could follow “motivation → method → results → why it works.”

---

## 2. Process

**From technical report to conference paper.** The first draft read more like an internal technical report: weak motivation, scattered contributions, and an overlong Related Work. We rewrote the opening paragraphs of the Introduction to start from “impact of 3D scene distractors on downstream tasks” and “existing methods are often single-class, single-image, or rely on 3D sensors,” then naturally lead to “unified removal using multi-view RGB and implicit 3D representation,” and summarize the IDDR-NGP pipeline and main contributions in one paragraph. That way reviewers could grasp the problem and our approach within the first page or two.

**Iterating on the logic of the method section.** The method section went through several revisions. Initially we described detection first and then the NGP modification; reviewers found “how detection and NeRF are coupled” unclear. We restructured to: present the overall pipeline (Fig. 2), then Background (NeRF + hash encoding), then “how detected bounding boxes are used in NGP” (weight coefficient and volume rendering in Refined Instant-NGP), and finally the loss. This made the chain “detection → mask → suppress in hash → volume rendering + LPIPS/MVCL” much clearer.

**Keeping abstract and conclusion aligned.** We revised the abstract and conclusion together at each revision so they matched the contribution list in the Introduction: unified framework, modification of Instant-NGP, LPIPS+MVCL, new benchmark, multi-class distractors and SOTA desnow comparison. We avoided new claims in the abstract that were not developed in the body and avoided overclaiming in the conclusion (e.g. we kept “comparable” rather than “comprehensive superiority”) so the tone stayed consistent and supported by the experiments.

**Revising in response to review-style feedback.** In simulated or actual review we were asked to “compare with more methods,” “add discussion on single/few-view settings,” and “analyze the impact of detection on results.” In revision we: added justification in Related Work and experiment discussion for why we chose these baselines; explicitly extended Limitations and Future work to single/few-view, detection dependence, and directions like SAM; and used ablations (e.g. different losses, IDDR-NeRF vs IDDR-NGP) to show the role of design choices and the post-detection pipeline, addressing reviewer concerns within the page budget.

---

## 3. Goals

**Primary goal: communicate “first unified 3D distractor removal on Instant-NGP” clearly.** We wanted readers, after the Introduction and Method, to be able to accurately restate: input is multi-view images with distractors plus poses, output is clean 3D scene novel-view rendering; the core is “detection + mask distractor regions in the implicit representation + multi-view and perceptual loss optimization.” We did not expect readers to remember every equation, but we did want them to remember the problem setup, the pipeline, and the main design motivations (LPIPS, MVCL, hash modification).

**Secondary: provide a reproducible, extensible benchmark for the community.** We built synthetic and real distractor data and described in the paper how the data were constructed, which metrics we used, and implementation details (e.g. torch-ngp, iterations, resolution). The writing goal was to let reviewers and future researchers judge whether the experiments were sound and reproducible and to enable comparison or extension on our benchmark (e.g. new distractor types, new detectors). So we tried to give setup, dataset scale, and metric definitions in the experiment section, not only numbers.

**Third: present limitations honestly and point to future work.** We aimed to state clearly in Discussion and Limitations: dependence on detection, single/few-view behavior, large static distractors, and possible improvements (e.g. SAM, more robust detection, reducing reliance on detection). The goal was to make the paper credible and extendable without undercutting the contribution or overclaiming.

**Overall: meet the expectations of readers and reviewers at a top multimedia/vision venue.** We assumed readers are familiar with NeRF or at least multi-view 3D and have basic knowledge of detection and image restoration. We aimed for a clear main thread, consistent notation, and figures and text supporting each other, while controlling length and depth so the paper could pass technical review at a conference like ACMMM and still be understood and cited. The ultimate goal was for IDDR-NGP to be recognized as a clear, reproducible starting point for “unified distractor removal in 3D implicit representation” and to encourage follow-up work on few-view settings, detection-free designs, or larger-scale static distractors.

---

*This reflection is written from the perspective of the IDDR-NGP authors and covers the main writing challenges we faced, the process we used for drafting and revision, and the goals we set for the paper.*
