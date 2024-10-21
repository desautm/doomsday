#' Print the Eleven On Odd method to find doomsday for a specific year
#'
#' @param infrasecular A two digit number
#' @return A string...
#'
#' @export

print_eleven_on_odd <- function(my_infrasecular, itemize = TRUE){

  temp <- my_infrasecular

  if (temp %% 2 == 1) {
    text1 <- c(glue::glue("{my_infrasecular} est impair"))
    temp <- temp + 11
    text1 <- c(text1,glue::glue("plus 11 est {temp}"))
  } else {
    text1 <- c(glue::glue("{my_infrasecular} est pair"))
  }
  temp = temp / 2
  text2 <- c(glue::glue("divisé par 2 est {temp} qui est "))
  if (temp %% 2 == 1) {
    text2 <- paste0(text2,glue::glue("impair"))
    temp <- temp + 11
    text2 <- c(text2,glue::glue("plus 11 est {temp}"))
  } else{
    text2 <- paste0(text2,glue::glue("pair"))
  }
  mod7 <- temp %% 7
  mul <- floor(temp/7)*7
  text3 <- c(glue::glue("modulo 7 est {mod7} car {temp}-{mul}={mod7}"))
  diff <- 7-mod7
  text4 <- c(glue::glue("et sa différence avec 7 est {diff}"))

  text <- c(text1,text2,text3,text4)
  if (itemize){cat(paste0("    - ",text), sep = "\n")}
  else {cat(paste0("- ",text), sep = "\n")}

}
