# Plot NDWI

plotNDWI <- function(ndwi,
                     palette = viridis(200),
                     title = "NDWI"){
  
  plot(
    ndwi,
    col = palette,
    main = title
  )
  
}
