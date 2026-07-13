\name{glacierNDWI}
\alias{glacierNDWI}
\title{Calculate the Normalized Difference Water Index}
\description{
Calculates the NDWI from multispectral imagery.
}
\usage{
glacierNDWI(img,
            green,
            nir)
}
\arguments{
  \item{img}{A SpatRaster object.}
  \item{green}{Green band position.}
  \item{nir}{Near infrared band position.}
}
\value{
Returns a raster containing NDWI values.
}
\examples{
ndwi <- glacierNDWI(img,
                    green=2,
                    nir=4)
}
\seealso{
\code{\link{plotNDWI}}
}
\keyword{NDWI}
