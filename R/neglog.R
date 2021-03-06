#' Neg log transformation for linear models
#'
#' The function transforms the dependent variable of a linear model using the 
#' Neg log transformation.  
#'
#' @param object an object of type lm. 
#' @return An object of class \code{trafo}. Methods such as 
#' \code{\link{as.data.frame.trafo}} and \code{\link{print.trafo}} can 
#' be used for this class.
#' @references
#' Whittaker J, Whitehead C, Somers M (2005). The neglog transformation and 
#' quantile regression for the analysis of a large credit scoring database. 
#' Journal of the Royal Statistical Society. Series C (Applied Statistics), 
#' 54(4), 863-878.
#' @examples
#' # Load data
#' data("cars", package = "datasets")
#' 
#' # Fit linear model
#' lm_cars <- lm(dist ~ speed, data = cars)
#' 
#' # Transform dependent variable 
#' neglog(object = lm_cars)
#' @export

neglog <- function(object) {
  
  trafo <- "neglog"
  woparam(object = object, trafo = trafo)
}