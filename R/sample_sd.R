sample_sd <- function(x) {
        # stopifnot(is.vector(x) & is.numeric(x)) # x must be a numeric vector
        N <- length(x)
        m <- sum((x - sample_mean(x))^2)
        return(sqrt(1/(N-1) * m))
}
