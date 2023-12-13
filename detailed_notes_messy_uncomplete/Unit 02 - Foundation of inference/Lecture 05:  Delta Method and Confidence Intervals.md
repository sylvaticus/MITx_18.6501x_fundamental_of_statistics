# Lecture 05:  Delta Method and Confidence Intervals

## 05.01. Confidence Intervals and the Delta Method
Objectives

At the end of this lecture, you will be able to:

- Apply the Delta method to an asymptotically normal sequence of random variables.
- Estimate the parameter and construct confidence intervals for an exponential statistical model using the Delta method.
- Construct confidence intervals for a variety of statistical models using the Delta method and one of the conservative , solve , or plug-in methods.
- Give a frequentist interpretation of the meaning of a (asymptotic) confidence interval of level 1−α

## 05.02. Confidence Intervals Concept Checks
## 05.03. Confidence Intervals Concept Checks Continued
Which one will typically be larger than the other one?
the 98% will be larger, right? The more confidence you have, the wider your error bars.

I have two valid asymptotic confidence intervals.
And they're actually not even overlapping.
They're completely different.
And so those guys are kind of annoying.
And the main reason is because they're not really centered
about my best guess.
So a good interval will tend to have,
in the middle of it, my estimator,
unless my estimator has some intrinsic bias or something
that I need to correct.

When you have confidence intervals that
are based on the Gaussian distribution,
you can actually prove that the narrowest confidence intervals
you're going to get are precisely
the ones that are centered about the mean of the form Xn bar
plus-minus something, and this something being the same for
plus and minus.
So the minute you start not centering your confidence
interval, you're going to have something that's wider.
So always try to center it.

## 05.04. Confidence Interval Concept Checks Continued
## 05.05. Confidence Intervals Concept Checks Continued

When I say 0.34 to 0.57 is a 95% confidence interval,
you can just put quotes and dashes in between if you want.
It's just the branding.
All it means is that the way I got
this thing was by first computing
this probability for this random variable and then
passed in the numbers that I saw.
So a 95% confidence interval is the name of this thing.
What I'm saying is this is a 95% confidence interval.
The way I get the 95% confidence interval
is by going through all the procedure
that we had with this random variable and that
the last step, replacing this random variable by the numbers
that I observe.
And then I say this thing that I got in this way is
a 95% constant interval.
Now, once I do it, it does not mean
that the probability that p belongs to this interval,
to this number there, is 95%.
All I'm saying is that's how I got it.

So that's what Bayesians do.
They do have some beliefs about what p is,
and then there will be a meaning,
and it is going to be called the Bayesian confidence interval,
and this one is called the frequentist confidence
interval.
And so the meaning of a Bayesian confidence interval
is different from the meaning of a frequentist confidence
interval.

## 05.06. Modeling Inter-arrival Times of a Subway System

Demostration of memoriless property:
- $T \in Exp[\lambda]$
- $P(T> t+s | T > t) = \frac{P(T> t+s) and P(T>t)}{P(T>t)} = \frac{P(T> t+s)}{P(T>t)} = \frac{e^{-\lambda(t+s)}}{e^{-\lambda t}} = e^{-\lambda s} = P(T>s)$

the first thing I need
to check when I pick a modeling distribution for my data
is whether it's actually a good model for what I'm doing.
Here I have waiting times.

if you think of it over the entire course
of a day, you're only making a statement
about the average distribution rather than just
the instantaneous distribution.

## 05.07. Estimating the Parameter for an Exponential Model

the expectation of your random variable is p.
So in naturalistic manner, that's typically
motivated by the law of large number
is to replace the expectation by an average.
And therefore, a natural estimation
for a estimate for one over lambda is T n bar.
My average interim arrival time.
Agree?
That's for one over lambda.
And that's not what I want to estimate.
I want to actually estimate lambda.
So what is a natural estimate for lambda?
One over that.
Is this a consistent estimatator?
Yes, it is.
Because:
- The fact that T n bar actually converges to one over lambda.
- And the second one is the continuous mapping theorem.

By Jensen's inequality, $1/\lambda$ is a convex function: $E[\frac{1}{\bar T_n}]>\frac{1}{E[\bar T_n]} = \lambda$


$bias(\hat \theta_n) = E[\hat \theta_n] - \theta$

$E[\hat \theta_n] = E[\frac{1}{\bar X_n}] > \theta = \lambda = \frac{1}{E[X_i]} = \frac{1}{E[\bar X_n]}$

## 05.08. The One-Dimensional Delta Method

The continuous mapping theorem tells me
that if I have a convergence in probability or almost surely,
I can take a function, and I'm going
to have something that g of this something
will convert to g of the limit.

But remember, all it's saying is that if I
take g of the whole thing outside,
I'm going to get g of a Gaussian in the end.
That's not what I want.
I want the difference between the g's.

