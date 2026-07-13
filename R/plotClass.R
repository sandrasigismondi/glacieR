# Plot unsupervised classification

plotClass <- function(classification,
                      colors = viridis(4,
                                       option = "E"),
                      title = "Classification"){
  
  plot(
    classification$map,
    col = colors,
    main = title
  )
  
}
