test_that("test for finding the doomsday of a year", {
  expect_equal(doomsday(2022), 1)
  expect_equal(doomsday(2021), 0)
  expect_equal(doomsday(1900), 3)
  expect_equal(doomsday(2051), 2)
  expect_equal(doomsday(1985, as_a_number = FALSE), "jeudi")
  expect_equal(doomsday(2008, as_a_number = FALSE), "vendredi")
})
