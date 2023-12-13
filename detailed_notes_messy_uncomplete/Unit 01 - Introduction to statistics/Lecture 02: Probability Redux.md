# Lecture 02: Probability Redux


## 02.01. Objectives
## 02.02. Two important probability tools

Prob vs statistics:
We have, on the one hand, the truth, a stochastic process, a data generating process, that is generating the observations that we see. And on the other hand, we have just partial observations of it.
And probability tells us how to, given the truth, what the observations would look like.
And statistics is reverse engineering this process, starting from observations, trying to infer what is the data generating process.

My view:
- **probability**: Given this stochastic model (i.e. *assumin* this stochastic model.. plus some assumptions), which is the likelihood we obtain these outcomes?
- **statistic**: Given this data (i.e. *observing* this data), which is the likelihood they are outcomes from this stochastic process?
You can note that while in doing probability you apply a deductive reasoning, in doing statistics you apply an inductive one.


Statistics: we replace expectation with averages

**Law of large numbers**  --> Sample mean converges to population mean
- weak: The probability that their (abs) difference is greater than epsilon tends to zero as sample size increases
- strong: The probability that the twos are the same tends to 1 as the sample size increases

**Central Limit Theorem** --> The distribution of the sample means converges to a Normal distribution with mean equal to the original variable population mean and variance equal to the original variable population variance divided by the sample size
as we increase the sample means computed (keeping constant the sample size used to compute them)

CLT:

$\sqrt{n} \frac{\bar X_n - \mu}{\sigma} \xrightarrow[n \to \infty]{(in ~ distribution)} \mathcal{N}(0,1)$

Rule of thumb: "usable" when n (sample size) >= 30

The law of large number doesn't tell us "how close" the sample means converges to the pop mean. But this info we must use the CLT:

As a standard normal has almost all of its values in the range [-3,+3], it means that $|\bar X_n - \mu| \leq \frac{3\sigma}{\sqrt{n}}$

