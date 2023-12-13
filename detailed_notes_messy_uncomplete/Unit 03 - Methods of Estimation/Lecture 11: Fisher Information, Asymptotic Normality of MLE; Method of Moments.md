## Lecture 11: Fisher Information, Asymptotic Normality of MLE; Method of Moments


### 11.01. Fisher Information, Asymptotic Normality of MLE, and the Method of Moments

Objectives

At the end of this lecture, you will be able to do the following:

- Compute the Fisher information of a statistical model.
- Compute the asymptotic variance of the maximum likelihood estimator.
- Use the method of moments to estimate parameters in a statistical model.
- Describe conditions under which the method of moments succeeds.
- Use the delta method to compute the asymptotic variance of the method of moments estimator.
- Compare and contrast the maximum likelihood estimator and the method of moments .

### 11.02. Review: Covariance Matrices and the Log-Likelihood Function

### 11.03. Fisher Information

So I take log of L, and I'm just going
to emphasize the fact that it's based only on one
observation of x and theta.

And I'm just going to remind you that really
what L1 of x and theta is, it's really just f theta
of x, right, where this is, say, the pdf or the pmf, right?
That's what the log likelihood is for just one observation.

one observation: the likelihood is just the pmf!

And now I'm going to call this function, say, L of theta.
I want to think of it as just a function of theta.
But we need to keep in mind that it's
going to be a random function of theta, right?
It depends on this random variable x.

$\int _{-\infty }^\infty \frac{\partial ^2 }{\partial \theta ^2} f_\theta (x) \,  dx = \frac{\partial ^2}{\partial \theta ^2} \int _{-\infty }^\infty f_\theta (x) \,  dx = \frac{\partial ^2}{\partial \theta ^2 } 1 = 0$

(same for the first derivative)

And we're going to use those two to actually check
that the variance of L prime is minus the expectation of L
prime prime.

### 11.04. Examples of Fisher Information Computation

if you have a question that's like compute the Fisher
information of--
you have two ways of doing it.
One is to compute first a second derivative
and then take its expectation and put a minus
sign in front of it.
The second one is to compute a first derivative
and compute the variance.
And that's really a matter of taste,

First is simpler

### 11.05. Fisher Information and the Asymptotic Normality of the ML Estimator

What we need the Fisher Information for ?

this Fisher information
matrix or Fisher information is actually
controlling a syntactic covariance
matrix of the maximum likelihood estimator.

what I'm really trying to mean
is with this theorem there's a broad set of conditions
for which the maximum likelihood, no matter what
model you're in-- as long as it satisfies some nice conditions
will have asymptotic normality just like an average has
an asymptotic normality using the central limit theorem.

So I have this function, I of theta.
This thing is a variance so it's going
to be either positive or equal to zero,
so I don't have to draw below this axis.

what are the two types of results
we're looking for?
What are the two main properties we're
looking for for an estimator?
Two asymptotic properties.
The first one is consistency, so I want theta hat
to convert to theta star.

But what's more important is that the maximum likelihood
minus theta star multiplied by square root of n--
whether this is an average or not
converges to some centered Gaussian.
So have asymptotic normality.
And the question is, what is the asymptotic covariance
matrix that I see here?
And if I'm in D dimensions, say, then
this will be the inverse of I of theta.
The inverse Fisher information.

So in a way, information, as I said, just from the semantics
of it, is that it's something that says, oh, I
have a lot of information.
The bigger the Fisher information
the smaller the asymptotic variance to have.

Why MLE converge to a gaussian ?

So this is basically the idea that we had,
and I want to try to use the fact that this guy is
close to that guy to translate to the fact
that this guy's close to that guy.
OK?
So I have closeness on the y-axis.
I want to translate it into closeness in the x-axis.
OK.

That's the first order Taylor expansion of the derivative,

So let me divide by 1 over square root of n, which
doesn't matter, because everything here
is still equal to 0, OK?
So by the central limit theorem, what
I have is that 1 over square root of n,
sum from i equal 1 to n of l i prime of theta
star minus expectation of l i prime of theta star converges
in distribution as n goes to infinity to some Gaussian
with mean 0 and variance-- well, just the variance of this guy,

But now, I know that by the law of large number,
this quantity converges as n goes
to infinity in probability to the expectation of l
prime prime of theta star, which is the expectation of l
prime prime of theta.
It's minus the Fisher information, right?

9:01 (second video):
So now I have these two things.
And so, this tells me that square root of n theta
hat minus theta star is approximately
distributed according to some n 0 i of theta star,
divided by this quantity squared,
which is i of theta star squared.
And now I have a cancellation that's happening,
and so I'm left with just 1 over i of theta, OK?

This is why you have 1 over the Fisher information.
There's this just magical cancellation
that's happening, because, precisely, the variance divided
by the variance is equal to the second derivative.
And so when you divide the variance
by the second derivative, you actually
get some very nice cancellation that's happening.
And this perfect cancellation is really
what makes the maximum likelihood
optimal, in some sense.
In many other cases, you will have to trade off.
Maybe you'll try to have a better variance term.
But the price to pay will be that this quantity
will be much bigger.
So when you see things that cancel,
it means that you've somehow usually reached
a nice balance of two terms.
So if you increase the variance, you're
going to decrease the second derivative.
But if you go--
I mean, it's basically in absolute value.
And in both cases, the things are
optimal when you actually get one that perfectly
aligns with the other one.


