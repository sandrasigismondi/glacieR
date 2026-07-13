# NDWI

glacierNDWI <- function(img,
                        green,
                        nir){
  
  ndwi <- (img[[green]]-
             img[[nir]])/
    (img[[green]]+
       img[[nir]])
  
  return(ndwi)
  
}
