## Lecture 12: M-Estimation

### 12.01. M-Estimation

Objectives

At the end of this lecture, you will be able to do the following:

- Understand the formulation of M-estimation as a generalization of the maximum likelihood estimator.
- Define an m-estimator for the mean ,median , and α−quantile of an unknown distribution.
- Find the asymptotic variance of an m-estimator.
- Define what the Cauchy distribution is.
- Apply Huber's loss to the Laplace distribution .


### 12.02. Introduction to M-estimation

M-Estimation, like Makimum Likelihood Estimation, try to optimise a function that depend on the real parameter, but instead of maximising a complex function like the Likelihood (used to minimise the KD divergence in distribution), it try to minimise a simpler loss function.
Simpler to compute, but the variance of the estimator will be bigger.
Used in Machine Learning.

So to conclude, I want to talk about a broader
class of estimator, which is not really--
which is closer to maximum likelihood.
So we're sort of coming back to the original thing
of maximum likelihood, which was more
of a variational formulation of those things.
So when we did method of moments, we said well,
there's a system of equations that depend on my parameter.
I'm going to solve them and get my parameter.
When we did maximum likelihood estimators,
we said there's this function that my true parameter
maximizes.
This function is the expectation of something.
So let me replace the expectation by an average
and optimize that function instead.
M-estimation is really this.
M means maximum or minimum, so it's
something which is about maximizing a function.
And it's basically saying, well, this thing that you
did for the KL divergence, you could do in general, right?
The KL divergence was just a function
that was the expectation of something
so that you knew that the maximizer was theta star.
That was it.
That's all we cared about.
And everything I said after that could have been replaced.
Now, one thing that I cannot say is the Fisher information
thing.
So the fact that--
KL divergence is really instrumental in getting
this optimal asymptotic variance.
But you could do it in general if you
want to overcome some complex optimization problems.
You could actually replace the log-likelihood
by something else, and this is what M-estimation
is trying to do, and this is basically
the idea behind machine learning.
Machine learning says, I'm going to take my favorite loss
function, and this is what I'm going to optimize.
Forget about your likelihood, forget about modeling.
I'm just going to throw it in there and it's going to work.

So now I have this function, which
is expectation of rho of x1 mu.
And remember, we had really, expectation of l of x1 theta
when we were talking about expected log-likelihood.
This is really the same thing.

I'm going to think of this as being Q of mu,
and what I want to claim is that the only minimum or maximum--
it doesn't matter, so here, since I
get to do whatever I want, I'm to go back to minima--
the only minimum is basically at mu is equal to mu star.
So think of this as being your negative log-likelihood.
And you just want to say, I found this rho such
that this magical fact happens.

And now you have a strategy, because you
know that mu star minimizes this function of mu.
This function of mu is the expectation of something.
We're going to replace the expectation by an average,
and minimize this, and call them minimizer mu hat.
That's what M-estimation is.

So the real question is, how do I find this rho?
If you say, I want to estimate the median, what
is the rho I should be picking?
If you tell me I want to estimate the 90th percentile,
what is the rho I should be picking?

This is the expectation of a convex function--
turns out it's convex, the expectation of convex functions
are convex.
So I could actually just take the derivative

So here, the square is replaced by the squared Euclidean
norm, which is just the sum of the square of the coefficients.
And this completely decomposes coordinate by coordinate,
and what's going to happen is that each coordinate solution--
each solution per coordinate will be the expectation.

Slightly more complicated is, now
if I take the absolute value of x minus mu.
Why is it more complicated?
Because the absolute value is not differentiable.
I can not take the derivative and set it equal to zero,

So what's happening is that I'm putting a little more weight
on the positive numbers than I put on the negative numbers.
And this is basically just shifting my median,
and it's shifting it in a way that's
precisely what I get when I minimize the check function
as a function of x minus mu.
So rather than the absolute value
as a function of x minus mu, what I get is a quantile of P.
So you give me an alpha, which determines
the tilt of this function, and this will actually
guarantee that the minimizer of the expected value
of this function is precisely a quantile.

There was a Nobel Prize for a generalized method of moments,
which was awarded, but there's a Nobel Prize
that's coming up for someone who actually
developed these kind of things.
Quantile regression, and quantile estimation in general.
Which basically, when we talk about least-squares,
consists of replacing the squares by the check function.

M-estimation

