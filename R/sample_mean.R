sample_mean <- function(x) {
        # stopifnot(is.vector(x) & is.numeric(x)) # x must be a numeric vector
        N <- length(x)
        return(1/N * sum(x))
}
