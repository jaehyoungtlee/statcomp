#' Confidence interval
#'
#' @details Takes as input a list of length N and alpha and calculates a confidence interval for the estimate of the mean in the populaiton.
#' @param x list of length N
#' @param conf numeric, alpha
#'
#' @return confidence interval
#' @import dplyr
#' @export
#'
#' @examples
#' set.seed(4)
#' x <- rnorm(1:10)
#' x <- make_p3_class(x)
#' calculate_CI.p3_class(x, 0.9)
#'
calculate_CI.p3_class <- function(x, conf = 0.95) {
        stopifnot(class(x) == "p3_class") # x must be class p3_class
        N <- length(x$obj)
        alpha <- 1 - conf
        degrees_freedom <- N - 1
        t_score <- qt(p = alpha/2, df = degrees_freedom, lower.tail = FALSE)
        se <- sample_sd(x$obj)/sqrt(N)
        return(c((sample_mean(x$obj) - t_score * se), (sample_mean(x$obj) + t_score * se)))
}
