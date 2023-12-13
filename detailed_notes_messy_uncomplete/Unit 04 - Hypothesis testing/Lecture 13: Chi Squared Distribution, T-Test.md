## Lecture 13: Chi Squared Distribution, T-Test

### 13.01. Motivation
Obj:
- adapt the test to the specificities of the case-study under exam (e.g. small n -> t-test)
- Use advanced asymptotic tests:
  - wald's test (based on maximum likelihood **estimate**)
  - likelihood ratio test (based on the value of the likelihood, not on the ML estimators)
Googness of fitness non-parameteric tests: measure how good a **distribution family** (rather than a parameter) is in describing the data:
- chi squared test for discrete variables
- Kolmogorov-Smirnov test for continuous variables

The distribution used to compute the critical values of the Kolmogorov-Smirnov test is based on a variant of the Brownian motion, also known as the Wiener process, because its formal existence was first proved by a mathematician, Norbert Wiener, right here at MIT.


### 13.02. Objectives

Parametric Hypothesis Testing, Finite Sample Sizes, and Chi-Squared and Student's T Distributions

At the end of this lecture, you will be able to do the following

- Test hypotheses when the i.i.d. data samples have a Gaussian distribution.
- Recognize when you cannot assume the test statistic to be Gaussian (in the small sample sizes regime).
- Understand, recognize, and use the Chi-Squared Distribution .
- Use Cochran's Theorem , which relates the sample variance and sample mean when the data samples are i.i.d. Gaussian.
- Understand, recognize, and use the Student's T Distribution ; understand that the test statistic follows a Student's t distribution in the small sample sizes regime.
- Test hypotheses in the small sample sizes regime when the i.i.d. data samples have a Gaussian distribution.
- Understand convergence of the Student's t distribution to the standard normal with increasing sample sizes.

### 13.03. Unit Overview

Let's go back to the example of national average waiting time in US hospitals being the know value of $T$, and we want to know if the hospital X from which we sample n waiting time has as average $\mu_x$ higher than $T$. This is a one-side test in the form of:

- $H_0: \mu_x = T$
- $H_1: \mu_x > T$

I hence prepare my test for the desired level $\alpha$ (e.g. 5%) in such a way:

$\psi(\alpha;\bar X_n,\sigma^2/n) = \mathbb{1}(F^{-1}(\alpha;\bar X_n,\sigma^2/n) > T) = \mathbb{1}(F(T;\bar X_n,\sigma^2/n) < \alpha) = \mathbb{1}(\Phi(\frac{T-\bar X_n}{\sigma}*\sqrt{n}) < \alpha)$
$= \mathbb{1}(\frac{T-\bar X_n}{\sigma}*\sqrt{n} < \Phi^{-1}(\alpha))= \mathbb{1}(\frac{T-\bar X_n}{\sigma}*\sqrt{n} < - \Phi^{-1}(1-\alpha)) = \mathbb{1}(\frac{\bar X_n - T}{\sigma}*\sqrt{n} > q_\alpha)$

Where $F^{-1}(\alpha;\bar X_n,\sigma^2/n)$ is the inverse of the CDF of the $Normal(x; \bar X_n,\sigma^2/n)$ evaluated at $x = \alpha$.

Similarly, the p-value is:

$\text{p-value}(T;\bar X_n, \sigma^2/n) = F(T;\bar X_n,\sigma^2/n) = \Phi(\frac{T-\bar X_n}{\sigma}*\sqrt{n})$

That is, the $Normal(x; \bar X_n,\sigma^2/n)$ evaluated at $x = T$.

Visually:

![hyphotesis testing][1]

Remember the following scaling rules:

- $F(x;\mu,\sigma^2/n) = P(X \sim N(x;\mu,\sigma^2/n)<x) = P(\frac{X-\mu}{\sigma}*\sqrt{n} < \frac{x-\mu}{\sigma}*\sqrt{n}) = \Phi(\frac{x-\mu}{\sigma}*\sqrt{n})$
- $\Phi^{-1}(\alpha) = -\Phi^{-1}(1-\alpha) = -q_\alpha$

  [1]: https://edxuploads.s3.amazonaws.com/1572619136900327.jpg


**2-side vs 2-sample**

A test can be one or two side depending how we formulate $H_1$ vs $H_0$: if we want check "difference", it's two side, if we want check $H_1$ is greater (or we check for being lower) that $H_1$, we have one-**side** test.

But a test can also be two-sample if also the value of $H_0$ is not a given certain value (e.g. the know average waiting time of US hospitals), but come from sampling as well.


### 13.04. Parametric Hypothesis Testing - Clinical Trials

H_0: a=b. H_1: a>b

and

H_0: a<=b. H_1: a>b

Both are valid formulations that will lead to the same test.




### 13.05. Parametric Hypothesis Testing - Asymptotic Test with Level Alpha

Slutsky should be synonym to plug-in in your mind.

Now notice that I need both of my sample size
to go to infinity to be able to make this statement, right.
They really need to have sigma hat squared
n that depends on n samples to go to sigma squared.
And I need this guy to go to sigma squared c.
But here-- actually, and so to make our life slightly easier,
what I'm doing is that I'm assuming
that m is a constant times n so that I have only one
asymptotic.
I don't have to have like m going to infinity and n
to infinity.

So I actually fix them, and I basically
say they have to be essentially asymptotically comparable, OK?

Slutsky said, if you have the product
of two random variables, one converging in distribution
to something and the other one converging in probability
to a constant, then you can actually multiply them
and the limit will be the product of the limits,

Clearly if one is 12 and the other one is 12,000,
then you should really think about what you're doing.


