# GeoAI Research Portfolio

### Georgios Dimitrios Gkologkinas

**PhD Candidate | Geoinformatics & GeoAI | Remote Sensing | Artificial Intelligence**

**Aristotle University of Thessaloniki, Greece**

---

## About Me

I am a PhD candidate at Aristotle University of Thessaloniki, Greece, specializing in Geoinformatics and Geospatial Artificial Intelligence (GeoAI) for environmental monitoring, spatiotemporal modelling and forecasting.

I hold an MSc in Artificial Intelligence and Data Analytics from the University of Macedonia and a bachelor's degree in Surveying and Geoinformatics Engineering.

My academic and research background combines Earth Observation, geospatial analysis, machine learning, deep learning, statistical computing and environmental modelling.

### Research Interests

- Geospatial Artificial Intelligence (GeoAI)
- Satellite Remote Sensing and Earth Observation
- Machine Learning and Deep Learning
- Computer Vision and Semantic Segmentation
- Spatial Generalization and Transfer Learning
- Multimodal Data Fusion
- Environmental Monitoring and Air Quality Forecasting
- Explainable Artificial Intelligence (XAI)

---

## Research Portfolio

| Research Area | Description | Explore |
|---|---|---|
| Scientific Publications | Five peer-reviewed journal publications (2025–2026) | [Publications](./Publications/) |
| Python Deep Learning | CNN, U-Net++, ConvNeXt and ViT implementations | [Python Research Code](./LandCover-DeepLearning/) |
| MSc Thesis | Hyperspectral classification and agricultural yield estimation | [MSc Thesis](./MSc-Thesis/) |
| R Programming | Statistical analysis, R Markdown and data visualization | [R Projects](./R-Exploratory-Data-Analysis/) |
| Undergraduate Thesis | Statistical analysis using R — Grade 10/10 | [Undergraduate Thesis](./Undergraduate-Thesis-R-Statistics/) |
| International Conference | Scientific presentation at the FIG/UNECE Joint Conference | [Conference](./Conference-Presentation/) |

---

## Featured Research Projects

### 1. Spatially Robust Land Cover Classification Using Deep Learning

**Satellite:** Sentinel-2  
**Study areas:** Lake Kerkini and Lake Doirani, Greece  
**Architectures:** CNN, U-Net++, ConvNeXt, Vision Transformer (ViT)

This research investigates deep learning-based land cover classification using multi-seasonal Sentinel-2 imagery.

Four neural network architectures were comparatively evaluated using spatially separated cross-validation. Regional transferability was additionally investigated using an independent geographical study area without model fine-tuning.

**Key findings:**
- CNN achieved 81.53% overall accuracy and 80.09% Macro-F1 under spatial cross-validation.
- Convolution-based architectures demonstrated strong performance in the independent regional evaluation.
- Spatial cross-validation was used to obtain more realistic estimates of model generalization.

**[Explore Python Implementation](./LandCover-DeepLearning/)**

