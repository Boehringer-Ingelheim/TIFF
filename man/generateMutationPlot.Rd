% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_plots.R
\name{generateMutationPlot}
\alias{generateMutationPlot}
\title{Generate mutation plot by type}
\usage{
generateMutationPlot(
  df,
  plotType = "bar",
  ca = NULL,
  ensg = NULL,
  geneSymbol = NULL
)
}
\arguments{
\item{df}{data.frame, output of getTissueDataMutationById()}

\item{plotType}{character string, plot type}

\item{ca}{classAssignment object if it cannot be inferred from \code{df} param.
However if df is an output of getTissueDataMutationById, then this
parameter does not need to be specified.}

\item{ensg}{gene ensg. In most cases there's no need to provide that value. 
It will be interfered from \code{df}.}

\item{geneSymbol}{if null \code{XIFF::getGeneSymbol(ensg)} will be used to get 
gene symbol.}
}
\value{
ggplot object
}
\description{
Produces mutation plot that shows class comparison. Available types: 
"bar" (default), "pie", "coverage". Coverage plot may be used to show 
the data availability in each class.
}
\examples{
setDbOptions(getSettings())
ca <- exampleClassAssigment()
ensg <- "ENSG00000133703"
df <- getTissueDataMutationById(ensg, ca)
symbol <- XIFF::getGeneSymbol(ensg)
generateMutationPlot(df, "bar")
generateMutationPlot(df, "pie")
generateMutationPlot(df, "coverage")

}
