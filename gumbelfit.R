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

gumbel.fit <-fitdist(big3D, "gumbel", start=list(mu=2200000,  s=68000), method="mle")

summary(gumbel.fit)
