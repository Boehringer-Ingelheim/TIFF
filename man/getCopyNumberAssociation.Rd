% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_analysis.R
\name{getCopyNumberAssociation}
\alias{getCopyNumberAssociation}
\title{Get copy number association}
\usage{
getCopyNumberAssociation(tissueClasses, anno, p = FALSE)
}
\arguments{
\item{tissueClasses}{classAssignment object or a 
list with fields: class1 and class2. Each field should
contain a character vector of tissue names}

\item{anno}{data.frame, gene annotation}

\item{p}{logical, ShinySession or FutureManager task object; used for progress}
}
\value{
tibble with columns: ensg, symbol, name, location, class1.median, 
class2.median, log2FC, p.value, adj.p.val
}
\description{
Compares copy number data for 2 tissue classes.
}
\examples{
setDbOptions(getSettings())
ca <- exampleClassAssigment()
anno <- getGeneAnno("human")

copynumberAssoc <- getCopyNumberAssociation(ca, anno, p = TRUE)
head(copynumberAssoc)

}
