#' Turn a number to a month
#'
#' @param num A number between 1 and 12
#' @return The name of the month
#'
#' @export

num_to_month <- function(num){

  if (num == 1){
    "janvier"
  } else if (num == 2){
    "f\u00e9vrier"
  } else if (num == 3){
    "mars"
  } else if (num == 4){
    "avril"
  } else if (num == 5){
    "mai"
  } else if (num == 6){
    "juin"
  } else if (num == 7){
    "juillet"
  } else if (num == 8){
    "ao\u00fbt"
  } else if (num == 9){
    "septembre"
  } else if (num == 10){
    "octobre"
  } else if (num == 11){
    "novembre"
  } else if (num == 12){
    "d\u00e9cembre"
  }

}
