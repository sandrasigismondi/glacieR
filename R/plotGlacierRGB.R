# RGB visualization

plotGlacierRGB <- function(img,
                           r = 3,
                           g = 2,
                           b = 1,
                           stretch = "lin",
                           title = NULL){

  plotRGB(img,
          r = r,
          g = g,
          b = b,
          stretch = stretch,
          axes = FALSE,
          main = title)

}
