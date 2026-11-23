# Sentinel-2 Land-Cover Classification — Spatial Cross-Validation

**Research code accompanying:**

> Gkologkinas, G. D., Protopapadakis, E., Stamou, A., Tavantzis, I., Dosiou, A., Skalidi, I., & Stylianidis, E. (2026). **Spatially Robust Land Cover Classification with Multi-Seasonal Sentinel-2 Imagery: A Comparison of CNN, UNet++, ConvNeXt and ViT.** *Remote Sensing*, **18**, 2463.  
> https://doi.org/10.3390/rs18152463

## Overview

The accompanying notebook contains Python/TensorFlow implementations of four architectures for classifying land cover from multispectral Sentinel-2 image patches:

- A standard CNN
- A Vision Transformer (ViT)
- A U-Net++-inspired patch classifier
- A ConvNeXt-style patch classifier

The notebook also implements geographically separated outer folds, training/validation/test masks with spatial buffers, optional spatial hyperparameter optimization, patch extraction, model training, test-set evaluation, figures, and reports. The study area is **Lake Kerkini, Greece**. The five land-cover classes are water, cropland, forest, low/natural vegetation, and built-up.

## Files

- [`Kerkini_CNN_ViT_UNetPP_ConvNeXt_SpatialCV.ipynb`](Kerkini_CNN_ViT_UNetPP_ConvNeXt_SpatialCV.ipynb) — annotated Colab notebook (all original Python statements retained; bulky outputs cleared).
- [`ConvNeXt_Recorded_Results.csv`](ConvNeXt_Recorded_Results.csv) — a concise summary transcribed from the uploaded notebook's saved execution output, **not an independently reproduced result**.

## What this notebook demonstrates

1. Multi-seasonal Sentinel-2 stack handling (56 input bands/features in the recorded run).
2. Spatially separated cross-validation, including class coverage checks and buffer regions.
3. Spatial HPO with separate subfolds and configurable architecture switches.
4. Keras implementations of CNN, ViT, U-Net++ patch classifier and ConvNeXt-style patch classifier.
5. Evaluation using accuracy, balanced accuracy, macro/weighted F1 and Cohen's kappa.

### Recorded run: ConvNeXt only

In the **uploaded notebook**, the enabled flags were:

```python
ARCHITECTURE_ENABLED = {
    "CNN": False,
    "ViT": False,
    "UNetPP": False,
    "ConvNeXt": True,
}
```

The visible output log records a ConvNeXt run over **four outer folds**, with approximately **80.09% mean test accuracy** and **78.76% mean test macro-F1**. It does **not** contain new execution results for the other three architectures.

## Running the notebook

1. Open the notebook in Google Colab with a GPU runtime.
2. Obtain the **required input GeoTIFFs** and split-cache files from authorized project storage. They are not bundled with this repository.
3. Update the `stack_path`, `ref_path` and `split_cache_dir` configuration values to point to your own data. The supplied defaults use paths under `/content/drive/MyDrive/GEE_Exports/`.
4. Check the architecture switches `ARCHITECTURE_ENABLED`, `RUN_HPO_BY_ARCH` and `RUN_FINAL_BY_ARCH`. The submitted run is configured for **ConvNeXt only**.
5. For a fresh run, ensure that the split-cache and resume settings match your experiment design; do **not** assume the supplied configuration will reproduce the published results automatically.
6. Run the cells in order. This is a GPU-intensive workflow; libraries and hardware may affect reproducibility.

## Important limitations

- This is an **experimental research notebook**, not a plug-and-play application.
- The source raster stack, reference labels, spatial split cache, trained model weights and full experiment output archive are not included.
- **Lake Doirani external-region transfer evaluation is not implemented in this notebook**, although it is discussed in the corresponding publication.
- Several model names refer to **patch-based center-pixel classifiers**; the implementations should not be assumed identical to full-image semantic segmentation architectures.
- The original code statements have been preserved while splitting the long code cell into logical sections and clearing execution outputs. **The repackaged notebook was not executed to verify its runtime behavior.**
- Any underlying data, model checkpoints, or collaborators' code should only be shared when permission and licensing are clear.

## Citation

Please cite the associated publication when reusing this research methodology: https://doi.org/10.3390/rs18152463.