### 11.06. Asymptotic Normality of the ML Estimator - Example Problems
### 11.07. Introduction to Method of Moments

$\widehat{m}_ K(\theta ) = \displaystyle \frac{1}{n} \sum _{i = 1}^ n X_ i^ k \to \mathbb {E}[X^ k]$

By the weak law of large numbers

So let's move on to the method of moments, which in many ways
is simpler than the maximum likelihood.
And typically, you would see that first.
But I think the maximum likelihood is really--
what's beautiful about the maximum likelihood,
and something I didn't really mention,
is that, when you do maximum likelihood,
you're actually not relying too much on the fact
that your model is well specified.
If your model is mis-specified, the maximum likelihood
will still try to get a theta star which is as close as
possible to the right model.
Or it will find the theta star associated to the model that's
the closest to the truth in [INAUDIBLE] divergence,
essentially.
But if you start doing method of moments,
we'll see we're just solving equations that involve
expectation and variances.
And if this thing is mis-specified,
those equations could be completely off.

So then, if you can compute the maximum likelihood,
and there might be some numerical issues associated
to solving the optimization problem, that
consist in maximizing the log likelihood,
then if you can do it, do it always.
But in some cases, it's just complete pain,
and you have to find some alternatives to it.
And usually, the method of moment
is one that has some pretty nice computational properties.

So the population moments are just--
they're just expectations of something.
And the something they're the expectation
of is just the random variable to the power k.

So you're just taking a random variable,
and you compute it to the k.
OK?
So for k equals 1, this is your good old expected value.
For k equals 2, well, it's not quite the variance.
It's the variance plus the square
of the mean, for example, right?
And you can do it for k equals 3, 4, or 5, et cetera,
any integer k you want.
But you're going to stop at k is equal to d. (why??)

#### Moments

$n$-th "Moment" around a value $c$ in mathematics: $\mu_n = \int_{-\infty}^{+\infty} (x-c)^n f(x) dx$

When $f$ is a pdf:

- $c = 0$: "raw moments" or "expected values"
  - n = 0: 1 (the zeroth moment of any probability density function is 1)
  - n = 1: mean
  - The empirical moments are unbiased estimators of the equivalent population moment (from LLN): we can "just" replace the expectation with the average
- $c = E[X]$: "central moments"
  - n = 0: 1
  - n = 1: 0
  - n = 2: Variance
  - n = 3 (normalised by dividing it with $\sigma^3$): Skewness (measure of the lopsidedness of the distribution)
  - n = 4 (normalised by dividing it with $\sigma^4$): Kurtosis (a measure of the heaviness of the tail of the distribution)
  - Empirical central moments, by using the mean as $c$, use up a degree of freedom, and hence they must be corrected  by a factor of $\frac{n}{n-1}$ to be unbiased estimator of the equivalent population moment.

If the $n$-th moment about any point exists, so does the $(n − 1)$-th moment (and thus, all lower-order moments) about every point.

---end of moments block ---

Now, we don't know how to-- we don't
know those quantities, right?
They typically depend on a known parameters.
For example, if I look at an exponential distribution,
then the expectation is the parameter.
And I don't know it, and so I don't
know what this quantity is.
But the nice thing about this technique
is that, when the population moments are
easy to estimate, using our hammer, which
consists in replacing expectation by averages.

### 11.08. Moments Estimator

And basically, the function that I'm talking about,
M, is the one that takes mu theta and tells me,
well, it's mu and mu squared sigma squared.
OK, so that's my function M that takes a vector
and maps it into another vector of moments.
Now what I'm going to do is try to go back.
If you give me those moments, I want to be able to go back, OK?
Which just means solving this system of equations
in mu and sigma squared.

OK, so the way you do it is you assume that M is one to one,
so that meaning, I can actually solve it.
And I have a unique solution.

So now, of course, I don't have access to those numbers, M1
to MD, so I'm just going to plug-in the estimators that I
know.

And so I'm going to say, well, my estimator
from the method of moments is just applying this inverse map
to the empirical moments, M hat one,

Remark: The above expression is consistent with the procedure we followed in the previous problems that we used to construct the method of moments estimator for a Gaussian statistical model with unknown mean and variance. Namely, we expressed the true parameters in terms of the true moments, and then plugged in the sample means into that expression. Informally, since we expect the sample means to give a good approximation for the true moments, plugging in the sample moments into the expression for the true parameters (in terms of the moments) should also give a good approximation for the true parameters. This is the strategy of the method of moments, and in general, the strategy of replacing expectations with averages is a recurring theme in statistics and in this course.

### 11.09. Properties of the Generalized Method of Moments Estimator

