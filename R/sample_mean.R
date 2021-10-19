#' Sample mean
#'
#' @details This function calculates the mean of a given vector of numbers.
#' @param x vector, numbers of length N
#'
#' @return sample mean
#'
#' @examples
#' sample_mean(c(1:10))

sample_mean <- function(x) {
        stopifnot(is.vector(x) & is.numeric(x)) # x must be a numeric vector
        N <- length(x)
        return(1/N * sum(x))
}
