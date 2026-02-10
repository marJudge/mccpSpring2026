## Reviewer Hh6E

**ACMMM 2023 Conference Paper1556 Reviewer Hh6E**

**ACMMM 2023 Conference Paper1556 Official Review**

**Readers:** Program Chairs, Paper1556 Area Chairs, Paper1556

**27 Jun 2023, 19:44 (modified: 11 Jul 2023, 23:52)**

**Reviewers Submitted, Paper1556 Authors Show Revisions**

### Paper Summary:

1. This paper presents the first unified distractors removal framework, named IDDR-NGP, which directly operates on Instant-NPG. Our framework is capable of removing a wide range of distractors in 3D scenes.
2. This paper introduces LPIPS and MVCL loss functions to jointly optimize the rendering result of IDDR-NGP, which could aggregate information from multi-view corrupted images.
3. This paper builds a new benchmark dataset that consists of both synthetic and real-world distractors.

### Review:

The paper is well-written for readers to understand clearly and the experiment also proves the effectiveness of the framework and loss functions.

### Pros:

1. This paper attempts to exploit 2D detectors and Instant-NGP to rapidly remove unwanted distractors in a 3D scene.
2. The authors modify the primitive Instant-NGP to avoid rendering distractors inside the bounding boxes, which enables IDDRNGP to have the capability of removing several types of distractors for arbitrary images.
3. They introduce LPIPS and MVCL loss functions to e obtain more stable results on various scenes.

### Cons:

The number of methods compared in the paper is limited, and the author is recommended to compare with more competing algorithms to verify the advantages of the algorithm.

**Relevance:** Relevant to researchers in subareas only

**Significance:** Moderately significant

**Novelty:** Somewhat novel or somewhat incremental

**Evaluation:** Sufficient

### Paper Strengths:

1. This paper attempts to exploit 2D detectors and Instant-NGP to rapidly remove unwanted distractors in a 3D scene.
2. The authors modify the primitive Instant-NGP to avoid rendering distractors inside the bounding boxes, which enables IDDRNGP to have the capability of removing several types of distractors for arbitrary images.
3. They introduce LPIPS and MVCL loss functions to e obtain more stable results on various scenes.

### Paper Weaknesses:

The number of methods compared in the paper is limited, and the author is recommended to compare with more competing algorithms to verify the advantages of the algorithm.

### Further Comments:

It is recommended that authors compare with more competing algorithms.

**Preliminary Rating:** Borderline Accept - I lean towards acceptance, but I could be convinced otherwise.

**Confidence:** Somewhat Confident

**Award:** No

**Open Discussion:** No

**Final Rating:** 5: Weak Accept - I would need strong arguments to reject this submission.

**Final Comments:** My concerns have been well addressed. I will upgrade my rating to weak accept.

---

## Reviewer sZkT

**Review of Paper1556**

**ACMMM 2023 Conference Paper1556 Reviewer sZkT**

**22 Jun 2023, 11:16 (modified: 07 Jul 2023, 10:42)**

**ACMMM 2023 Conference Paper1556 Official Review**

**Readers:** Program Chairs, Paper1556 Area Chairs, Paper1556

**Reviewers Submitted, Paper1556 Authors Show Revisions**

### Paper Summary:

This paper presents a unified distractors removal framework, named IDDR-NGP, which is capable of removing a wide range of distractors in 3D scenes, such as snowflakes, confetti, defoliation, and petals. By incorporating implicit 3D representation with 2D detectors, the method proposed in this paper can aggregate information from multi-view corrupted images and finally obtain effectiveness and robustness results in multiple types of distractors removal.

### Review:

This paper is about distractors removal. While existing methods focus only on specific types of distractors, this paper focuses on removing multiple types of distractors in 3D scenes in a unified removal framework. The authors proposed to incorporate implicit 3D representation which can restore 3D scenes from multiple corrupted images by using multi-view image information. The idea of using implicit 3D representation for distractors removal seems novel and interesting. It provides a new way for other researchers.

