#' Finds the day of the century for a particular year
#'
#' @param year A year as a number
#' @param as_a_number If TRUE, the day as a number if FALSE, the day as a string
#' @return The day for that century
#'
#' @export

century_rank <- function(year, as_a_number = TRUE) {

  century = floor(year/100)

  century_mod_4 = century %% 4
  if (century_mod_4 == 0) {century_rank = 2}
  else if (century_mod_4 == 1) {century_rank = 0}
  else if (century_mod_4 == 2) {century_rank = 5}
  else {century_rank = 3}

  if (as_a_number) {return(century_rank)}
  else {return(num_to_day(century_rank))}

}
