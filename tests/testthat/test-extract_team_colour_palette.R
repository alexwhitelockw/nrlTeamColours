test_that("extract_team_palette() retrieves the correct palette", {
  expect_equal(length(extract_team_palette("Melbourne Storm", 3)), 3)
})