**[Read Scientific Publication](https://doi.org/10.3390/rs18152463)**

The shared research notebook contains implementations of CNN, ViT, a U-Net++-inspired patch classifier and a ConvNeXt-style patch classifier. Its recorded execution corresponds to ConvNeXt; the source datasets and independent Lake Doirani evaluation are not included.

### 2. Hyperspectral Crop Classification Using EnMAP

**Satellite:** EnMAP  
**Study area:** Lake Vegoritida, Greece  
**Architectures:** U-Net, U-Net++, Atrous U-Net

Comparative evaluation of deep learning architectures for agricultural crop classification using hyperspectral satellite imagery.

The methodology combines semantic segmentation with spectral dimensionality reduction and feature selection techniques.

**Methods:** LDA, SHAP-based feature selection, unsupervised clustering, spectral band selection.

**Key result:** U-Net++ combined with ACS band selection achieved a mean F1-score of 0.77.

**[Read Scientific Publication](https://doi.org/10.3390/a18090588)**

### 3. Wheat Yield Estimation Using Sentinel-2 and Explainable ML

**Satellite:** Sentinel-2  
**Study area:** Ptolemaida, Greece

Machine learning-based wheat yield estimation using multi-temporal multispectral satellite imagery.

Six regression algorithms were evaluated using spectral bands and vegetation indices, with a strict Leave-One-Field-Out cross-validation strategy.

**Models:** Random Forest, SVR, KNN, Decision Tree, LASSO and Gaussian Process Regression.

**Methods:** Machine Learning, SHAP, Feature Importance, Spatially Independent Evaluation.

**Key result:** Random Forest achieved a MAPE of 7.90% in the best reported configuration.

**[Read Scientific Publication](https://doi.org/10.3390/a19050392)**

### 4. Automated Satellite-Based Agricultural Monitoring

Development of a Python-based framework integrating Sentinel-2 satellite imagery and Google Earth Engine for automated agricultural monitoring and yield estimation.

**Technologies:** Python, Google Earth Engine, Sentinel-2, Vegetation Indices.

**[Read Scientific Publication](https://doi.org/10.3390/earth6010015)**

### 5. Marble Quarry Monitoring and Change Detection

Research involving automated marble quarry monitoring using Sentinel-2 imagery and a newly developed Quarry Change Detection Index (QCDI).

The study integrates spectral analysis, change detection and an interactive web application.

**Technologies:** Python, Google Earth Engine, Streamlit, Sentinel-2.

**[Read Scientific Publication](https://doi.org/10.46873/2300-3960.1515)**

---

## Scientific Publications

### 2026

**1. Spatially Robust Land Cover Classification with Multi-Seasonal Sentinel-2 Imagery: A Comparison of CNN, UNet++, ConvNeXt and ViT**

*Remote Sensing*, 18, 2463 — First Author.

https://doi.org/10.3390/rs18152463

**2. Operational Wheat-Yield Estimation in the Eastern Mediterranean Using Multi-Temporal Sentinel-2 Imagery and Explainable Machine Learning**

*Algorithms*, 19, 392 — First Author.

https://doi.org/10.3390/a19050392

**3. Development of a Spectral Index and Web Application for Automated Marble Quarry Monitoring: A Sentinel-2-Based Approach for Change Detection and Monitoring**

*Journal of Sustainable Mining*, 25, 532–546 — Co-author.

https://doi.org/10.46873/2300-3960.1515

### 2025

**4. A Comparative Analysis of U-Net Architectures with Dimensionality Reduction for Agricultural Crop Classification Using Hyperspectral Data**

*Algorithms*, 18, 588 — First Author.

https://doi.org/10.3390/a18090588

**5. A Python Framework for Crop Yield Estimation Using Sentinel-2 Satellite Data**

*Earth*, 6, 15 — Co-author.

https://doi.org/10.3390/earth6010015

**[Browse Publications and PDFs](./Publications/)**

---

## Academic Background

### MSc in Artificial Intelligence and Data Analytics

**University of Macedonia — 2025**

**Thesis:** Investigating Hyperspectral Dimensionality Importance for Crop Identification and Multispectral Imagery for Yield Estimation via Machine Learning.

**Final thesis grade: 10/10**

The thesis includes two research experiments:

1. Hyperspectral crop classification using EnMAP imagery and U-Net-based architectures.
2. Agricultural yield estimation using Sentinel-2 imagery and machine learning regression methods.

**[View MSc Thesis](./MSc-Thesis/)**

### Undergraduate Thesis — Statistical Analysis Using R

**Surveying and Geoinformatics Engineering**

**Final thesis grade: 10/10**

Undergraduate academic research involving statistical data analysis using the R programming language.

The original thesis is available in Greek.

**[View Undergraduate Thesis](./Undergraduate-Thesis-R-Statistics/)**

### R Programming and Data Visualization

Academic coursework in Exploratory Data Analysis and Visualization.

- Weekly R programming assignments evaluated by academic instructors
- R Markdown documents and data visualization projects
- Supervised two-hour final examination
- Final course grade: **9/10**

**[Explore R Programming Projects](./R-Exploratory-Data-Analysis/)**

---

## International Conference Presentation

**High-Level Joint UNECE WPLA & REM, FIG Commissions 3 & 9, EGoS and World Bank Conference**

**Athens and Santorini, Greece — 18–22 June 2025**

**Presentation:** Mapping Agricultural Crops Using EnMAP Hyperspectral Data and CNNs: A Deep Learning Approach.

**[View Conference Documentation](./Conference-Presentation/)**

---

## Current Doctoral Research

My doctoral research focuses on the integration of Earth Observation, meteorological and geospatial information with machine learning for environmental modelling and air quality forecasting.

The research particularly emphasizes:

- Multimodal and spatiotemporal data fusion
- Spatial generalization and domain shift
- Transferability to previously unseen geographical regions
- Environmental prediction in areas with limited ground-based observations

---

## Technical Skills

**Programming:** Python, R, R Markdown

**Deep Learning:** CNN, U-Net, U-Net++, Atrous U-Net, ConvNeXt, Vision Transformers

**Machine Learning:** Random Forest, Support Vector Regression, Classification, Regression

**Data Science:** Statistical Analysis, Feature Selection, SHAP, Explainable AI

**Geospatial Technologies:** GIS, Remote Sensing, Google Earth Engine, Sentinel-2, EnMAP

**Research Methods:** Spatial Cross-Validation, Model Evaluation, Statistical Testing, Transferability Analysis

---

## Code and Reproducibility

This repository provides academic R programming assignments, research documentation, scientific publications, thesis reports and selected Python deep learning implementations.

The available research notebooks demonstrate experimental workflows and model implementations. Full reproduction of published results may require external datasets, additional dependencies, spatial split definitions and computational resources that are not included in this repository.

The research code is provided for academic documentation and transparency, subject to applicable sharing permissions.
