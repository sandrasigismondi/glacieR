\name{prepareGlacier}
\alias{prepareGlacier}
\title{Crop and mask a glacier image}
\description{
The function crops and masks a raster image using a glacier boundary
provided as a vector shapefile.
}
\usage{
prepareGlacier(img, boundary)
}
\arguments{
  \item{img}{A SpatRaster object containing the multispectral image.}
  \item{boundary}{Path to a glacier boundary shapefile or a SpatVector object.}
}
\value{
Returns a cropped and masked SpatRaster.
}
\examples{
img <- rast("glacier.tif")
prepareGlacier(img, "glacier_boundary.shp")
}
\seealso{
\code{\link[terra]{crop}},
\code{\link[terra]{mask}}
}
\keyword{glacier}
