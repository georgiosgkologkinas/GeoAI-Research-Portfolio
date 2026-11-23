# MSc Thesis — Hyperspectral Segmentation and Sentinel-2 Yield Estimation

**Title:** *Investigating Hyperspectral Dimensionality Importance for Crop Identification and multispectral imagery for yield estimation via Machine Learning*

**Author:** Georgios Dimitrios Gkologkinas  
**Institution:** University of Macedonia, Department of Applied Informatics  
**Programme:** MSc in Artificial Intelligence and Data Analytics  
**Year:** 2025  
**Supervisor:** Eftychios Protopapadakis  
**Thesis language:** English

[**Read the complete MSc thesis (PDF)**](MSc_Thesis_Gkologkinas_2025.pdf)

## Research Components

### Study 1 — EnMAP Hyperspectral Crop Classification

- Study area: agricultural landscape around Lake Vegoritida, Greece.
- Architectures: U-Net, U-Net++, Atrous U-Net.
- Spectral feature-selection / dimensionality-reduction approaches: LDA, SHAP-based selection and clustering-based approaches.
- Best reported configuration: U-Net++ with ACS-based selection (mean F1 = 0.77).
- Related paper: https://doi.org/10.3390/a18090588

### Study 2 — Multitemporal Sentinel-2 Wheat-Yield Estimation

- Study area: wheat fields near Ptolemaida, Greece.
- Data: 14 Sentinel-2 acquisitions, spectral bands, vegetation indices and crop-type information.
- Approach: classical machine-learning regression and feature-importance analysis.
- Related paper: https://doi.org/10.3390/a19050392

## Reproducibility

The thesis is provided as a research document. Source code and datasets are not included in this folder. Separate, permission-cleared scripts and notebooks can be added later with descriptions of inputs, dependencies and evaluation procedures.
