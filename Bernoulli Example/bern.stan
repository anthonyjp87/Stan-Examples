
//set N: N <- 10
//set y: y <- c(0,1,1,1,1,0,0,0,0,1)
//execute: fit <- stan(file = 'bern.stan', iter = 10000, chains = 4)

data {
int<lower=0> N; // N >= 0
int<lower=0,upper=1> y[N]; // y[n] in { 0, 1 }
}
parameters {
real<lower=0,upper=1> theta; // theta in [0, 1]
}
model {
theta ~ beta(1,1); // prior
y ~ bernoulli(theta); // likelihood
}
