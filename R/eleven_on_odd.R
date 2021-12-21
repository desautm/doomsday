#' Use the Eleven On Odd method to find doomsday for a specific year
#'
#' @param infrasecular A two digit number
#' @return The gap between the year anchor day and doomsday
#'
#' @export

eleven_on_odd <- function(infrasecular){

  temp <- infrasecular
  if (temp %% 2 == 1) { temp <- temp + 11 }
  temp = temp / 2
  if (temp %% 2 == 1) { temp <- temp + 11 }
  temp = -temp %% 7
  return(temp)

}
