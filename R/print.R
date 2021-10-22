#' Print p3_class
#'
#' @param x list of class p3_class
#'
#' @return print x
#' @export
#'
#' @examples
#' class(x) <- "p3_class"
#' print.p3_class(x)

print.p3_class <- function(x){
        paste("a", class(x), "with", length(x$obj), "observations.") # print name of class and number of observations in the S3 object
}
