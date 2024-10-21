#' Finds if a year is a leap year (function used for testing leap year algorithm)
#'
#' @param year The year we want to test for leap year
#' @return A boolean, TRUE is a leap year, FALSE if not

is_leap_year_mad <- function(year) {

  if (year %% 4 == 0 & year %% 100 != 0) {return(TRUE)}
  else if (year %% 400 == 0) {return(TRUE)}
  else {return(FALSE)}

}
