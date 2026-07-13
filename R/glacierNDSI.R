# NDSI

glacierNDSI <- function(img,
                        green,
                        swir){
  
  ndsi <- (img[[green]] -
             img[[swir]]) /
    (img[[green]] +
       img[[swir]])
  
  return(ndsi)
  
}
