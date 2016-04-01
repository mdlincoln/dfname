#' Name and unname data frames
#'
#' Return a data frame with rownames moved into a named column, or vice versa.
#'
#' @param d A data.frame
#' @param col_name For \code{name_in}, the name of the column to which rownames
#'   will be copied. For \code{name_out}, the name of the column to move into
#'   rownames.
#'
#' @export
#' @examples
#' unnamed_cars <- name_in(mtcars, "car_name")
#'
#' cars <- name_out(unnamed_cars, "car_name")
name_in <- function(d, col_name = "name") {
  d[[col_name]] <- rownames(d)
  rownames(d) <- NULL
  return(d)
}

#' @rdname name_in
name_out <- function(d, col_name) {
  rownames(d) <- d[[col_name]]
  d[[col_name]] <- NULL
  return(d)
}
