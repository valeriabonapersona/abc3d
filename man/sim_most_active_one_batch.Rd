% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_most_active.R
\name{sim_most_active_one_batch}
\alias{sim_most_active_one_batch}
\title{Simulate most active brain areas for one batch}
\usage{
sim_most_active_one_batch(
  weights_df,
  weight_by_expression = TRUE,
  weight_by_group = TRUE,
  high_prob = 0.95
)
}
\arguments{
\item{weights_df}{dataframe resulting from prepare_sim_weights(). dataframe in long format with one
brain area "my_grouping" per group ("group") with the Allen Brain Atlas expression levels
("mean_expression" and "sd_expression") as well as group-dependent weight ("weight")}

\item{weight_by_expression}{can take values TRUE or FALSE. If not specified, is considered TRUE. If FALSE, brain areas
are sampled at random from a uniform distribution, and weight_by_group will be ignored. In this case, weight_df requires only
the variables "group" and "my_grouping".}

\item{weight_by_group}{can take values TRUE or FALSE. If not specified, is considered TRUE.}

\item{high_prob}{number between 0 and 1 indication the threshold for being a highly active region. 0.95 corresponds to the top 5 per cent.}
}
\value{

}
\description{
Simulate data for most active brain areas for one batch. It
can be performed for a completely random process, or by using baseline expression
levels from the Allen Brain Atlas as well as increases due to the experimental manipulation. Returns a dataframe
with the group ("group") and brain area ("my_grouping") of the brain areas simulated to be most active.
}
\examples{
x <- data.frame(
group = rep(c("control", "experimental"), each = 5),
my_grouping = rep(c("CA1", "CA2", "CA3", "DG", "BLA"), 2),
mean_expression = c(rnorm(5, 10, 2), rnorm(5, 13, 2)),
sd_expression = abs(rnorm(10)),
weight = c(rep(1, 5), rnorm(5, 3, 1))
)

sim_most_active_one_batch(x)
}
