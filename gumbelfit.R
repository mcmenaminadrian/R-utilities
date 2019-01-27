library(fitdistrplus)

dgumbel <- function(x, mu, s) { #PDF
	exp((mu - x)/s - exp((mu - x)/s))/s
}

pgumbel <- function(q, mu, s) { #CDF
	exp(-exp(-((q - mu)/s)))
}

qgumbel <- function(p, mu, s){ #quantile function
	mu-s*log(-log(p))
}

gumbel.fit <-fitdist(biggest, "gumbel", start=list(mu=1100000, s=50000), method="mle")

summary(gumbel.fit)
