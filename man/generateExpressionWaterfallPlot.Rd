% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_plots.R
\name{generateExpressionWaterfallPlot}
\alias{generateExpressionWaterfallPlot}
\title{Generate waterfall plot for gene expression}
\usage{
generateExpressionWaterfallPlot(data, fill = "tumortype")
}
\arguments{
\item{data}{data.frame, output of getWaterfallDataGeneExpression}

\item{fill}{character string, variable to use for bars coloring}
}
\value{
ggplot object
}
\description{
Produces a waterfall plot with gene expression data
}
\examples{
setDbOptions(getSettings())
prefilter <- makePrefilter("tumor", c("thymoma", "mesothelioma"))
df <- getWaterfallDataGeneExpression("ENSG00000133703", prefilter)
generateExpressionWaterfallPlot(df)

}
