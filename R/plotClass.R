# Plot unsupervised classification

plotClass <- function(classification,
                      colors = NULL,
                      title = "Classification"){

  if(inherits(classification, "RStoolbox_unsuperClass")){
    img <- classification$map
  } else {
    img <- classification
  }

  if(is.null(colors)){
    colors <- viridis(max(values(img), na.rm = TRUE), option = "E")
  }

  plot(img,
       col = colors,
       main = title)
}
