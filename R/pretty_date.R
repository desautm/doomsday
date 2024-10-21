#' A function to pretty print a date
#'
#' @param my_date A date in the format of YEAR-MONTH-DAY as a string
#' @return A string that prints the date in a pretty manner
#'
#' @export
#'
#' @examples
#' pretty_date(lubridate::ymd(20220113))
#' pretty_date(lubridate::ymd(19780702))

pretty_date <- function(my_date){

  my_year <- lubridate::year(my_date)
  my_month <- lubridate::month(my_date)
  my_day <- lubridate::day(my_date)

  if (my_day == 1) {my_day <- "1er"}
  my_month <- num_to_month(my_month)

  prettified_date <- glue::glue("{my_day} {my_month} {my_year}")
  return(prettified_date)

}
