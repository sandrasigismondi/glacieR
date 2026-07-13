# Plot NDSI

plotNDSI <- function(ndsi,
                     palette = mako(200),
                     title = "NDSI"){
  
  plot(
    ndsi,
    col = palette,
    main = title
  )
  
}