Let X1,…,Xn
be i.i.d. with some unknown distribution P and an associated parameter μ∗ on a sample space E. We make no modeling assumption that P is from any particular family of distributions.

An M-estimator μˆ of the parameter μ∗ is the argmin of an estimator of a function Q(μ) of the parameter which satisfies the following:

- Q(μ)=E[ρ(X,μ)] for some function ρ:E×M→R, where M is the set of all possible values of the unknown true parameter μ∗;
- Q(μ) attains a unique minimum at μ=μ∗, in M. That is, argminμ∈MQ(μ)=μ∗

In general, the goal is to find the loss function ρ such Q(μ)=E[ρ(X,μ)] has the properties stated above.

Note that the function ρ(X,μ) is in particular a function of the random variable X, and the expectation in E[ρ(X,μ)] is to be taken against the true distribution P of X, with associated parameter value μ∗.

Because Q(μ) is an expectation, we can construct a (consistent) estimator of Q(μ) by replacing the expectation in its definition by the sample mean.

**median**: Assume that X is a continuous random variable with density f:R→R. Then a median of X is defined to be any point med(X)∈ R such that P(X>med(X))=P(X<med(X))=1/2.
Note: A median of a distribution is not necessarily unique.)
So the median is the point that splits the mass into two parts.
Empirical median: split my sample half above, half below it.
For a discrete data set, we define the median to be the middle number when the data set is sorted from smallest to largest.

**α-quantile**: Assume that X is a continuous random variable with density f:R→R. Define the α-quantile of X to be QX(α)∈ R such that P(X≤QX(α))= α.
Just like for the median, whether Qα is unique depends on the distribution.
The check function allows us to get quantiles as minimizers.
"Empirical α-quantile": split my sample points in α below and 1-α above it.

Fundamental theorem of calculus:
- $\displaystyle \frac{d}{d \mu } \left(\displaystyle \int _{-\infty }^\mu f(x) \,  dx \right) = f(\mu)$
- $\displaystyle  \frac{d}{d \mu } \left( \displaystyle \int _{\mu }^\infty f(x) \,  dx \right)  = - f(\mu)$
- $\displaystyle \frac{d}{d \mu } \left(\displaystyle \int _{-\infty }^\mu x f(x) \,  dx \right) = \mu f(\mu)$
- $\displaystyle  \frac{d}{d \mu } \left( \displaystyle \int _{\mu }^\infty x f(x) \,  dx \right)  = - \mu f(\mu)$

### 12.03. Recall the Ideas for M-estimation

Parallel between MLE and M-Estimation

$mu ^* = \text {argmin}_{\mu \in \mathbb {R}} \mathbb E_{X \sim \mathbf{P}}[ \rho (X, \mu )]$

Replacing expectations with averages becomes:

$\widehat{\mu } = \text {argmin}_{\mu \in \mathbb {R}} \frac{1}{n} \sum _{i = 1}^ n [\rho (X_ i, \mu )]$

where  $\hat \mu$ is precisely the M-estimator associated with ρ(x,μ).

### 12.04. Preparations for the Asymptotic Normality of M-estimators

So what are the properties of this thing?
Right, so I know that when I have the maximum likelihood,
I know precisely that under some regularity conditions,
I have asymptotic normality, I have consistency.
Asymptotic normality even has an asymptotic variance,
which is equal to inverse Fisher information.
And so the question is what do I get here?

we're going to just allow ourselves to invert
integrations and derivatives.

The J and K matrices :

Let X1,…,Xn be i.i.d. random vector in Rk with some unknown distribution P with some associated parameter μ⃗ ∗∈Rd on some sample space E. Let Q(μ⃗ )=E[ρ(X,μ⃗ )] for some function ρ:E×M→R, where M is the set of all possible values of the unknown true parameter μ⃗ ∗.

Then the matrices J and K are defined as

- $\displaystyle  \displaystyle \mathbf{J}\, =\, \mathbb E[\mathbf{H}\rho ] = \displaystyle \, \mathbb E\left[\begin{pmatrix} \frac{\partial ^2 \rho }{\partial \mu _1 \partial \mu _1} (\mathbf{X}_1, \vec{\mu })& \ldots &  \frac{\partial ^2 \rho }{\partial \mu _1 \partial \mu _ d} (\mathbf{X}_1, \vec{\mu })\\ \vdots & \ddots & \vdots \\ \frac{\partial ^2 \rho }{\partial \mu _ d \partial \mu _1} (\mathbf{X}_1, \vec{\mu })& \ldots &  \frac{\partial ^2 \rho }{\partial \mu _ d \partial \mu _ d} (\mathbf{X}_1, \vec{\mu })\end{pmatrix}\right]\qquad (d\times d)$

