\name{glacierClass}
\alias{glacierClass}
\title{Unsupervised glacier classification}
\description{
Performs an unsupervised classification of a multispectral glacier image.
}
\usage{
glacierClass(img,
             nClasses = 3)
}
\arguments{
  \item{img}{A SpatRaster object.}
  \item{nClasses}{Number of classes. Default is 3.}
}
\value{
Returns an object produced by RStoolbox::unsuperClass().
}
\examples{
classification <- glacierClass(img,
                               nClasses=3)
}
\seealso{
\code{\link{plotClass}}
}
\keyword{classification}
