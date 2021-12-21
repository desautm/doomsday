test_that("test for leap year is functionning", {
  expect_false(is_leap_year(1900))
  expect_false(is_leap_year(2300))
  expect_true(is_leap_year(1600))
  expect_true(is_leap_year(2000))
})
