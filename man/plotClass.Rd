\name{plotClass}
\alias{plotClass}
\title{Display classified glacier map}

\description{
Displays a classified glacier raster. The function accepts either the output
returned by \code{glacierClass()} or a classified \code{SpatRaster}. If no
colors are provided, a default \code{viridis} palette is generated automatically.
}

\usage{
plotClass(
  classification,
  colors = NULL,
  title = "Classification"
)
}

\arguments{

  \item{classification}{
  Object returned by \code{glacierClass()} or a classified
  \code{SpatRaster}.
  }

  \item{colors}{
  Vector of colors used to display the classes. If \code{NULL}, a
  \code{viridis} palette (option = "E") is generated automatically
  according to the number of classes.
  }

  \item{title}{
  Plot title.
  }

}

\value{
Displays the classified raster.
}

\examples{
\dontrun{

plotClass(classification)

plotClass(classification$map,
          colors = viridis::viridis(3, option = "E"),
          title = "September 2023")

}
}

\seealso{
\code{\link{glacierClass}}
}

\keyword{classification}
