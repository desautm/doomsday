#' Return the word VRAI if TRUE and FAUX if FALSE
#'
#' @param boolean A boolean TRUE or FALSE
#'
#'
#' @export
#'

boolean_to_french <- function(boolean) {

  if (boolean) {return("vrai")}
  else {return("faux")}

}
