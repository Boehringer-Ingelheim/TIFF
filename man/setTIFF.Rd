% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\docType{data}
\name{TIFFOptions}
\alias{TIFFOptions}
\alias{withTIFF}
\alias{setTIFF}
\title{Set TIFF parameters.}
\format{
An object of class \code{list} of length 5.
}
\usage{
TIFFOptions

withTIFF(code)

setTIFF()
}
\arguments{
\item{code}{to be evaluated.}
}
\value{
No value. Used for side-effects.
}
\description{
Set TIFF parameters.
}
\details{
\code{setTIFF} sets the options globally.

\code{withTIFF} evaluates a block of code within \code{TIFF} namespace
and with \code{TIFF} options.

\code{TIFFOptions} list with \code{TIFF} options.
}
\examples{

# ops is used to revert options at the end of the example
ops <- options("xiff.column" = "test") 

getOption("xiff.column") # returns 'test'


withTIFF({
  x <- getOption("xiff.column") # "tissuename"
  print(x)
})

oldOpts <- setTIFF() # set TIFF options globally

# TIFF code to evaluate
getOption("xiff.column") # "tissuename"

options(oldOpts) # revert old options

getOption("xiff.column") # returns 'test'
options(ops) # revert options

setTIFF()

}
\keyword{datasets}
