#' Exponential transformation
#'
#' @details This function computes the exponential of a number using the Taylor series expansion.
#' @param x numeric, the number to be exponentiated
#' @param k numeric, the number of terms to be used in the series expansion beyond the constant 1
#'
#' @return the exponential of a number, numeric
#' @export
#'
#' @examples
#' Exp(2, 4)
#'
Exp <- function(x, k) {
        n <- 0:k
        sum(x^n/factorial(n)) # using exponential expansion shorthand
}
