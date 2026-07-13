# glacieR

<img width="254" height="254" alt="glacieR_logo" src="https://github.com/user-attachments/assets/f9e15aed-e81c-4156-9ea3-90b75071ed5c" />

<img width="254" height="254" alt="glacieR_logo2" src="https://github.com/user-attachments/assets/44cdc48d-5e63-49d3-b9a7-feb8a7d209d9" />


## Glacier Remote Sensing Analysis in R

**glacieR** is an open-source R package designed to simplify the most common remote sensing workflows for glacier monitoring using multispectral satellite imagery.

The package provides simple and reusable functions for preprocessing glacier imagery, calculating spectral indices, visualizing RGB composites and performing unsupervised classifications.

---

## 🌍 Why glacieR?

Glaciers are among the most sensitive indicators of climate change.

Monitoring their evolution through satellite imagery allows researchers to:

- 🧊 map glacier extent
- ❄️ distinguish clean ice, snow and debris-covered ice
- 🌊 identify meltwater using spectral indices
- 📈 analyse glacier changes through time
- 🛰️ process data from different multispectral sensors

---

## ✨ Main features

The current version includes functions for:

- 🗺️ Glacier clipping using vector boundaries
- 🌈 RGB visualization
- ❄️ NDSI computation
- 💧 NDWI computation
- 📊 Raster visualization
- 🤖 Unsupervised image classification

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

# 📊 Workflow

A typical workflow consists of:

```
Satellite image
        │
        ▼
prepareGlacier()
        │
        ▼
plotGlacierRGB()
        │
        ├─────────────► glacierNDSI()
        │                     │
        │                     ▼
        │               plotNDSI()
        │
        ├─────────────► glacierNDWI()
        │                     │
        │                     ▼
        │               plotNDWI()
        │
        ▼
glacierClass()
        │
        ▼
plotClass()
```

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

## 💻 Example

```r
library(glacieR)

img <- rast("glacier.tif")

glacier <- prepareGlacier(
  img,
  "boundary.shp"
)

plotGlacierRGB(
  glacier,
  r = 3,
  g = 2,
  b = 1
)

ndsi <- glacierNDSI(
  glacier,
  green = 2,
  swir = 5
)

plotNDSI(ndsi)
```

---

## 📖 Dependencies

glacieR currently relies on:

- terra
- RStoolbox
- viridis

---

## 👩‍💻 Author

**Sandra Sigismondi**

Master's Degree in Sciences and Management of Nature - University of Bologna

---
