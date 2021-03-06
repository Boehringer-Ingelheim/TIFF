% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_analysis.R
\name{differentialGeneSignature}
\alias{differentialGeneSignature}
\title{Differential gene signatures}
\usage{
differentialGeneSignature(tissueClasses, p = FALSE)
}
\arguments{
\item{tissueClasses}{classAssignment object or a 
list with fields: class1 and class2. Each field should
contain a character vector of tissue names}

\item{p}{logical, ShinySession or FutureManager task object; used for progress}
}
\value{
tibble with columns: signature, higher, logFC, P.Value, adj.p.val
}
\description{
Compares gene signature data for 2 tissue classes.
}
\examples{
\dontrun{
setDbOptions(getSettings())
tissueClasses <- classAssignment(sensitive = c("a", "b", "c"), resistant = c("d", "e", "f"))

differentialGeneSignature(tissueClasses, p = TRUE)
}
}
