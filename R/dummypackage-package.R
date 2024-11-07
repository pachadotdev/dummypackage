#' @useDynLib dummypackage, .registration = TRUE
#' @keywords internal
"_PACKAGE"

#' Mtcars dataset in matrix form
#'
#' Reshaped dataframe to test Armadillo linear algebra functions with
#' simple linear models of the form mpg_i = a + b cyl_i or
#' mpg_i = b cyl_i + c_1 cyl4_i + c_2 cyl6_i + c_3 cyl8_i
#'
#' @format A list with two matrices: `y` and `x`, where `y` is the `mpg`
#' variable and `x` is a matrix with the rest of the dataset.
#' @source R's `mtcars` dataset.
"mtcars_mat"

#' OLS Estimator as a Matrix
#' @param y Column vector of dependent variable
#' @param x Matrix of independent variables
#' @return Matrix of OLS estimates
#' @examples
#' y <- mtcars_mat$y
#' X <- mtcars_mat$x[, c("wt", "hp")]
#' X <- cbind(1, X)
#' ols_mat(y, X)
#' @export
ols_mat <- function(y, x) {
  ols_mat_(y, x)
}

#' OLS Estimator as a Double
#' @inheritParams ols_mat
#' @return Double vector of OLS estimates
#' @examples
#' y <- mtcars_mat$y
#' X <- mtcars_mat$x[, c("wt", "hp")]
#' X <- cbind(1, X)
#' ols_dbl(y, X)
#' @export
ols_dbl <- function(y, x) {
  ols_dbl_(y, x)
}
