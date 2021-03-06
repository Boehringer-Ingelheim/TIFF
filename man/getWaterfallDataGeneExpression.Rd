% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_db.R
\name{getWaterfallDataGeneExpression}
\alias{getWaterfallDataGeneExpression}
\title{Get waterfall Gene Expression data}
\usage{
getWaterfallDataGeneExpression(ensg, prefilter)
}
\arguments{
\item{ensg}{character string, gene ID}

\item{prefilter}{TiffPrefilter object (see \code{\link{makePrefilter}})}
}
\value{
data.frame with columns: tissuename, tumortype, log2tpm
}
\description{
SQL wrapper for Gene Expression data retrieval. The `tissuename` column 
in the result table is a factor with levels sorted according to the 
`log2tpm` value (desc order).
}
\examples{
setDbOptions(getSettings())
ca <- exampleClassAssigment()
ensg <- "ENSG00000133703"
prefilter <- makePrefilter("tumor", c("thymoma", "mesothelioma"))
getWaterfallDataGeneExpression(ensg, prefilter)

}