### 13.06. Hypothesis Testing in the Regime of Small Sample Sizes - Preparations

why the distribution does not depend on μ or σ?

It may be helpful to remember that we begin this discussion with a very strong assumption. Namely, we assume that our data is Gaussian. For comparison, when we applied CLT and Slutsky, we assumed only that the distribution of our data, whatever it might be, has a variance. Basically we didn't have to assume anything about the distribution in order to apply asymptotics, and we have to assume everything in order to say something about the finite sample distribution of the standardized sample mean. So, if I know the exact distribution of the sample (jointly normal), up to two parameters (mean, variance), than I know the exact distribution of any statistic of that sample, up to two parameters. It should then not be very surprising, that I can choose a statistic in such a way, that the dependence on the mean and the variance disappears. This statistic happens to be the sample mean centered at the population mean and standardized by the sample variance.

### 13.07. The Chi-Squared Distribution and its Properties

So this distribution ($\frac{\bar X_n - \mu}{\sqrt{\hat \sigma^2}}$) is not the chi-squared distribution.
The chi-squared distribution will be the distribution
of the sample variance.
And then we'll have to talk about the square root
of the chi-squared distribution and we'll
have to talk about what happens when I take a Gaussian
and divide it by this.

The chi-squared distribution is indexed by only one parameter,
which is an integer.
I'm sure you've seen the letter chi before.
It's almost an x, except that one of the bars
is a little curved.
And so the parameter here is not called the expected value.
It's not called a variance.
It's not called the parameter.
It's called degrees of freedom, and it's often
the case when you have an integer parameter.
And this is the law of the sum of d squares
of independent standard Gaussians, OK?

OK, so why does this such a distribution show up?
Well, because it's the natural thing
that happens when you start measuring the length
of a Gaussian vector.
If I give you a Gaussian vector with IID entries and 0,1,
then what's going to happen is that its squared length
will have this distribution.
OK, so this is how it goes.
I have a two-dimensional problem.
I draw a Gaussian here.
I draw a Gaussian here.
OK, so let's say I get this number and I get that number.
Then the squared length of this guy
right here is a chi square with two degrees of freedom
because I sum the square of 2, OK?
Square for x, square for y.
And in three dimensions, if I have a three-dimensional
Gaussian vector, if I look at its squared length--
squared distance to the origin--
this is going to be a chi-square with three degrees of freedom.

So this is what it looks like.
So this is my pdf for different values
of the degrees of freedom, OK?
So degree of freedom 1 looks like this.
Degree of freedom 2, this is my exponential 1/2.
Degree of freedom 3, this is what starts to happen.
There's this little bump that we didn't have before that started
coming in.
And that's because I'm summing the squares of Gaussians that
are pretty much all of the same size, right?
The Gaussian is pretty typically of size order 1.
And so I'm summing 1, 2, 3, 4, and so this thing
is becoming bigger and bigger, right,
in a stochastic sense of course, because with some probability
a chi squared 10 will be smaller than a chi squared one.
But in a stochastic sense, it's becoming bigger and bigger
because I'm summing more and more positive numbers.
OK, and this how you see it.
You see this bump and you start seeing moving to the right.
You also see something which is that it's flattening out, OK?
So the two things that we should be
seeing when we compute the expectation and the variance
of this distribution is we should see the expectation
increase with the number of degrees of freedom
and we should also see the variance increase
with the number of degrees of freedom.

there's
something called the kurtosis of a random variable, which
is the expectation of the random variable minus its expectation
of the power 4, which is something that sort of measures
how heavy the tails are.

So the expectation of a Kai-squared
is the number of degrees of freedom.
The variance is two times the number of degrees of freedom.
Now, notice that the typical deviation around the mean
is square root of the variance.
So it's of order square root d.
So when d is very large, then this thing
is actually sort of concentrated.
The typical deviation is an order
of magnitude square root of the size of where
this bump actually is.
So you don't really see it in the pictures that I showed you.
But the size of the bump is square root
of the location of the bump, basically.



### 13.08. Sample Variance and Sample Mean of IID Gaussians: Cochran's Theorem

if you actually rescale properly Sn,
you end up with a chi square.

### 13.09. Student's T Distribution
### 13.10. The Student's T Test (T Test)

So let's do students-- what's called student T tests or just
T tests.
So basically, this is how it goes.
It's going to do exactly as we said before,
except we're not going to do the Slutsky step.
And rather than using the quintile of a Gaussian
distribution, we will use the quintiles
of students T distribution.

when you do non asymptotic,
you cannot just escape the fact that you don't know
the distribution.
So you have to assume that here your distribution is Gaussian.

So this test statistic has a distribution
that does not depend on any unknown parameter
under the null.

And therefore, it can compute its quintiles under the null.

And so for different sample sizes,
I'm going to have a different table to look up.


And actually, under H0 is unclear what I mean,
because under H0, I have a bunch of values.
But remember, we always take the mu in H0
that's the closest to the alternative
to compute the test.

So that goes back to your question when you said,
could you make less than 0?
And that's the one that says, well,
taking equal to mu 0 or less than or equal to 0 is the same.

### 13.11. Back to Clinical Trials: Two Sample T-Test and the Welch-Satterthwaite Formula


[two-sample size, with n diff than m]
And so it turns out that this is still approximately a student.
But I need to tell you, how many degrees of freedoms do I have?

If n was equal to m, what would this number be?
What would be my sample size, if n was equal to m?
Sorry, and sigma squares were equal?
If n was equal to m, and the two sigma squares were equal?
2n, right?
I would have n samples from the first guy,
n samples from the second guy.
It would all be standard Gaussians,
and I should have, typically, 2n.
