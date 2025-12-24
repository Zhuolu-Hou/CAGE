# CAGE: Cascaded Attribute–Geometric Outlier Rejection and Benchmarking for Robust Cross-Modal Image Matching

[![Platform](https://img.shields.io/badge/Platform-MATLAB-blue)](#quick-start)
[![Task](https://img.shields.io/badge/Task-Outlier%20Rejection%20%7C%20Cross--Modal%20Matching-orange)](#overview)
[![Status](https://img.shields.io/badge/Status-Demo%20Only-lightgrey)](#status)
[![License](https://img.shields.io/badge/License-TBD-lightgrey)](#license)

**CAGE** is a cascaded framework for **robust outlier rejection** in **cross-modal image matching** (e.g., Optical–SAR, Infrared–Visible, and medical multi-modality). It integrates **local attribute cues** with **geometric consistency** to recover reliable correspondences under **extremely low inlier ratios**.

**Author:** Zhuolu Hou  
**Affiliation:** Electronic Information School, Wuhan University  

---

## Table of Contents
- [Overview](#overview)
- [Benchmark Suite](#benchmark-suite)
- [Quick Start](#quick-start)
- [Status](#status)
- [License](#license)

---

## Overview
Establishing reliable correspondences between cross-modal images is challenging due to **non-linear intensity variations**, modality-specific distortions, and **very low inlier ratios**.  
**CAGE** addresses this by cascading two complementary stages:

1. **Attribute-level filtering** to suppress obvious mismatches using local descriptors/attributes.
2. **Geometric-level consensus** to identify coherent motion patterns and retain globally consistent matches.

> **Design principle:** Control points are **preserved and never optimized** in any mode to avoid drifting away from true correspondences.

---

## Benchmark Suite
CAGE is evaluated on a large-scale multi-modal benchmark:

| Item | Scale |
|---|---:|
| Modality combinations | **24** |
| Image pairs | **11,808** |
| Ground-truth correspondences | **1,550,947** |

**Covered modalities include (not limited to):**  
Optical–SAR, Day–Night, Infrared–Visible, Map–Optical, MRI–CT, PD–T1, SPECT–MRI, etc.

---

## Quick Start
Run the demo in **MATLAB**:

```matlab
demo;
```

## Status

🚧 Demo Only (Review Version)
The full source code and full benchmarking dataset will be released upon formal acceptance of the paper.
This repository currently provides:

A runnable MATLAB demo illustrating the interface

---

## License

License will be specified upon release of the full code.
