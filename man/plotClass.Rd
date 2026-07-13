\name{plotClass}
\alias{plotClass}
\title{Display classified glacier map}
\description{
Displays the output of an unsupervised glacier classification.
}
\usage{
plotClass(classification,
          colors = viridis(4,
          option = "E"),
          title = "Classification")
}
\arguments{
  \item{classification}{Object returned by glacierClass().}
  \item{colors}{Vector of colors.}
  \item{title}{Plot title.}
}
\value{
Displays the classified raster.
}
\examples{
plotClass(classification)
}
\seealso{
\code{\link{glacierClass}}
}
\keyword{classification}
