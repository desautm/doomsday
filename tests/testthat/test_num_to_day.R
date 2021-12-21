test_that("test for changing number to day of the week", {
  expect_equal(num_to_day(0), "dimanche")
  expect_equal(num_to_day(1), "lundi")
  expect_equal(num_to_day(2), "mardi")
  expect_equal(num_to_day(3), "mercredi")
  expect_equal(num_to_day(4), "jeudi")
  expect_equal(num_to_day(5), "vendredi")
  expect_equal(num_to_day(6), "samedi")
})
