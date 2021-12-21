#' Finds if a year is a leap year
#'
#' @param year The year we want to test for leap year
#' @return A boolean, TRUE is a leap year, FALSE if not
#'
#' @export
#'
#' @examples
#' is_leap_year(1900)
#' is_leap_year(2000)

is_leap_year <- function(year) {

  if (year %% 4 != 0) {return(FALSE)}
  else if (year %% 100 != 0) {return(TRUE)}
  else if (year %% 400 != 0) {return(FALSE)}
  else {return(TRUE)}

}
