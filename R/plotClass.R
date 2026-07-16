# Plot unsupervised classification

plotClass <- function(classification,
                      colors = viridis(max(values(classification$map), na.rm = TRUE),
                                       option = "E"),
                      title = "Classification"){
  
  plot(
    classification$map,
    col = colors,
    main = title
  )
  
}
