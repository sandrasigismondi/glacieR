\name{plotClass}
\alias{plotClass}
\title{Display classified glacier map}
\description{
Displays the output of an unsupervised glacier classification.
}
\usage{
plotClass(
  classification,
  colors = viridis(
    max(values(classification\$map), na.rm = TRUE),
    option = "E"
  ),
  title = "Classification"
)
}
\arguments{
  \item{classification}{Object returned by \code{glacierClass()}.}

  \item{colors}{Vector of colors used to display the classes. By default, a \code{viridis} palette is generated automatically according to the number of classes in the classified raster.}

  \item{title}{Plot title.}
}
\value{
Displays the classified raster.
}
\examples{
\dontrun{
plotClass(classification)
}
}
\seealso{
\code{\link{glacierClass}}
}
\keyword{classification}
