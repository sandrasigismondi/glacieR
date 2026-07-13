# Prepare images

prepareGlacier <- function(img, boundary){

  if(!inherits(boundary, "SpatVector")){
    boundary <- terra::vect(boundary)
  }

  img_crop <- crop(img, boundary)
  img_mask <- mask(img_crop, boundary)

  return(img_mask)

}
