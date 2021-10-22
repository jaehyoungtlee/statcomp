#' Create new class p3_class
#'
#' @details This constructor function creates a new S3 class called p3_class and the print method prints the number of observations of the class.
#' @param x numeric vector of length N
#'
#' @return nothing, unless print function called
#' @import dplyr
#' @export
#'
#' @examples
#' set.seed(4)
#' x <- rnorm(1:10)
#' make_p3_class(x)
#' print(x)

make_p3_class <- function(x){
        x <- list(obj = x)
        structure(x, class = "p3_class")
}


