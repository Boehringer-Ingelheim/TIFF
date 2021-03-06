% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioinfo_db.R
\name{getWaterfallDataClones}
\alias{getWaterfallDataClones}
\title{Get Waterfall Data Clones}
\usage{
getWaterfallDataClones(score, prefilter)
}
\arguments{
\item{score}{string with score name 'number_of_clones' or 'clone_tree_score'}

\item{prefilter}{TiffPrefilter object (see \code{\link{makePrefilter}})}
}
\value{
data.frame with columns tissuename, score name and tumortype
}
\description{
Get Waterfall Data Clones
}
\examples{

setDbOptions(getSettings())
prefilter <- makePrefilter()
df <- getWaterfallDataClones("number_of_clones", prefilter)
head(df)

}
