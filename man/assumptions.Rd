% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assumptions.R
\name{assumptions}
\alias{assumptions}
\title{First check of assumptions to find suitable transformations}
\usage{
assumptions(object, method = "ml", std = FALSE, ...)
}
\arguments{
\item{object}{an object of type \code{lm}.}

\item{method}{a character string. Different estimation methods can be used 
for the estimation of the optimal transformation parameter: 
(i) Maximum likelihood approach ("ml"), (ii) Skewness minimization ("skew"),
(iii) Kurtosis optimization ("kurt"), (iv) Divergence minimization by 
Kolmogorov-Smirnov ("div.ks"), by Cramer-von-Mises ("div.cvm") or by 
Kullback-Leibler ("div.kl"). Defaults to "ml".}

\item{std}{logical. If \code{TRUE}, the transformed model is returned based 
on the standardized/scaled transformation. Defaults to \code{FALSE}.}

\item{...}{other parameters that can be passed to the function, e.g. other 
lambdaranges. Self-defined lambdaranges are given to the function as an 
argument that is the combination of the name of the transformation and lr and 
the range needs to be a numeric vector of length 2. For instance, changing the 
lambdarange for the Manly transformation would mean to add an argument 
\code{manly_lr = manly_lr = c(0.000005,0.00005)}. For the default values that 
are used for the lambdaranges see the documentation for the provided 
transformations.}
}
\value{
A table with tests for normality and homoscedasticity. Furthermore, 
scatterplots are returned to check the linearity assumption.
}
\description{
Gives a first overview if a transformation is useful and which transformation
is promising to fulfill the model assumptions normality, homoscedasticity and 
linearity.
}
\examples{
# Load data
data("cars", package = "datasets")

# Fit linear model
lm_cars <- lm(dist ~ speed, data = cars)

assumptions(lm_cars)
assumptions(lm_cars, method = "skew", manly_lr = c(0.000005,0.00005))
}
\seealso{
\code{\link{bickeldoksum}}, \code{\link{boxcox}}, \code{\link{dual}}, 
\code{\link{glog}}, \code{\link{gpower}}, \code{\link{log}}, 
\code{\link{logshiftopt}}, \code{\link{manly}}, \code{\link{modulus}}, 
\code{\link{neglog}}, \code{\link{sqrtshift}}, \code{\link{yeojohnson}}
}
