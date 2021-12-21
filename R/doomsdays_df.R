#' Makes a tibble where the columns consists of the days of the week
#' and the lines give the year
#'
#' @param start A year to start the dataframe
#' @param end A year to end the dataframe
#'
#' @return A tibble containing the years associated with their doomsdays
#'
#'
#' @export

doomsdays_df <- function(start, end){

  dd_year <- matrix(0, nrow = 1, ncol = 7)
  week <- dd_year

  old = doomsday(start)
  dd_year[old+1] <- start

  row <- 1
  for (year in seq(start+1,end,1)){
    new = doomsday(year)
    if (new < old) {
      dd_year <- rbind(dd_year, week)
      row = row + 1
    }
    dd_year[row, new+1] = year
    old <- new
  }

  colnames(dd_year) <- c("Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi")
  dd_year <- tibble::as_tibble(dd_year)

  return(dd_year)

}
