## Lecture 16: Goodness of Fit Tests Continued: Kolmogorov-Smirnov test, Kolmogorov-Lilliefors test, Quantile-Quantile Plots

### 16.01. Objectives

Goodness of Fit Tests Continued: Kolmogorov-Smirnov test, Kolmogorov-Lilliefors test, QQ-Plots

At the end of this lecture, you will be able to do the following:

- Compute the empirical cumulative distribution function for a given sample.
- Perform the Kolmogorov-Smirnov test to determine if a data set has a particular type of distribution.
- Perform the Kolmogorov-Lilliefors test to test if a sample has a Gaussian distribution.
- Construct and interpret the quantile-quantile (QQ) plot of a data set.
- Compare and contrast the Kolmogorov-Smirnov test, Kolmogorov-Lilliefors test, and the chi-squared goodness of fit test.


### 16.02. Review: Cumulative Distribution Functions

So that's a legitimate question that you may ask,
do I have standard Gaussians or do I not
have standard Gaussians?
And clearly, the chi squared test is not
going to work off the shelf for this, OK?
Because what is the number of modalities
that a continuous standard Gaussian can take?
It's a continuum infinite, so the number
of degrees of freedom is going to be a little too
large for you to find it, even if you remove one from it.
And so one thing that you could do is to bin your data, OK?
So if you didn't want to bother learning
about continuous random variables, what you could
do is to say, OK, maybe my Gaussian random variable is
continuous, but what I can do is round it, OK?

So I'm not really testing if I'm a Gaussian.
I'm just testing if I'm at a course level
close to a Gaussian, OK?

So I can use my chi squared to test this, OK?
So that's just an approximation of reality,
but I can actually always go back down to a discrete case
by rounding, and that's something that a lot of people
do.

Now, of course, there's many open--
there's many free parameters you can tune.
One is, how many bins should I take?
Should I take bins of the same size or not?
This will all depend on practice,
what sample size you have.
You want to take bins that are large enough that they have
enough observations in them.
But those are all rule of thumbs.
So we'd like to have a way to do this that's
systematic and also works for continuous random variables,

Now, of course, this is not exactly what you're testing,
right?
You're not testing if your data is standard Gaussian.
What you're testing is, is my data
likely to come from this histogram?
OK, from this pdf.
And this pdf is just the piecewise constant pdf
that's close to the Gaussian curve, but not exactly, OK?

### 16.03. The Empirical Cumulative Distribution Functions

[cdf]
So when you have a bounded support,
basically there's going to point to the left of which you're
going to be equal to 0, because the probability you're below
to the leftmost point of your support is 0.
And then there's a value after which is going to be always 1,
because the probability that you're
less than your rightmost point of your support
will be one always.
And that is never going to change.

Every time I take two t's that are in between two
observations, I get the same thing,
which means that my empirical CDF will actually
be piecewise constant, OK?

So this is for each t, you fix it,
we know that the law of large numbers
tells us that this Fn is converging to F,
and the central limit theorem tells us
that square root of n times Fn minus F
is converging to this thing for a fixed t.
pointwise again.
Can I get something that's uniform?
And the answer is yes.
So what plays the role--
so we have law of large numbers uniformly becomes
Glovenko-Cantelli.
Central limit theorem uniformly becomes what's
called Donsker's theorem.

No matter what you start averaging,
you end up with a Gaussian in the end.
Here, no matter what you average and take the soup over,
you end up with a Brownian bridge.
That's Donsker's theorem.

Dear Staff,

Hope all is well. In data analysis for social scientists, the way I recall the KS being described is that we reject the null if the max distance between two CDF's is above a certain threshold. It seems like the test statistic follows this idea by looking at the sup. To test families of distributions, it seems like we are relyingon the idea that CDF's within families of distributions are the same. Is that really true? Doesn't the CDF of N(0,1) and N(0,20000) look different because of the larger range of possible values, even though the shape is similar. I completely understand how this might be used to compare specific distributions. I guess I'm still not clear on how what we are doing could be applied to a family of distributions. How do we capture shape without scale? Is that what standardizing is accomplishing?

