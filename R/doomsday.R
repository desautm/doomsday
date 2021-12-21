#' Find the doomsday (as a number) for a particular year
#'
#' @param year A year as a number
#' @param as_a_number If TRUE, the day as a number if FALSE, the day as a string
#' @return The doomsday of that year as a number
#'
#' @export
#'
#' @examples
#' doomsday(2021)
#' doomsday(1928)
#' doomsday(1978, as_a_number = FALSE)

doomsday <- function(year, as_a_number = TRUE){

  century = floor(year/100)
  infrasecular = year - 100*century

  century_mod_4 = century %% 4
  if (century_mod_4 == 0) {century_rank = 2}
  else if (century_mod_4 == 1) {century_rank = 0}
  else if (century_mod_4 == 2) {century_rank = 5}
  else {century_rank = 3}

  gap <- eleven_on_odd(infrasecular)

  doomsday <- (gap + century_rank) %% 7

  if (as_a_number) {return(doomsday)}
  else {return(num_to_day(doomsday))}

}