So what are the properties?
Just the same way, we had for maximum likelihood
that this thing gave me a consistent estimator
with an asymptotic covariance matrix, which was
the inverse Fisher information.
Can I say something like that about this estimator?

And I'm going to need to talk about the covariance matrix
of the moments.
So I call it sigma theta.

Now, those random variables are clearly correlated.
If I give you x squared, you have a pretty good idea
of what x^4 is.

And now I'm going to need also to assume that I can actually
solve my problem, meaning that I can actually invert M 1.
And also I want to be able to talk
about the derivative of the inverse of M1,
and the reason is because I want to apply the multivariate delta
method for this.

I have a Central Limit Theorem for this.
What I really want is a Central Limit Theorem
for M inverse of this minus M inverse of that,
so I'm going to just apply the delta method with M inverse.

So before we get there, just one quick thing is--
this choice of x1 to the k, x1 to the 3, x1 to the 4--
is just ad hoc, and it just suits well with many
of the examples that we have.
If I were to do a Gaussian, for example, this equation
is pretty easy to solve.
But you could take whatever you want.
You could take any function you want, because the only thing
that we relied on was the fact that we had
the expectation of something, and that we could actually
write it-- replace the expectation by an average.
And so rather than taking the function
that maps x to x squared for the second moment,
I could take the function that maps x to cosine of 6 pi
x if I wanted.
And then look at this expectation
that would depend on theta, and then hopefully I
could invert this thing.
And estimate the expectation of cosine 6 pi x by 1
over n sum of cosine 6 pi x i.
And so, I can do this for generic functions g1
to gd, that are chosen by you.

How?

Well, I want functions that will give me
as much information as possible about theta
with a small number of functions.
I don't want to have to use 26 functions to estimate
a parameter of size 3.

When I apply my delta method, this
will have an impact on my asymptotic covariance matrix.
And once it has an impact on my asymptotic covariance matrix,
I want it to be as small as possible.

So now I have my new Mk is no longer the expectation of x,
it's the expectation of gk of x.
I define moments like that-- my generalized moments.

And so, basically you have one theorem that packs it all.
And I'm not going to go too much into details, because this
is basically a combination of the Central Limit
Theorem and the multivariate delta method that we saw.

let's call this guy sigma of theta.
Whatever covariance matrix you want.
If you're using the regular method of moments,
this is the covariance of this guy,
if you're using the generalized method of moments,
this is the covariance of g1 of x, g2 of x, gd of x.

And here, I basically need to just apply
my multivariate delta method.
And we know that this consists of applying
to the left, the derivative of M inverse--
to the gradient of M inverse, which is a d by k matrix.
In this case d by d.
And then post-multiplying it.

This is the derivative of the function M inverse,
this is also the derivative of the function M inverse.
You pre- and post-multiply.
If you were in dimension 1, you would just
have the square of this function that shows up.

So as you can see here, we may not
have the nice cancellation that arises
from the maximum likelihood estimator, right?
It's the same thing that sort of happened
for the maximum likelihood estimator, right?
We had the Fisher information here,
and 1 over the-- the inverse Fisher information here,
the inverse Fisher information there.
And they basically sort of all cancel,
and we ended up with only one inverse Fisher information
somewhere.
But here this is not very likely to happen.


### 11.10. Asymptotic Normality of the Method of Moments Estimator - Example
### 11.11. MLE versus Method of Moments

Well there's we have ways to actually compare estimators,
right?
So for example, we could look at the quadratic risk,
which is a combination of bias and variance.
And in general, the MLE is more accurate.
The MLE-- we know from the central limit theorem--
from the theorem for the MLE that I sort of
sketched the proof of here, that it's asymptotically unbiased.
So theta hat is going to theta star,
so in expectation those guys are going to be the same.
So it's only really a matter of variance,
and there's actually a lower bound called the Cramér-Rao
lower bound that states that for any unbiased estimator--
sorry, that no unbiased estimator
may have an asymptotic variance, or even a variance,
which is smaller than the inverse Fisher information.
No unbiased estimator, no matter how you cook it up.
If you give me an observation from my sample, none of them
can actually have a variance which
is smaller than 1 over the Fisher information.
So it's variance which is smaller
than the asymptotic variance of the maximum likelihood
estimator.



As stated in the slides, if we compare the quadratic risks of the method of moments estimator and the MLE, then the MLE has better performance in general. Hence "In general, the MLE provides a more accurate estimator than the method of moments estimator." is correct.

Since the MLE is not always computationally tractable, this is a disadvantage. Optimizing the likelihood function can be very inefficient if the likelihood function is complicated and has several local maxima which require testing. Hence "If the likelihood has several local maxima, then we may not be able to compute the MLE efficiently" is an incorrect response.

"The method of moments requires you to find d
so that the first d moments uniquely determine the distribution of interest. To compute the MLE, this step is not necessary." is correct. The expression of the moments map ψ in terms of the parameter θ can be quite complicated, so it may be difficult to deduce how many moments (or degrees of freedom) are needed to uniquely recover the true distribution from moments. It is not necessary to make assumptions on or work with the moments map to use the MLE, so this is another advantage.
