% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_to_region.R
\name{adapt_estimation_atlas}
\alias{adapt_estimation_atlas}
\title{Adapt estimation atlas from Erö et al. to be used in the analysis}
\usage{
adapt_estimation_atlas(estimation_atlas, adj_aba_atlas)
}
\arguments{
\item{estimation_atlas}{atlas from Erö et al. Use atlas as present in the package, or
provide a dataframe where each row is a brain area. The dataframe must contain a variable
called "Regions" with the names on the brain areas. The other variable(s) are the estimations,
i.e "Neurons", "Glia", "Inhibitory" etc.}

\item{adj_aba_atlas}{dataframe with Allen Brain Atlas tree, with an additional variable
called "my_grouping" with the level of categorization of interest. The dataframe contains also
the variable "name" specifying the name of the brain areas. For an example of how to create
this dataframe, see X.}
}
\value{

}
\description{
Wrapper around dplyr functions to select only relevant
brain areas of the cell estimation atlas. The atlas estimating the number of cells per brain area was generated
in this publication (doi:10.3389/fninf.2018.00084). The atlas follows the Allen Brain
Reference Atlas Categorization (mouse brain).
}
\examples{
x <- data.frame(
Regions = c("a_1", "a_2", "a_3", "b_1", "b_2"),
Cells = c(10000, 2100, 39847, 754, 923)
)

y <- data.frame(
name = c("a_1", "a_2", "a_3", "b_1", "b_2", "c_1", "c_2"),
my_grouping = c(rep("a",3), rep("b",2), rep("c", 2))
)

adapt_estimation_atlas(x,y)
}