- $\displaystyle \mathbf{K}\, =\, \textsf{Cov}\left[\nabla \rho (\mathbf{X}_1,\vec{\mu })\right] = \displaystyle  \textsf{Cov}\left[\begin{pmatrix} \frac{\partial \rho }{\partial \mu _1 } (\mathbf{X}_1, \vec{\mu })\\ \vdots \\ \frac{\partial \rho }{\partial \mu _ d } (\mathbf{X}_1, \vec{\mu })\end{pmatrix}\right]\qquad (d\times d).$

In one dimension we have:
- $\displaystyle J(\mu ) 	\displaystyle = \mathbb E\left[ \frac{\partial ^2 \rho }{\partial \mu ^2} (X_1, \mu ) \right]$
- $\displaystyle K(\mu ) 	\displaystyle = \text {Var}\left[ \frac{\partial \rho }{\partial \mu }(X_1, \mu ) \right]$


### 12.05. Asymptotic Normality of M-estimators


**confidence regions**: confidence interval in multiple dimensions

$\hat \mu_n$ (the M-estimator) satisfis:
- consistency: $\hat \mu_n \xrightarrow[n \to \infty]{(P)} \mu^*$
- asymptotic normality:  $\hat \mu_n \xrightarrow[n \to \infty]{(d)} N(\mu^*, \frac{J(\mu^*)^{-1} K(\mu^*) J(\mu^*)^{-1} }{n})$

Well, here I would have an asymptotic variance.
So rather than multiplying by inverse matrices here,
I would just divide by the square of j.
So I would just divide by this thing squared.
And I would have just a number, but this number
would depend on mu star.
So if I want to build a confidence interval,
I'm actually stuck in this problem,
just like I was with the kiss example.
I would have this asymptotic variance that depends
on my unknown parameter.
So what do I do?
So I have a bunch of methods, and one
is to just use plug-in and rely on Slutsky.
And if all these quantities are continuous-- so for example,
here we would need j to have a continuous inverse,
and we'd need to have k to be continuous as well in mu.
Then in this case, I could apply Slutsky,
and Slutsky would allow me to just plug
in mu hat for mu star.

So we
had three ways of overcoming this limitation,
the asymptotic variance depending
on the unknown parameter.
There was the conservative bound.
There was solving, i solve,
and then there was the plug-in part.
The plug-in part is always the easiest,
but there might be more accurate ways of length.


### 12.06. Robust Statistics and Cauchy's Distribution

So what is robust statistics?
Well, this is statistics that you
might want to build when you might have possibly corrupted
data.

**robust estimator**: an estimator resilient to corruptions or mistakes in the data

in a way, the average of points
is not a robust estimator of the mean,
because if I move just a few points,
I could potentially move that guy really far.

And you can be robust to many things.

robustness to adversarial corruption (turtle/rifle)

Sometimes you have to do robust estimation.
So here's an example.
You have the cow Cauchy distribution.
So the Cauchy distribution is statisticians' favorite example
of a heavy tail distribution.

And it has-- it looks like this, so something pretty familiar.
Except that those guys don't decay like e to the minus
x squared like the Gaussian.
They actually decay like 1 over x.

Remember, we said that the Gaussian distribution is
essentially a proxy for having finite support,
bounded support.
This guy not.
Things can be really arbitrarily large.

you're going to have numbers that just shoot left and right.
You're going to have numbers that are 10m plus 10,000.
And so every realization of your data
is going to move your sample mean a lot,

And so every realization of your data
is going to move your sample mean a lot,
because there are really a lot of fluctuations.

expectation of x is not defined.

And so what you could do is to replace the mean by the median.
So the median will be a consistent estimator of m.
Just because-- just looking at this function,
it's symmetric about m.
So the median will always be the right thing
to do for this kind of thing.

Actually, even for a Gaussian, you could use the median,
and it would be a good estimator of the mean,
because it's symmetric about the mean.
And so this is called the location parameter.

