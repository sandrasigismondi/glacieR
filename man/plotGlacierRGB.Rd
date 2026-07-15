\name{plotGlacierRGB}
\alias{plotGlacierRGB}
\title{Display an RGB glacier image}
\description{
Displays a multispectral glacier image as an RGB composite.
}
\usage{
plotGlacierRGB(img, r = 3, g = 2, b = 1, title = NULL)
}
\arguments{
  \item{img}{A \code{SpatRaster} object containing the multispectral glacier image.}
  \item{r}{Band used as the red channel. Default is band 3.}
  \item{g}{Band used as the green channel. Default is band 2.}
  \item{b}{Band used as the blue channel. Default is band 1.}
  \item{title}{Optional title displayed above the RGB image. Default is \code{NULL}.}
}
\value{
Displays an RGB composite of the glacier image.
}
\examples{
\dontrun{
img <- rast("glacier.tif")

plotGlacierRGB(img,
               r = 3,
               g = 2,
               b = 1,
               title = "Columbia Glacier")
}
}
\seealso{
\code{\link[terra]{plotRGB}}
}
\keyword{visualization}