We can be more precise than using the constant "3" if we allow a lower confidance (let's say 99%).. we'll be able to pick up the right number associated with that confidence level..


## 02.03. Hoeffding's Inequality

When n is small.
Even when n is equal to 2 we can say something.
Hoeffding's Inequality: for finite n, not infinite ones

Assumptions:
- X_i are i.i.d.
- X are almost sure bounded:
  - this rule out gaussian, exponential r.v.
  - ok for uniform, Bernulli,...

$P(|\bar X_n-\mu| \geq \epsilon) \leq 2e^{-\frac{2\epsilon^2}{(b-a)^2}} ~ \forall \epsilon > 0$

The deviation reduce exponentially with n.

But epsilon needs not to be too small or it cancel out

Valid with any (positive) n size, including n=1.

For bernulli, setting epsilon equal to c/√n:
$X_i \stackrel{i.i.d.}{\sim} Ber(p) \xrightarrow[]{} P(|\bar X_n - \mu| \geq \frac{c}{\sqrt{n}}) \leq 2e^{-2c^2}$

Similar, but more powerful (exponential decay!) of the Chebyshev inequality (but needs the bounded assumption!)

The conclusion is the average is a good replacement for the expectation.

Application to the kiss example

**consistent** estimator: an estimator that converges for large sample size to the true parameter
- Typically proven with the L.L.N.

"identically distributed" every r.v. same distribution but also same parameter of the distribution


- $\sqrt{n} \frac{\bar X_n - \mu}{\sigma} \sim \mathcal{N}(0,1)$ (general for n > 30)

- $\sqrt{n} \frac{\bar R_n - p}{\sqrt{p(1-p)}} \sim \mathcal{N}(0,1)$ (for our Bernullis in the kiss example)

-  $(\bar R_n - p) \sim \mathcal{N}(0,\frac{p(1-p)}{n})$ (if I multiply a Gaussian by a number, then it's mean is multiplied by this number, and it's variance is multiplied by a square of this number)

- $P(|\bar R_n-p| \geq \epsilon) = P(\mathcal{N}(0,\frac{p(1-p)}{n}) \geq \epsilon)$

Note than in the kiss example we don't have p, we need to estimate it.

I want to find the epsilon for which the probability of (bar R  - p) being less than that epsilon is less than 5%.

Using CLT I arrive to say $P(|\bar R_n-p| \geq 0.084) \approx 5\%$

With n < 30 I can use instead the Hoeffding's inequality.

Let's now stick with the original sample n=124

$P(|\bar X_n - \mu| \geq \frac{c}{\sqrt{n}}) \leq 2e^{-2c^2}$


$n=124; c/\sqrt{n} = 0.084:~~ P(|\bar X_n - \mu| \geq 0.084) \leq 2e^{-2c^2} \leq 2e^{-2*124*0.084^2} \leq 0.347$

We say that Hoeffding's inequality is more conservative than the central limit theorem. But it's also less precise.
They're not going to use have Hoeffding's inequality.
No one wants to do this because with the same amount of data, you actually make less precise statements than if you were to were use the central limit theorem.

Remark: When c is small, Chebyshev may give a better bound. But as c increases, the bound given by Hoeffding decays exponentially in c^2 while the bound given by Chebysheve decays only by 1/c^2.


## 02.04. Gaussian distribution

We just know why we're going to be surrounded by the Gaussian distribution constantly.
And the reason is because the Gaussian distribution is the thing that shows up as the limit of the central limit theorem.

The central limit theorem is actually quite impressive.
It says that no matter what the distribution of your x size is, as long as it has mean and variance, their average will, properly rescaled, go to a Gaussian.

Here the parameters of the normal are the mean and the **variance** (not the standard deviation like in some books).

A "family" of distributions, not just one.
"standard" gaussian: N(0,1) - mean equal to 0 and var (And st .dev in this case) equal to 1

changing the mean --> translate the distribution on the X axis
increasing the variance --> make the distribution more flat

The exponential part of the gaussian is never equal to zero, across all the x

Domain: R
Codomain: R+

PDF: $f_{\mu,\sigma^2}(x) = \frac{1}{\sigma \sqrt{2 \pi} }* e^{-\frac{(x-\mu)^2}{2 \sigma^2}}$

CDF: $P(X \leq x) = F_{\mu,\sigma^2}(x) = \frac{1}{\sigma \sqrt{2 \pi} } * \int_{-\infty}^{x} e^{-\frac{(x-\mu)^2}{2 \sigma^2}} dx$
No closed form exist. We use tables (or computers)

Many natural phenomena are normally distributed, e.g. the heights of the students, even if nobody has a negative height or is 100 meters height, although the normal allow for these values, we still use it.
Even if the exponential is never 0, it can become very, very small.. the tail is very small.

For a standard normal, prob above [-3,3] is almost 0.

The distribution of average of Gaussian random variable is actually another Gaussian (without going into limits like for other distributions).

## 02.05. Properties of the Gaussian distribution

**Affine transformation**: that just means I multiply my random variable by a scalar, a number, and then I add another number.

An affine transformation is any transformation that preserves collinearity (i.e., all points lying on a line initially still lie on a line after transformation) and ratios of distances (e.g., the midpoint of a line segment remains the midpoint after transformation).

- $X \sim \mathcal{N}(\mu,\sigma^2) \xrightarrow{} aX+b \sim \mathcal{N}(a \mu + b,a^2 \sigma^2)$ - invariant under affine transformation

From linearity of expectations and properties of computing variance. What it is new is that it is still a normal.
An affine transformation of a Bernulli or a Poisson I don't get back a Bernulli or a Poisson

- $X \sim \mathcal{N}(\mu,\sigma^2) \xrightarrow{} Z = \frac{X+\mu}{\sigma} \sim \mathcal{N}(0,1)$ - standardisation

From the previous property. I subtract the mean and divide by the st. dev. I obtain a standard normal.

$P(u \leq X \leq v) = P(\frac{u - \mu}{\sigma} \leq Z = \frac{X+\mu}{\sigma} \leq \frac{v - \mu}{\sigma})$

x-mu/sigma is called the "z-score" of x.

- $X \sim \mathcal{N}(0,\sigma^2) \xrightarrow{} -X \sim \mathcal{N}(0,\sigma^2)$ - symmetry

If mu is not zero, it is the distribution of X minus mu to be equal to those of mu minus X.
- Symmetry implies that: $P(|X| > x) = P(X>x) + P(X<-x) = P(X>x) + P(-X>x) = 2P(X>x)$ (a disjoint union can be written as sum of probabilities)

## 02.06. Gaussian Probability Tables and Quantiles

Z stand for the standard normal (and the CDF is $\Phi_Z(z)$)

- $P(Z \geq -1) = P(-Z \leq 1) = P(Z \leq 1)$
- or: $P(Z \geq -1) = 1 - P(Z \leq -1) = 1 - P(Z \geq 1) = 1- [1-P(Z \leq 1)] = P(Z \leq 1)$

Opposite question: What is x such that the probability that x is,
at most-- little x-- is 90%. That is, which is the 90th percentile of the distribution? We need to read the table backward.
"normal" rounding is fine.

Quantiles
So percentile is just the quantile expressed as a percentage.
So rather than taking a number between 0 and 100, I'm going to take a number between 0 and 1. That's just the only difference.

Let $\alpha$ be in $(0,1)$. The quantile of *order* $1-\alpha$ of a random variable $X$ is the number $q_\alpha$ such that $P(X \leq q_\alpha) = 1- \alpha$


Being $F$ the CDF of $X:
- $F(q_\alpha) = 1-\alpha$ (the CDF evaluated at $q_\alpha$)
- $q_\alpha = F^{-1}(1-\alpha)$ (the inverted of the CDF of X evaluated at 1-alpha)
- $P(X > q_\alpha) = \alpha$ ($q_\alpha assume the role of "critical value")
- if $X = Z \sim \mathcal(N)(0,1): P(|X| > q_{\frac{\alpha}{2}}) = \alpha$

alpha   | 2.5% | 5%   | 10%
q_alpha | 1.96 | 1.65 | 1.28

The quantiles of any continuous random variable satisfies $q_a > q_b if a<b$.

Quantile in R: qnorm(1-alpha)

## 02.07. Modes of Convergence

3 types:
- Almost surely convergence (aka "with probability 1") (a.s.)
- Convergence in probability (p)
- Convergence in distribution (d)

a.s. convergence ⇒ convergence in probability ⇒ convergence in distribution.

In the following:

$(T_n)$ with $n \geq 1$ is a sequence or random variables $T$

### Almost surely convergence (strongest)

It implies the other twos are true as well.

Used in the strong law of large numbers (P sample mean equal pop mean equal to 1 as sample size goes to inf).

Formally:
- $P(\lim\limits_{n \to \infty} Y_n = c) = 1$
- $T_n \xrightarrow[n \to \infty]{a.s.} T~~$   iff   $~~P[\{ \omega: T_n(\omega) \xrightarrow[n \to \infty]{} T(\omega) \}] = 1$

Omega is the probability space.


This is not a property of a distribution, but of a specific sequence of random variables.
The n-th element of the sequence has a PDF parametrised in such a way that when n goes to infinity the whole distribution mass converges to a single point.

For the sample mean, we know that $\bar X_n \xrightarrow[n \to \infty]{} \sim \mathcal{N}(\mu,\frac{\sigma^2}{n})$.

We can then say that the sequence of r.v. $\bar X_n$, obtained varying the parameter n, converge a.s. to $\mu$, as the variance then goes to zero.

An other example is a uniform r.v. defined as $X_n \sim U(a, a+100/n)$. An n goes to inf, the mass converges to x=a. Conversly, a r.v. sequence defined as $X_n \sim U(a, a+3+100/n)$ would *not* converge a.s. to a single value, although it converges in distribution to $X_n \sim U(a, a+3)$

### Convergence in probability

Formally:

$T_n \xrightarrow[n \to \infty]{P} T~~$   iff   $~~P[|T_n - T| \geq \epsilon] \xrightarrow[n \to \infty]{} 0, ~ \forall \epsilon > 0$

Note that in the Bertsekas it is given as:

$T_n \xrightarrow[n \to \infty]{P} T~~$   iff   $~~P[|T_n - a| \geq \epsilon] \xrightarrow[n \to \infty]{} 0, ~ \forall \epsilon > 0$

Where $a$ is a real number.

The probability that two r.v.  depart from each other by something is going to be going to 0 as n goes to infinity.

In the effects, is similar to a.s. probability, but you can have cases of convergence in probability that doesn't converge in a.s. convergence.

Convergence in probability is easy to check.

It's important functions of r.v. are bounded in order to conclude the limit about them.

A further example of convergence in probability is $Xn \sim Ber(\frac{1}{n})$ where evidently $P(X_n = 0)$ converges to one.

Convergence in probability does not imply convergence of expectation values.

For example a r.v. sequence defined as $T_n = 0$ with prob $1-1/n$ and $2^n$ with prob $1/n$ converge in probability to 0, but the epected value, being $2^n/n$ does not converge!


### Convergence in distribution (weakest)

Used in the C.L.T.
The serie of r.v. converges to a given pdf when n goes to infty.

This is very different than the other twos.

e.g. $X_n \sim U(a, a+3+100/n)$ converges in distribution for n -> inf to $X_n \sim U(a, a+3)$

Formally:
- $T_n \xrightarrow[n \to \infty]{(d)} T~~$   iff   $~~E[f(T_n)] \xrightarrow[n \to \infty]{} E[f(T)]$
- $T_n \xrightarrow[n \to \infty]{(d)} T~~$   iff   $~~P[T_n \leq x] \xrightarrow[n \to \infty]{} P[T \leq x] ~~~ \forall x \in R$

It implies convergence of probabilities (not _convergence in probability_ !):

$T_n \xrightarrow[n \to \infty]{(d)} T ~~ \implies ~~  P(a \leq T_n \leq b) \xrightarrow[n \to \infty]{} P(a \leq T \leq b)$


Convergence of probabilities is all we need to start making those confidence statements, and probabilities of deviations, and things like this.

## 02.08. Operations on Sequences and Convergence

If two variables $T_n$ and $U_n$ converges in a.s. or probability to T and U respectively, then:

- sum: $T_n+U_n \xrightarrow[n \to \infty]{} T+U$
- product: $T_n * U_n \xrightarrow[n \to \infty]{} T * U$
- division ($U \neq 0$): $T_n / U_n \xrightarrow[n \to \infty]{} T / U$

These results **does not applies* in convergence in distribution only.

### Slutsky's theorem
Operations between r.v. when one converges in distribution and the other converges in distribution.

Let $T_n \xrightarrow[n \to \infty]{(d)} T$ and $U_n \xrightarrow[n \to \infty]{(prob)} u$. Then:

- sum: $T_n+U_n \xrightarrow[n \to \infty]{(d)} T+u$
- product: $T_n * U_n \xrightarrow[n \to \infty]{(d)} T * u$
- division ($U \neq 0$): $T_n / U_n \xrightarrow[n \to \infty]{d} T / u$

This is useful when combining multiple limits together.

We know for example that
$\sqrt{n} \frac{\bar X_n - \mu}{\sigma}$ converges in distribution to $\mathcal{N(0,1)}$ (from the C.L.T.).

**but** we don't have $\sigma$ but only $\hat \sigma$.

We do however know that $\frac{\hat \sigma}{\sigma}$ converges in probability to 1.

We can then multiply the two variable and still be sure they converge in distribution:

$\sqrt{n} \frac{\bar X_n - \mu}{\hat \sigma} * \frac{\hat \sigma}{\sigma} \xrightarrow[n \to \infty]{(d)} \mathcal{N}(0,1)$.

### Continuous mapping theorem

If $f$ is a continuous function:
$T_n  \xrightarrow[n \to \infty]{(d |p|a.s.)} T ~~\implies~~ f(T_n)  \xrightarrow[n \to \infty]{(d |p|a.s.)} f(T)$.

To see the limit of f of something less f of something else we will need what is called the "delta method".
