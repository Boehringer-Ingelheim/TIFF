% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_db.R
\name{getPatientAnnotation}
\alias{getPatientAnnotation}
\title{Get Patient Annotation}
\usage{
getPatientAnnotation()
}
\value{
data.frame with patient annnotation data
}
\description{
Get Patient Annotation
}
\examples{

setDbOptions(getSettings())
head(getPatientAnnotation())

}
