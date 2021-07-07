test_that("get_packages() works", {
  pkgs <- get_packages("ropensci")
  expect_vector(pkgs, character())
})


test_that("get_packages() error", {
  vcr::skip_if_vcr_off()
  vcr::use_cassette("packages-error", {
    expect_error(get_packages("maelle"), "take off")
  })
})
