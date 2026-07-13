\name{glacierNDSI}
\alias{glacierNDSI}
\title{Calculate the Normalized Difference Snow Index}
\description{
Calculates the NDSI from multispectral imagery.
}
\usage{
glacierNDSI(img, green, swir)
}
\arguments{
  \item{img}{A SpatRaster object.}
  \item{green}{Green band position.}
  \item{swir}{SWIR band position.}
}
\value{
Returns a raster containing NDSI values.
}
\examples{
\dontrun{
ndsi <- glacierNDSI(img,
                    green=2,
                    swir=5)
}
}
\seealso{
\code{\link{plotNDSI}}
}
\keyword{NDSI}
