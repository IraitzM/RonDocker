# fizzbuzz.R
library(plumber)

#' The fizzbuzz function
#' 
#' Returns 'Fizz' if the input is a multiple of 3
#' Returns 'Buzz' if the input is a multiple of 5
#' Returns 'FizzBuzz' if the input is a multiple of 3 and 5
#' Returns the input if it is not a multiple of 3 or 5
#' 
#' @param number The input number
#' @return string or number
#* @get /
fizzbuzz <- function(number=0) {
  number<-as.numeric(number)
  fizz <- number %% 3 == 0
  buzz <- number %% 5 == 0
  if (fizz & buzz) return ("FizzBuzz")
  if (fizz) return ("Fizz")
  if (buzz) return ("Buzz")
  return(number)
}