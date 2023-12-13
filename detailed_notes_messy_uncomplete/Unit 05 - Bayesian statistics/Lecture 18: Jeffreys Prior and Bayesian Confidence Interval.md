## Lecture 18: Jeffreys Prior and Bayesian Confidence Interval

### 18.01. Objectives

Bayesian Statistics Part 2

At the end of this lecture, you will be able to do the following:

- Explain the important factors involved in choosing a prior distribution.
- Distinguish between conjugate priors and non-conjugate priors .
- Compute Jeffreys Prior and understand the intuition behind its significance.
- Apply Bayesian statistics in simple estimation and inference problems.
- Compare and contrast results from Bayesian and frequentist statistical methods

### 18.02. Review of Previous Lecture

So when you have a Bernoulli experiment,
if you feed a prior to be a beta distribution,
then what comes out is also beta distribution.
And we call those things conjugate priors.
OK, everybody is clear on what the mechanism is?
All right, so here, of course, the natural distribution--
the natural question will be, well, OK,
so here you picked out this prior,
and it was certainly convenient, in light of the likelihood.
And you can always do this.
You can always look at what the likelihood of your model looks
like and pick your prior accordingly,
so that your life will be easier when you multiply the two.

Here, we said-- so here we can still include our prior belief
in this beta distribution by just picking this parameter a
or picking a different a and b for the two
parameters of the beta.
And so we've reduced expressing our prior belief
from having to write down a probability density
function, say, down to having to pick two parameters.

CI for bayesian approach:

And what we see, when we look at this pdf--
I mean, hopefully, by now, you're
used to just staring at a pdf and see immediately what
are the most likely outcomes.
And what you see from here is that the most likely outcomes
of this posterior distribution are those points.
So in a way, it's giving you more information
about the parameter than just a single number.
Because a single number, you know
you're going to have one single estimator.
But we went away from this by saying,
OK, maybe we need to build [INAUDIBLE] barriers
around this to capture our lack of information.
And this is precisely what this posterior does for you.
It gives you any confidence you want around this.
If you pick 25%, you just put 25% of mass under the curve,
and you will have an interval that gives you 25%.
If you want to put 95%, you put 95%.
So those are called Bayesian confidence regions.
We'll talk about them.
They have a complete different meaning--
completely different meaning than the confidence
interval we've seen before.
But from an operational point of view,
they're basically the same.
They're just providing confidence regions or error
bars around the parameter you're getting.

How to choose the priori ?

The first statement is correct. The main purpose of specifying a prior is so that the researcher's prior belief may be weighted together with the observations towards calculating the posterior, which is an informed statement on the possible values of the parameter. As a result, the family of distributions has to be flexible enough so that we could find suitable parameters for the prior distribution to resemble the prior belief.

The second statement is correct. It is also important to consider the support of the prior distribution, because an accurate and useful posterior must not have parameter values that are by definition impossible, even if they fit well calculation-wise. For example, having a full (non-truncated) Gaussian prior to model possible probabilities would give positive probability to clearly impossible parameter values: values that are either negative or greater than 1.

The third statement is correct. As seen in the previous lecture, one useful feature of the Beta distribution is that combining the prior and likelihood does not introduce any new terms; rather, we only need to update the exponents. In general, having a convenient or common posterior distribution would make it more feasible to come up with closed forms for certain inference tasks based on the posterior.


### 18.03. Choosing a Prior

So let's say now I have no way of picking this.
But I still desire this feature of spitting
out a whole posterior distribution,
rather than just one estimate, one point estimate.
So the way I can do this is by just
getting priors that do not prefer
any region of the parameter space of others, right?
So this prior that I started with clearly
prefers parameters that are close to 1.
So the white one prefers parameters that are close to 1,
than those that are close to 0.
So here, I clearly captured some prior belief,
when I wrote this one down.

OK, and that's what I write here, when
I say, saying that a density--
a probability density is constant is saying
that it's proportional to 1.
It's the same thing.
If it's proportional to 1, I could have ran 2 or 25 here.
It's the same thing, just one big coefficient of personality.
And what matters here is that this guy does not
depend on theta.
So no matter what theta you have,
the pdf is the same everywhere.

The fact that you don't have a proper prior distribution
does not prevent you from having a proper posterior
distribution.

The whole goal was to be able to get this yellow curve here
that's telling us there's some regions
of the space where, after seeing my data,
I think p is more likely to be.

When I have noninformative prior,
I'm basically pretending that my likelihood is my posterior
distribution.
And I know it's a likelihood.
So it's always non-negative.
It's the joint density of my data.
So it has to be non-negative, and all I have to do is to just
rescale it so that it's a proper--
so that it's a density.
So it's the joint distribution of the xi.
So if I were to integral-- integrate this
with respect to the xi, I would certainly get 1.
But what I'm interested in is integrating with respect to p.
So there's no reason why this thing should integrate to 1.
And so the coefficient of proportionality
we have is just the integral of the log likelihood with respect
to p.


### 18.04. Review: the Beta Distribution

The distribution Unif(0.3,0.8) is not a suitable prior because its support is [0.3,0.8], which is not the whole interval [0,1] that's required for a Beta distribution. Even though on this prior's support, it is proportional to Beta(1,1), using this as the prior will yield a posterior with 0 weight on [0,0.3] and [0.8,1], which could not be a Beta distribution.


### 18.05. Improper Prior: Example


