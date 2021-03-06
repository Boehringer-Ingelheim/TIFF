% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_db.R
\name{getTissueDataCopyNumberById}
\alias{getTissueDataCopyNumberById}
\title{Get tissue Copy Number data by gene ID}
\usage{
getTissueDataCopyNumberById(ensg, tissueClasses, addRownames = TRUE)
}
\arguments{
\item{ensg}{character string, gene ID. Use NULL to get data for all genes}

\item{tissueClasses}{classAssignment object or a 
list with fields: class1 and class2. Each field should
contain a character vector of tissue names}

\item{addRownames}{if TRUE (default), the tissue names are added as rownames
to the output table}
}
\value{
data.frame with fields: tissuename, ensg, relativecopynumber
}
\description{
Returns Copy Number data for the specified tissue and gene.
}
\examples{

setDbOptions(getSettings())
ca <- exampleClassAssigment()
ensg <- "ENSG00000133703"
getTissueDataCopyNumberById(ensg, ca)

}
