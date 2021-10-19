#' Confidence interval
#'
#' @details Takes as input a vector of data of length N and alpha and calculates a confidence interval for the estimate of the mean in the populaiton.
#' @param x vector, data of length N
#' @param conf numeric, alpha
#'
#' @return confidence interval
#' @import
#' @export
#'
#' @examples
#' x <- rnorm(1:10)
#' calculate_CI(x, 0.9)
#'
calculate_CI <- function(x, conf = 0.95) {
        stopifnot(is.vector(x) & is.numeric(x)) # x must be a numeric vector
        N <- length(x)
        alpha <- 1 - conf
        degrees_freedom <- N - 1
        t_score <- qt(p = alpha/2, df = degrees_freedom, lower.tail = FALSE)
        se <- sd(x)/sqrt(N)
        return(c((sample_mean(x) - t_score * se), (sample_mean(x) + t_score * se)))
}
