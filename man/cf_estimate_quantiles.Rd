\name{cf_estimate_quantiles}
\alias{cf_estimate_quantiles}
\title{Estimate quantiles of random variable}
\description{Estimate quantiles of random variable using Cornish-Fisher expansion}
\usage{cf_estimate_quantiles(cf_expansion_order, probabilities, cumulants)}
\arguments{
  \item{cf_expansion_order}{ order of CF expansion (= number of using cumulants)}
  \item{probabilities}{ a numeric vector of probabilities}
  \item{cumulants}{ a numeric vector of random variable cumulants}
}
\value{ a numeric vector of estimated quantiles}
\author{Maxim Yurchuk}

\examples{
cf_order = 8
cumulants = rep(0, cf_order);
for (i in 1:cf_order)
  cumulants[i] = (1/i)*factorial(i);  
probabilities = seq(0.01, 0.99, 0.05)
estimated_quantiles= cf_estimate_quantiles(cf_order, probabilities, cumulants)
plot(probabilities, estimated_quantiles, "l", 
  main = "Cornish-Fisher approximation for exp(1) with order = 8", 
  xlab = "Probability", ylab = "Quantile")
}