Hi @jtourkis, this is an excellent question! In the lecture, we have described a simple null hypothesis H0:F=F0; your question is how would we test H0:F∈{Fθ}θ∈Θ for some finite-dimensional parameter set θ∈Θ⊂Rd. This is a harder problem. But we can reason as follows: We can estimate the parameter θ0∈Θ that minimizes the KL divergence to the distribution of the data (MLE), and then test the simple null H0:F=Fθ0. Standardizing the data is doing this implicitly. The statistical question here is: how does the initial step of estimating θ or standardizing the data affect the asymptotic distribution of the KS test statistic? I don't know the answer of the top of my head, this is an interesting quesion!

### 16.04. Consistency of the Empirical CDF
### 16.05. Asymptotic Normality of the Empirical CDF
### 16.06. Goodness of Fit Test of Continuous Distributions: Kolmogorov-Smirnov Test
### 16.07. Kolmogorov-Smirnov Test: Computational Issues

There's two things that are coming.
The first one is what do we do if we don't have
enough observations, and second of all,
how do you compute this thing?
I mean, look at it.
I have to take the sup over R. That's
a big number to maximize over.

### 16.08. Kolmogorov-Smirnov Test Statistic Pivotal Under Null

So those things have known distributions,
and those guys are just i over n and i minus 1
over n, which you don't need any parameter to actually compute.
So this thing that I'm computing,
t, has a distribution that does not depend
on any unknown parameter again.
And it's not asymptotic.
It's true for any n.
Now of course, this whole thing will
change based on what n actually is,
but it's not a symptotic result.
I now have a pivotal statistic-- tn
is a pivotal statistic, which means that under the null,
its distribution does not depend on any unknown parameter,
or even any known.
It's just one of those universal distributions
that I could compute in the lab and crank the critical values
for, though I would have to compute critical values,
one row for each value of n.
Because this thing will change with n.
And I know that the very last row, n is equal to 25 billion,
will be the same row as if I was to compute the p
values of the supremum of the absolute value of a Brownian
bridge.

Remark 1: Note that Y=FX(X)∼Unif(0,1) regardless of the distribution of X as long as FX is invertible. In the case when FX is not invertible, modifications can be made to obtain similar result.
Remark 2: Inverting the result gives X∼F−1X(Y) where Y∼Unif(0,1). This is useful for simulating data from a given distribution with cdf FX. Start by sampling from Unif(0,1), and apply F−1X to the sample. The resulting sample will be from a distribution with cdf FX.

### 16.09. Quantiles of the Pivotal Distribution and P-values

so we know that tn has a distribution for a given n,
so let's say this is the PDF of t22, if I had 22 observations.
And let's say it has this crazy PDF.
I don't know what it is.
I know that as n goes to infinity,
this will be the same as the PDF of the supremum
of the absolute value of a Brownian bridge,
but for a given n, it could be something pretty crazy.
And what I'm doing is that I'm sampling many points
from this distribution.


### 16.010. Other Goodness of Fit Tests
### 16.11. Kolmogorov-Lilliefors Test I

Probably, the test you're going to want
to do when it comes to goodness of fit tests is not, is my data
n 0, 1?
The one you're going to want to do is, is my data Gaussian?
And the difference between those two statements
is that in the first one, I'm telling you
what the mean and the variance are, and in the second one,
I'm not.
And what you could do is just pretend that you're
estimating those guys and you would just test
which value you have, right?
You could say, oh, well let me estimate
the mean by xn bar and the variance by sigma hat squared
and just plug it in and say, can I
test if I have this particular distribution,
but this is not what we did.
Everywhere here, we assumed that F0
was completely deterministic, and now we're
making F0 depend on our estimated parameters.
And this can be very dangerous, OK?

### 16.12. Statisticians
### 16.13. Introduction to Quantile-Quantile (QQ) Plots

so this is typically not where you're doing a qqplot.
If you have 10,000 points, maybe you're
going to actually run Kolmogorov-Smirnov
or Kolmogorov [INAUDIBLE].


### 16.14. Quantile-Quantile (QQ) Plots of Normal distributions
### 16.15. Quantile-Quantile (QQ) Plots of Different distributions
### 16.16. Quantile-Quantile (QQ) Plots II
### 16.17. Quantile-Quantile (QQ) Plots II
