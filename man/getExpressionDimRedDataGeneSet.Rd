% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_db.R
\name{getExpressionDimRedDataGeneSet}
\alias{getExpressionDimRedDataGeneSet}
\title{Get Gene Expression Data in a Long Format from Gene Set}
\usage{
getExpressionDimRedDataGeneSet(tissuenames, ensg)
}
\arguments{
\item{tissuenames}{classAssignment object or vector of tissue names}

\item{ensg}{vector of gene ensgs}
}
\value{
data.frame with columns: tissuename, ensg, counts,
log2tpm
}
\description{
Get Gene Expression Data in a Long Format from Gene Set
}
\examples{

setDbOptions(getSettings())
ca <- exampleClassAssigment()
head(getExpressionDimRedDataGeneSet(ca, "HALLMARK_P53_PATHWAY"))

}
