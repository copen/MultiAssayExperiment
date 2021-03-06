% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusterOn.R
\name{clusterOn}
\alias{clusterOn}
\title{Check expression of a given feature against clinical variable}
\usage{
clusterOn(MultiAssayExperiment, pDataCols, rownames, experiments, seed = NULL)
}
\arguments{
\item{MultiAssayExperiment}{A MultiAssayExperiment object}

\item{pDataCols}{Select columns from the MultiAssayExperiment pData
DataFrame}

\item{rownames}{Features to be used for clustering
(e.g., a set of gene names)}

\item{experiments}{A \code{character} vector indicating assays of interest
in the \code{ExperimentList}}

\item{seed}{A single integer value passed to \link{set.seed} (default NULL)}
}
\value{
A DataFrame with appended cluster and center values
}
\description{
Function that outputs a \link{DataFrame} with participant ID, sample ID,
the select pData column, the expression values for select rownames,
and the center values for each gene by cluster.
}
\examples{
example(MultiAssayExperiment)
clusterOn(myMultiAssayExperiment, pDataCols = "sex",
    rownames = c("XIST", "RPS4Y1", "KDM5D"),
    experiments = "RNASeqGene", seed = 42L)

}