And actually, for the-- of course for the Cauchy
distribution, you could play with its scale
and just start multiplying things,
like have a j coming in there if you want to do this.
So location and scale are common terminology in statistics.
We talk about a location/skill family,
which is basically a family which
is indexed by m and sigma.
So look at where it is and how much standard deviation
it's getting.
Of course, sigma would not be a standard deviation,
because this thing doesn't even have an expectation,
let alone a variance.

Cauchy distribution:

pdf: $f_X(x;m,\gamma) = f_ m(x) = \frac{1}{\pi \gamma } \frac{1}{1 + (\frac{x - m}{\gamma})^2}$

where $m \in R$ (or "$x_0$") is the location parameter and $\gamma >0$ is the "scale" parameter.

- the distribution is simmetric on m, so m is also the median
- the distribution has heavy tails, and the expected value $E[X]$ doesn't exist.

### 12.07. Robust Statistics and Huber's Loss

We know that the median minimizes
the expectation of x minus mu as a function of mu

Didn't got it:

OK, so this is the minimizer.
So I could say oh well, let's just replace this.
So let's do our m estimator, right?
So m estimator says take m hat to be the thing that minimizes
argmin over all mu's in r of 1 over n sum from i
equal 1 to n of xi minus mu.
OK, so I could do this.
The problem is this won't satisfy my conditions, right?
I mean, I need to talk about first derivative and second
derivative and things like this about this function rho, which
is the absolute value.
So all these estimators, they're very nice, they sort of fail.
Or those theorems fail when we talk about the absolute value,
which is probably one of the most central examples of m
estimation.
The median is a very central example.

The absolute value, one of the central loss function for having robust m-estimators like the median, doesn't have the continuity properties required for the asymptotic normality theorem.
Let's use instead the Huber's loss function.

Peter Huber:

And what he said, he said OK, I want
to define the loss function that's
going to give me some robustness,
but it's also going to allow me to have
the smoothness properties that I want.
I want to be able to talk about the first derivative
or the second derivative that I don't get when I just
use the absolute value.

And what he said, he said OK, I want
to define the loss function that's
going to give me some robustness,
but it's also going to allow me to have
the smoothness properties that I want.
I want to be able to talk about the first derivative
or the second derivative that I don't get when I just
use the absolute value.
So he said OK, if I look at the absolute value function,
the problem is, right here, just this kink,
everywhere else it's very differentiable and super nice
function.
So what he said, he said OK, I'm just
going to smooth it out and replace that part
by a nice smooth part.

OK, so how do you do this?
Well, you just take--
so this is 0.
You take minus delta and delta, and here you put a quadratic.
OK, sorry, this is at 0, because it's like the absolute value
function.
So put a quadratic here.
So this is like 1/2 of a squared as a function of a,
and then you just put the linear part
outside of this thing, that looks like the absolute value
function.

Huber's loss function:

$h_\delta (x) = \begin{cases}  \frac{x^2}{2} \quad \text {if} \,  \,  \left| x \right| \le \delta \\ \delta ( \left| x \right| - \delta /2 ) \quad \text {if} \,  \,  \left| x \right| > \delta \end{cases}$

Differnentiable and continuous, just the second derivative is not continuous:

- $\frac{\partial h_\delta }{\partial x}(x) = \begin{cases}  x \quad & \text {if} \,  \,  |x| < \delta \\ \delta \quad & \text {if} \,  \,  x > \delta \\ -\delta \quad & \text {if} \,  \,  x < - \delta , \end{cases}$
- $\frac{\partial ^2 h_\delta }{\partial ^2 x}(x) = \begin{cases}  1 \quad \text {if} \,  \,  |x| < \delta \\ 0 \quad \text {if} \,  \,  |x| > \delta \end{cases} = 1(|x|< \delta)$

Note that for $|x| > \delta$ (the linear part) the absolute value function has slope ±1, while the Huber's loss function has slope $±\delta$.

### 12.08. Applying Huber's loss to the Laplace distribution

**Double-exponential** (or "Laplace") distribution:

A random variable has a $\textrm{Laplace}(\mu ,b)$ distribution if its probability density function is

$f(x\mid \mu ,b)={\frac {1}{2b}}\exp \left(-{\frac {|x-\mu |}{b}}\right)$

That is:

- $\frac {1}{2b}e^{-{\frac {\mu -x}{b}}}$ if $x < \mu$
- $\frac {1}{2b}e^{-{\frac {x-\mu}{b}}}$ if $x \geq \mu$

