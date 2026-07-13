# Prepare images

prepareGlacier <- function(img, boundary){
  
  boundary <- terra::vect(boundary)
  
  img_crop <- crop(img, boundary)
  
  img_mask <- mask(img_crop, boundary)
  
  return(img_mask)
  
}
