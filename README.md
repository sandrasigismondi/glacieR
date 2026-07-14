# glacieR

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Made with R](https://img.shields.io/badge/Made%20with-R-blue.svg)

<p align="center"><img width="354" height="354" alt="glacieR_logo" src="https://github.com/user-attachments/assets/f9e15aed-e81c-4156-9ea3-90b75071ed5c" />

An R package designed to simplify monitoring glacier changes through multispectral satellite imagery. It offers functions for educational purposes and reproducible glacier analyses, including:

- 🗻 Glacier image preprocessing
- 🌈 RGB visualization
- ❄️ Snow and ice detection using **NDSI**
- 💧 Surface water detection using **NDWI**
- 🛰️ Unsupervised image classification
- 📊 Visualization of glacier classification maps

---

## 📁 Repository Structure

```text
glacieR/
├── R/
│   ├── prepareGlacier.R
│   ├── plotGlacierRGB.R
│   ├── glacierNDSI.R
│   ├── plotNDSI.R
│   ├── glacierNDWI.R
│   ├── plotNDWI.R
│   ├── glacierClass.R
│   └── plotClass.R
│
├── man/
│   ├── prepareGlacier.Rd
│   ├── plotGlacierRGB.Rd
│   ├── glacierNDSI.Rd
│   ├── plotNDSI.Rd
│   ├── glacierNDWI.Rd
│   ├── plotNDWI.Rd
│   ├── glacierClass.Rd
│   └── plotClass.Rd
│
├── DESCRIPTION
├── NAMESPACE
├── README.md
```

---

# 📚 Functions

| Function | Description |
|----------|-------------|
| `prepareGlacier()` | Crop and mask a multispectral image using glacier boundaries |
| `plotGlacierRGB()` | Display RGB composites |
| `glacierNDSI()` | Compute the Normalized Difference Snow Index |
| `plotNDSI()` | Display NDSI maps |
| `glacierNDWI()` | Compute the Normalized Difference Water Index |
| `plotNDWI()` | Display NDWI maps |
| `glacierClass()` | Perform unsupervised classification |
| `plotClass()` | Display  classification maps |

---

# Example workflow

```r
library(terra)
library(glacieR)

# Load multispectral image
img <- rast("glacier.tif")

# Load glacier boundary
boundary <- vect("glacier_boundary.shp")

# Prepare glacier image
img <- prepareGlacier(img, boundary)

# RGB visualization
plotGlacierRGB(img, r = 3, g = 2, b = 1)

# Compute spectral indices
ndsi <- glacierNDSI(img, green = 2, swir = 5)
ndwi <- glacierNDWI(img, green = 2, nir = 4)

plotNDSI(ndsi)
plotNDWI(ndwi)

# Image classification
class <- glacierClass(img, nClasses = 3)

plotClass(class)
```
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

## Dependencies

glacieR relies on the following R packages:

- **terra** — raster and vector spatial data
- **RStoolbox** — unsupervised image classification
- **viridis** — colour palettes for visualization

---

## ❓ Getting Help

Use the R documentation for individual functions:

```r
?prepareGlacier
?glacierNDSI
?glacierClass
```

or

```r
help(package = "glacieR")
```

---

## 👩‍💻 Author

**Sandra Sigismondi**

Master's Degree in Sciences and Management of Nature - University of Bologna

---
