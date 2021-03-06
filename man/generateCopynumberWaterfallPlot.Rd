% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_plots.R
\name{generateCopynumberWaterfallPlot}
\alias{generateCopynumberWaterfallPlot}
\title{Generate waterfall plot for copy number}
\usage{
generateCopynumberWaterfallPlot(
  data,
  fill = "tumortype",
  cutoffAmplification = 3,
  cutoffDeletion = 1.5
)
}
\arguments{
\item{data}{data.frame, output of getWaterfallDataCopyNumber}

\item{fill}{character string, variable to use for bars coloring}

\item{cutoffAmplification}{numeric}

\item{cutoffDeletion}{numeric}
}
\value{
ggplot object
}
\description{
Produces a waterfall plot with copy number data
}
\examples{
setDbOptions(getSettings())
prefilter <- makePrefilter("tumor", c("thymoma", "mesothelioma"))
df <- getWaterfallDataCopyNumber("ENSG00000133703", prefilter)
generateCopynumberWaterfallPlot(df)

}
