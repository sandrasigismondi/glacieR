\name{prepareGlacier}
\alias{prepareGlacier}
\title{Crop and mask a glacier image}
\description{
The function crops and masks a multispectral raster image using a glacier boundary.
The boundary can be provided either as a path to a vector file (e.g. a shapefile)
or as an existing \code{SpatVector} object.
}
\usage{
prepareGlacier(img, boundary)
}
\arguments{
  \item{img}{A \code{SpatRaster} object containing the multispectral image.}

  \item{boundary}{A glacier boundary provided either as a path to a vector file
  or as a \code{SpatVector} object.}
}
\value{
A cropped and masked \code{SpatRaster}.
}
\examples{
\dontrun{

# Load raster image
img <- rast("glacier.tif")

# Example 1: using a shapefile path
masked <- prepareGlacier(img, "glacier_boundary.shp")

# Example 2: using an existing SpatVector
boundary <- vect("glacier_boundary.shp")
masked <- prepareGlacier(img, boundary)

}
}
\seealso{
\code{\link[terra]{crop}},
\code{\link[terra]{mask}},
\code{\link[terra]{vect}}
}
\keyword{glacier}
