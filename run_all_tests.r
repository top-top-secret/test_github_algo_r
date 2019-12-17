library(testthat)

source("src/test_github_algo_r.r")
test_results <- test_dir("tests", reporter="summary")

for (i in 1:length(test_results)) {
  if (!is(test_results[[i]]$result[[1]], "expectation_success")) {
    stop("There were test failures")
  }
}
