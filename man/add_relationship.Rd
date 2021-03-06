% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_relationship.R
\name{add_relationship}
\alias{add_relationship}
\title{Add a relationship to an entityset}
\usage{
add_relationship(entityset, parent_set, child_set, parent_idx, child_idx)
}
\arguments{
\item{entityset}{The entityset to modify.}

\item{parent_set}{The name of the parent set.}

\item{child_set}{The name of the child set.}

\item{parent_idx}{The index variable of the `parent_set`.}

\item{child_idx}{The index variable of the `child_set`.}
}
\value{
A modified entityset.
}
\description{
Add a relationship to an entityset.
}
\examples{
\donttest{
library(magrittr)
set_1 <- data.frame(key = 1:100, value = sample(letters, 100, TRUE), stringsAsFactors = TRUE)
set_2 <- data.frame(key = 1:100, value = sample(LETTERS, 100, TRUE), stringsAsFactors = TRUE)
# Common variable: `key`

as_entityset(set_1, index = "key", entity_id = "set_1", id = "demo") \%>\%
  add_entity(entity_id = "set_2", df = set_2, index = "key") \%>\%
  add_relationship(
    parent_set = "set_1",
    child_set = "set_2",
    parent_idx = "key",
    child_idx = "key"
  )
}
}