If we had a parameter sigma here--
so here, see the x i's that I've defined have variance 1?
But if we started having sigma in there,
it would show up, as well, just like we had it before.
So this precisely gives us the same answer
as the one that we did in the frequency setup.
This is an example of completely noninformative priors
that were just in replacing the posterior by the rescaled log
likelihood so that it actually looks
like a density with respect to your parameters.

### 18.06. Jeffreys Prior I: Definition

When I think about the maximum likelihood estimator,
if I have a high Fisher information at a given theta
star, the true parameter, then this parameter
I'm going to be able to estimate faster
than one that has a lower Fisher information, because this
characterizes the variance of the maximum likelihood
estimator.
So if my Fisher information is small,
my maximum likelihood estimator will
have a much larger variance when trying to estimate
that specific point.
And so what this is doing is trying to balance it out.
It's trying to say, if those points with high Fisher
information are easier to estimate,
I'm going to put more prior on those guys.
And of course, the det is just the way
to collapse all this information into one number.

Jeffreys Prior is an attempt to incorporate frequentist ideas of likelihood in the Bayesian framework, as well as an example of a non-informative prior. This prior depends on the statistical model used for the observation data and the likelihood function. Mathematically, it is the prior πJ(θ) that satisfies

πJ(θ)∝detI(θ)−−−−−−√,


where I(θ) is the Fisher Information matrix of the statistical model associated with X1, …, Xn

in the frequentist approach, provided that it exists.

In the one-variable case, Jeffreys prior reduces to
πJ(θ)∝I(θ)−−−−√.


The Fisher information matrix I(θ) here is treated as a linear transformation matrix which maps one coordinate space to another (the logic behind such a mapping would be explained soon). In linear transformation terms, taking the determinant represents the ratio of volumes of corresponding spaces between coordinate system, which explains the intuition behind the use of det I(θ).

Nice explanation:

- The weight given to a parameter value θ is the square root of its Fisher information I(θ), so more weight is given when I(θ) is high. The Fisher information is also the reciprocal of the MLE variance, so when the Fisher information is high, the MLE variance is low and thus the MLE has less uncertainty. Combining, we get that the Jeffreys prior gives more weight to values of θcwhose MLE estimate has less uncertainty.

- Continuing from the above reasoning, when the MLE estimate has less uncertainty and we are able to estimate it more precisely. This corresponds to the data giving more information about the parameter when the Jeffreys prior yields larger values.

- Again, Jeffreys prior gives more weight to regions with high Fisher informations. By the given interpretation for the Fisher information, this means that at these areas, a small change to θ will influence the data relatively more, or in other words, potential outcomes are more sensitive to slight changes in θ.

Didn't get this one:

 We start with a fixed one-parameter statistical model where we use the MLE as our estimate, and consider the case where the number of samples n gets large. For each potential estimate θ, we construct using the asymptotic MLE variance the 95% confidence interval X(θ) centered at θ. Then, we consider the area over the interval X(θ) under the curve based on the Jeffreys prior. This area is is the same regardless of θ.

 We work in the asymptotic view, where n→∞. Regardless of n, the Jeffreys prior is fixed, so as the interval X(θ) gets small (which always happens as n→∞ by asymptotic normality we can assume that the weight of Jeffreys prior over the interval is constant at I(θ)−−−−√

The width of the interval is approximately 2⋅1.96I(θ)−1n−−−−−√ as the MLE has asymptotic variance I(θ)−1. Hence, the area under the interval based on Jeffreys prior pdf is (I(θ)−−−−√)(3.92I(θ)−1n−−−−−√)=3.92n√, which is the same regardless of θ.

### 18.07. Jeffreys Prior II: Examples

normal(mu,1):

So I of theta is actually equal to 1 in this case,
and therefore Jeffreys' prior in this case
is just proportional to 1.
This is the same as the one we had before.
In the Gaussian case, there's no point
that's harder to estimate than any other, right?
This is completely a translation invariant problem.
Nothing is harder than any other point.
And the reason why things can change
is because the variance might depend on your parameter,
but if nothing depends on your parameter,
then it doesn't matter where the mean is.
And so in this case we have this prior.
How did we call such priors?
Improper priors.


### 18.08. Jeffreys Prior III: Reparametrization Invariance
Suppose that we have the Jeffreys prior for a statistical model using parameter θ, and we want to convert to parameter η=ϕ(θ), where ϕ is an invertible function. Then we could simply substitute every occurrence of θ in the prior pdf with ϕ−1(η) instead, multiply by a factor of $\frac{d \theta }{d \eta } = \frac{1}{\phi '(\theta )}$,  and this would give us Jeffreys prior with parameter η.

### 18.09. Bayesian Statistics for Inference

So when we did a confidence interval
we had to compute a probability equal to alpha,
and this probability was for the random variables
that we had before we put the numbers in there.
And it was important because the random variable was really
capturing this idea that we're going
to redo this experiment again and again.
That's the randomness that we had.
Every time we had new realizations
of those random variables, we'd have a new confidence interval.
Now here I'm conditioning on those random variable.
They're numbers.
So you still talk about the probability of something,
but you have just numbers in your hand.
There's no random variables in the data.
So this entire randomness comes from the posterior,
and it's only what's filtered through the prior distribution.
So if your prior distribution had no randomness,
then your posterior would have no randomness,
and this probability would be 0 or 1.

### 18.10. Bayesian Statistics for Estimation
