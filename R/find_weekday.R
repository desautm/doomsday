#' Finds the day of the week for a particular date
#'
#' @param my_date A date in the format defined in lubridate, ymd("20211221")
#' @param as_a_number A boolean to choose to give the day as a number or as a word, default = TRUE
#' @return A number or a word that gives the day of the week
#'
#' @export

find_weekday <- function(my_date, as_a_number = TRUE){

  my_year <- lubridate::year(my_date)
  my_month <- lubridate::month(my_date)
  my_day <- lubridate::day(my_date)

  my_doomsday <- doomsday(my_year)

  if (my_month == 0) {

  } else if (my_month == 1) {
    if(is_leap_year(my_year)) {gap <- (my_day - 11) %% 7}
    else {gap <- (my_day - 10) %% 7}
  } else if (my_month == 2) {
    if(is_leap_year(my_year)) {gap <- (my_day - 22) %% 7}
    else {gap <- (my_day - 21) %% 7}
  } else if (my_month == 3) {
    gap <- (my_day - 0) %% 7
  } else if (my_month == 4) {
    gap <- (my_day - 4) %% 7
  } else if (my_month == 5) {
    gap <- (my_day - 9) %% 7
  } else if (my_month == 6) {
    gap <- (my_day - 6) %% 7
  } else if (my_month == 7) {
    gap <- (my_day - 11) %% 7
  } else if (my_month == 8) {
    gap <- (my_day - 8) %% 7
  } else if (my_month == 9) {
    gap <- (my_day - 5) %% 7
  } else if (my_month == 10) {
    gap <- (my_day - 10) %% 7
  } else if (my_month == 11) {
    gap <- (my_day - 7) %% 7
  } else if (my_month == 12) {
    gap <- (my_day - 12) %% 7
  }

  weekday <- (my_doomsday + gap) %% 7

  if (as_a_number) {return(weekday)}
  else {return(num_to_day(weekday))}

}