Here, $\mu$ is a location parameter and $b > 0$, which is sometimes referred to as the diversity, is a scale parameter. If $\mu =0$ and $b = 1$, the positive half-line is exactly an exponential distribution scaled by 1/2.

The probability density function of the Laplace distribution is also reminiscent of the normal distribution; however, whereas the normal distribution is expressed in terms of the squared difference from the mean $\mu$, the Laplace density is expressed in terms of the absolute difference from the mean. Consequently, the Laplace distribution has fatter tails than the normal distribution.

You start with an exponential like here.
This is of mass 1.
You divide by 2.
So this is of mass 1/2, and you just make it symmetric.
So I'm going to take a parameter 1 for simplicity,
and what I'm going to be interested in
is the location parameter, m.

But the expectation of an indicator
is just a probability.
So this is just the probability that x minus m
is less than delta, agreed?

Didn't understood this:

However, Hoover's loss is very close
to this guy.
In particular, if I let delta go to 0,
it's going to be this guy up to a constant.
So let me do it for positive delta
and try to extrapolate as I let delta go to 0,
and maybe delta goes to 0 is not going
to be the one that gives me the smallest asymptotic variance.
There might be some delta that actually give me
a different asymptotic variance that's better.

#### Sample median

Let $S = x_1 < x_2 < \ldots < x_ n$ denote a sorted list of numbers. We define the elementary median $\text {med}_ e(S)$ to be

$\text {med}_ e(S) := \begin{cases}  x_{\lceil n/2 \rceil } \quad \text {if} \,  \,  \,  n \,  \text {is odd} \\ \frac{1}{2}(x_{n/2} + x_{n/2 + 1}) \quad \text {if} \,  \,  \,  n \,  \text {is even} \end{cases}$


In other words, when n is odd, the median is the middle number when the set S is sorted from smallest to largest. If n is even, we can just define the median to be the average of both middle numbers. This definition is likely familiar from prior math classes.

A more advanced definition, useful for statistical purposes, is to define the sample median $\text {med}_ s(S)$ of a sample $S := X_1, X_2, \ldots , X_ n$ to be

$\text {med}(S) := \text {argmin}_ m \sum _{i =1 }^ n \left| X_ i - m \right|$.


While the elementary median is unique, this is not always the case for the sample median.
In general, one can show that for an ordered sample $S = x_1 < \ldots < x_ n$ that

$\text {med}(S) = \begin{cases}  x_{\lceil n/2 \rceil }\quad & \text {if} \,  n \,  \text {is odd} \\ \text {Any number in the interval} \,  \,  [x_{n/2}, x_{n/2 + 1}] \quad & \text {if} \,  n \,  \text {is even} \end{cases}$

This thing is-- the clip version is also symmetric about m.
So when I remove this, this is symmetric about 0.
So the expectation is 0.



### 12.09. Applying Huber's loss to the Laplace distribution (Continued)

so this is nice, because it's not just
telling you that the MLE is asymptotically
normal with variance 1.
It's actually telling you that, even though those conditions
don't exist, it says that among this family of estimators that
arise from Hoover estimators, this
is the one that has the smallest asymptotic variance.

### 12.10. Review of Methods of Estimation

And we also used it for the method of moments,
because moments are just thinks that contain information
about the unknown parameters.
I can estimate this information and then
invert it to go back to my original parameters.
So as I said, an estimation is an extension
of the maximum likelihood estimator.
The method of moments is the method
that just says, OK, I have my moments, I have my parameters.
They give some moments.
So for example, if I have a parameter,
say alpha and betas are the two parameters of my distribution.
Maybe the first moment is alpha plus beta,
and the second moment is alpha times beta,
or something like this.
So I have two equations.
Not necessarily linear, just two equations that
involve alpha and beta, and I'm hoping to be able to invert it.
So if you gave me the sum of two parameters
and the product of two parameters,
can you find those parameters?

So if you look at partial with respect to theta of log f
theta of x theta, this is sometimes
called the score function.
And the expectation equals 0 is sometimes
called the score equation.

$\mathcal{I} := \left[ \widehat{\theta _ n} - q_{\alpha /2}\frac{\widehat{\sigma }}{\sqrt{n}}, \widehat{\theta _ n} + q_{\alpha /2}\frac{\widehat{\sigma }}{\sqrt{n}} \right]$