turns out
that this delta method works as soon as you
have a central limit theorem.
It doesn't have to be for the mean, for the average,
for something of the form x n bar.
Anything that's of the form, say,
z n, and when I remove some theta
and multiply by square root of n,
I have a convergence to some n, say, zero sigma squared.
OK, I have something that asymptotically
normal around some theta.

Usually, you get this from central limit theorem.
But for example, when you talk about the maximum likelihood,
we will have such a result. But it will not necessarily
be of the form x n bar.
OK, so a asymptotically normality
is not something that's reserved to averages
from the central limit theorem.
There's other results that get you that.

If $Z_n$ is a r.v. (not necessarily the mean) asymptotically normal around $\theta$, and $g(.)$ is a continuously differentiable function (i.e. whose derivatives are continuous), we have:

$Z_n \xrightarrow[n \to \infty]{} N \sim (\theta, \frac{\sigma^2}{n}) \implies g(Z_n) \xrightarrow[n \to \infty]{} N \sim (g(\theta), \frac{(g'(\theta))^2 \sigma^2}{n})$

Proof (taylor expansion)

$g(Z_n)-g(\theta) = (z_n - \theta)* g'(\theta)+\frac{(z_n - \theta)^2}{2}* g''(\omega)$ with $\omega \in [Z_n,\theta]$

The last term is negligible so:

$g(Z_n)-g(\theta) \approx (z_n - \theta)* g'(\theta)$

This implies that:

$\sqrt{n} (g(Z_n)-g(\theta)) \approx \sqrt{n} (z_n - \theta)* g'(\theta) \simeq N \sim (0,(g'(\theta))^2 \sigma^2)$

(note that $g'(\theta)$ is just a deterministic number, so the variance of the r.v. obtained multiplicating our original r.v. by this number it is multiplied by the square of this "number")

## 05.09. Applying the Delta Method

In our example, in the T example, what was theta?
Was it lambda?
Was it 1/lambda?
Yes, that was 1/lambda.

theta, in all the examples where
we're going to want to apply the delta method,
is not the parameter of interest.
It is the function of the parameter
that we're trying to actually invert.

If (for CTL or other knowledge) we know that:

$\sqrt{n}(Z_n - \theta) \to N \sim(0,\sigma^2)$

Now, let's apply it with out train problem where the variance is $\frac{1}{\lambda^2}$, $Z_n$ be the sample mean $\bar T_n$, an estimator for the true mean $\theta = \frac{1}{\lambda}$.

Then we can rewrite the previous equation as:

$\sqrt{n}(\bar T_n - \frac{1}{\lambda}) \to N \sim(0, \frac{1}{\lambda^2})$.

We are however interested NOT on the mean but on the parameter $\lambda$.

So, let's now define a function $g(x) = \frac{1}{x}$, so that $g'(x) = -\frac{1}{x^2}$.

We can now apply the delta method to the above equation to find:

$\sqrt{n}(\frac{1}{\bar T_n} - \lambda) \to N \sim(0, \lambda^4 * \frac{1}{\lambda^2}) = N \sim(0, \lambda^2)$.

Basically we can now use the CLT for infer CI on $\frac{1}{\bar T_n}$ as an estimator of $\lambda$ instead of our original $\bar T_n$ as an estimator of $\frac{1}{\lambda}$.

## 05.10. Confidence Interval for an Exponential Statistical Model


## 05.11. When g is Not Invertible
The Delta method works even when g is non-invertible.

## 05.12. Interpretation of the frequentist Confidence Interval

What is $\lambda$ in an exponential ?
it's not really clear.
This usually is sometimes referred to as the intensity.
So that's the intensity of a rival.
The higher the intensity, the more you get per minute.

Let's see really what we mean in terms of frequentist.
So frequentist means that you sort of assume
that you could repeat your experiment.
When you make a statement about frequentists,
a frequentist statement, what you really are assuming
is that you could repeat this experiment over and again.
I could go again tomorrow at the airport
and collect sample from exactly 124 couples,
writing down whether they turn their head to the right
or to the left.
I could do that over and again.

So sometimes, you will have some of those red confidence
intervals that happen to not contain this guy.
So this probability here is 1 1 1 1 1 1 1 1 0 1 1 1 1.
What 95% confidence interval is telling
you is that the proportion of times you see a 1,
the proportion of time the true parameter belongs
to this interval, if I repeat this experiment,
say, m times as m goes to infinity,
this number goes to 95%.
So that's the frequentist thing.

So next week, we'll start hypothesis
testing in a slightly mild way, mostly coming from--
so you will have some exercises that like are soft
and connect them to confidence intervals.
There's going to be a lot of terminology.
We'll talk about type I, type II error,
one-sided, two-sided tests.
We're going to talk about power.
We're going to talk about p values.
We're going to see a bunch of new words.
