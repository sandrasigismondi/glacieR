# glacieR

<p align="center"><img width="254" height="254" alt="glacieR_logo" src="https://github.com/user-attachments/assets/f9e15aed-e81c-4156-9ea3-90b75071ed5c" />

<img width="254" height="254" alt="glacieR_logo2" src="https://github.com/user-attachments/assets/44cdc48d-5e63-49d3-b9a7-feb8a7d209d9" />


## Glacier Remote Sensing Analysis in R

**glacieR** is an R package designed to simplify the preprocessing, visualization and analysis of glacier satellite imagery.

The package provides a collection of easy-to-use functions for common glacier remote sensing workflows, including:

- 🗻 Glacier masking and preprocessing
- 🌈 RGB visualization
- ❄️ Snow and ice detection using **NDSI**
- 💧 Surface water detection using **NDWI**
- 🛰️ Unsupervised image classification
- 📊 Visualization of glacier classification maps

The package has been developed as part of a remote sensing project focused on monitoring glacier changes through multispectral satellite imagery.

---

## 📦 Installation

Install directly from GitHub.

```r
install.packages("remotes")

remotes::install_github("sandrasigismondi/glacieR")
```

Load the package:

```r
library(glacieR)
```

---

## Required packages

glacieR relies on the following R packages:

- terra
- RStoolbox
- viridis

These dependencies are installed automatically.

---

# 📚 Functions

| Function | Description |
|----------|-------------|
| `prepareGlacier()` | Crop and mask imagery using glacier boundaries |
| `plotGlacierRGB()` | RGB visualization of multispectral imagery |
| `glacierNDSI()` | Compute the Normalized Difference Snow Index |
| `plotNDSI()` | Display NDSI maps |
| `glacierNDWI()` | Compute the Normalized Difference Water Index |
| `plotNDWI()` | Display NDWI maps |
| `glacierClass()` | Perform unsupervised classification |
| `plotClass()` | Display classified glacier maps |

---

# Example workflow

```r
library(glacieR)

# Load a multispectral image
img <- rast("glacier.tif")

# Prepare image using glacier boundary
img <- prepareGlacier(img, "boundary.shp")

# Visualize RGB composite
plotGlacierRGB(img,
               r = 3,
               g = 2,
               b = 1)

# Compute NDSI
ndsi <- glacierNDSI(img,
                    green = 2,
                    swir = 5)

plotNDSI(ndsi)

# Compute NDWI
ndwi <- glacierNDWI(img,
                    green = 2,
                    nir = 4)

plotNDWI(ndwi)

# Unsupervised classification
cl <- glacierClass(img,
                   nClasses = 3)

plotClass(cl)
```

---

## 👩‍💻 Author

**Sandra Sigismondi**

Master's Degree in Sciences and Management of Nature - University of Bologna

---