### Pros

* The paper is well-structured and well-written, and the details of the proposed method are easy to follow.
* The idea of using implicit 3D representation for distractors removal is novel.
* The unified distractors removal framework can remove a wide range of distractors.

### Cons

* It seems that this method should be difficult to solve scenarios with a single image or a small number of images, the authors may provide experiments to demonstrate the results of this situation.
* The Detection Network plays an important role in the proposed methods, the authors may provide experiments to show how it inference the final results.

**Relevance:** Relevant to researchers in subareas only

**Significance:** Significant

**Novelty:** Novel

**Evaluation:** Sufficient

### Paper Strengths:

* The paper is well-structured and well-written, and the details of the proposed method are easy to follow.
* The idea of using implicit 3D representation for distractors removal is novel.
* The unified distractors removal framework can remove a wide range of distractors.

### Paper Weaknesses:

* It seems that this method should be difficult to solve scenarios with a single image or a small number of images, the authors may provide experiments to demonstrate the results of this situation.
* The Detection Network plays an important role in the proposed methods, the authors may provide experiments to show how it inference the final results.

### Further Comments:

see above

**Preliminary Rating:** Weak Accept - I would need strong arguments to reject this submission.

**Confidence:** Somewhat Confident

**Award:** No

**Open Discussion:** Yes

**Final Rating:** 6: Accept - This submission should definitely be presented at ACM Multimedia 2023.

**Final Comments:** My concerns have been well addressed. The work is novel and interesting and it should definitely be presented at ACM MM 2023.

---

## Reviewer 3MRA

**ACMMM 2023 Conference Paper1556 Reviewer 3MRA**

**09 Jun 2023, 18:01 (modified: 07 Jul 2023, 14:51)**

**ACMMM 2023 Conference Paper1556 Official Review**

**Readers:** Program Chairs, Paper1556 Area Chairs, Paper1556

**Reviewers Submitted, Paper1556 Authors Show Revisions**

### Paper Summary:

This paper presents the first unified distractors removal framework and the method is capable of removing a wide range of distractors in 3D scenes. And the paper build a new benchmark.

### Review:

**advantage:**

1. propose a novel distractors removal method called IDDRNGP
2. modify the primitive Instant-NGP
3. Proposed a general dataset

**disadvantage:**

1. The contribution of using anchor free / anchor based yolo-v5 as a detection method in the paper is limited
2. The paper shows that there are improvements in multiple complex weathers, but the ablation study of each weather is ignored.
3. some cite or fig problem , eg: line326 yolov5[], line449 figure4(b)

**Relevance:** Relevant to researchers in subareas only

**Significance:** Moderately significant

**Novelty:** Somewhat novel or somewhat incremental

**Evaluation:** Sufficient

### Paper Strengths:

1. The proposed method achieves convincing results both indoors and outdoors.
2. Explicit constraints with anchor free / based object detection are interesting.

### Paper Weaknesses:

1. Lack of effective proof of spatial information perception, I think it is necessary to have visualization map.
2. The weather experiment is a single degradation. I think the experiment should have each of weather ablation study. Of course, I hope to see more discussions including but not limited to what model effects will be produced if these degradations exist at the same image.
3. The contribution of the object detection part is weakness. The reason is that the model ignores the image quality bad caused by the weather or light degradation of the current image. I don't think a simple detector can generate effective features for complex weather.

### Further Comments:

I would like to see the authors consider the proposed detection model and the corresponding experiments

**Preliminary Rating:** Borderline Accept - I lean towards acceptance, but I could be convinced otherwise.

**Confidence:** Confident

**Award:** No

**Open Discussion:** Yes

**Final Rating:** 5: Weak Accept - I would need strong arguments to reject this submission.

**Final Comments:** The author answered my questions and I think this paper can be published
