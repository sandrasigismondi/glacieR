\name{plotGlacierRGB}
\alias{plotGlacierRGB}
\title{Display an RGB glacier image}
\description{
Displays a multispectral glacier image as a RGB composite.
}
\usage{
plotGlacierRGB(img, r, g, b)
}
\arguments{
  \item{img}{A SpatRaster object.}
  \item{r}{Band used as red channel.}
  \item{g}{Band used as green channel.}
  \item{b}{Band used as blue channel.}
}
\value{
Displays an RGB image.
}
\examples{
plotGlacierRGB(img,3,2,1)
}
\seealso{
\code{\link[RStoolbox]{plotRGB}}
}
\keyword{visualization}
