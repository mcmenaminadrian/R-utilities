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

gumbel.fit <-fitdist(BlockMaxima_7_48, "gumbel", start=list(mu=3690000,  s=69813), method="mle")

summary(gumbel.fit)
