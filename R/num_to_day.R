#' Turn a number to a day of the week
#'
#' @param num A number between 0 and 6
#' @return The day of the week
#'
#' @export
#'
#' @examples
#' num_to_day(1)
#' num_to_day(5)

num_to_day <- function(num){

  if (num == 0){
    "dimanche"
  } else if (num == 1){
    "lundi"
  } else if (num == 2){
    "mardi"
  } else if (num == 3){
    "mercredi"
  } else if (num == 4){
    "jeudi"
  } else if (num == 5){
    "vendredi"
  } else if (num == 6){
    "samedi"
  }

}
