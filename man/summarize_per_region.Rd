% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_to_region.R
\name{summarize_per_region}
\alias{summarize_per_region}
\title{Transform xyz coordinates data in a summary per brain region}
\usage{
summarize_per_region(xyz_coordinates, estimation_atlas, cells_type = "cells")
}
\arguments{
\item{xyz_coordinates}{dataframe where each row is a cell. It contains the following variables:
'sample_id' to describe the sample; 'my_grouping' for the brain areas; 'maxInt' for the maximum intensity
of the protein per identified cell.}

\item{estimation_atlas}{estimation atlas already adjusted for the brain areas of interest. Can
be output from adapt_estimation_atlas().}

\item{cells_type}{type of cells from estimation atlas to be used for count correction. Look at the variables
of estimation_atlas for types. If not specified, uses all types.}
}
\value{

}
\description{
Wrapper around dplyr functions to create a summary dataframe
with information about count and intensity per brain area. In the output:
count_perthousand refers to the number of cells expressing the protein of
interest per thousand of total cells in that brain area, while intensity
refers to the average intensity of active cells. You can also specify the type
of cells estimated.
}
\examples{

x <- data.frame(
sample_id = c(rep("a", 100), rep("b", 75), rep("c", 50)),
my_grouping = c(rep(c("CA1","CA2","CA3", "DG", "BLA"), each = 20),
rep(c("CA1", "CA2", "CA3"), each = 20), rep("BLA", 15), rep(c("DG", "BLA"), each = 25)),
maxInt = abs(rnorm(250, 100))
)

y <- data.frame(
my_grouping = c("CA1","CA2","CA3", "DG", "BLA"),
cells = sample(100000, 5),
glia = sample(10000, 5)
)


summarize_per_region(x,y)
}
