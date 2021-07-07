test_that("get_packages() works", {
  pkgs <- get_packages("ropensci")
  expect_vector(pkgs, character())
})
