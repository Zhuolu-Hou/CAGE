# CAGE: Cascaded Attribute–Geometric Outlier Rejection and Benchmarking for Robust Cross-Modal Image Matching

This repository provides the official implementation of the **CAGE** algorithm, a robust framework designed for outlier rejection in challenging cross-modal image matching scenarios.

**Author:** Zhuolu Hou  
**Affiliation:** Electronic Information School, Wuhan University  

---

## 1. Overview
[cite_start]Establishing reliable correspondences between cross-modal images (e.g., Optical-SAR, Infrared-Visible, and Medical images) is inherently difficult due to non-linear intensity variations and extremely low inlier ratios[cite: 8, 31, 135]. [cite_start]**CAGE** introduces a cascaded architecture that effectively integrates **local attributes** and **geometric consistency** to establish accurate feature correspondences and identify coherent motion patterns[cite: 8, 11].

---

## 2. Main Contributions
* [cite_start]**Robust Outlier Rejection**: Specifically optimized for scenarios with extremely low inlier ratios, providing more competitive results than current state-of-the-art methods in terms of generality and effectiveness[cite: 15, 113].
* [cite_start]**Cascaded Framework**: Bridges the gap between attribute-level similarity and geometric-level consensus through a sparse and general graph-based strategy[cite: 9, 13].
* **Integrity and Rigour**: Following strict geometric constraints, **control points are preserved and NOT optimized in any mode** to ensure matching accuracy.
* **Large-Scale Benchmarking**: A comprehensive multi-modal evaluation framework that pushes the boundaries of robust image registration.

---

## 3. The Benchmarking Dataset
The effectiveness of CAGE is demonstrated through an extensive benchmarking suite covering diverse imaging modalities:
* **24 Modality Combinations**: Including Optical-SAR, Day-Night, Infrared-Visible, Map-Optical, MRI-CT, PD-T1, SPECT-MRI, etc.
* **11,808 Image Pairs**: A massive collection of cross-modal imaging data.
* **1,550,947 Correspondences**: Manually verified ground-truth tie points ensuring highly reliable evaluation metrics.

---

## 4. Quick Start
To evaluate the algorithm's performance on the provided sample datasets, run the following command in MATLAB:

```matlab
run_demo;

## 4. Status
The full source code, benchmarking datasets, and pre-trained models will be released upon the formal acceptance of the paper. Currently, this repository serves as a demonstration of the algorithm's interface and benchmarking results for the review process.
