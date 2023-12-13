## Lecture 09: Introduction to Maximum Likelihood Estimation

### 09.01. Objectives

Maximum Likelihood Estimation

At the end of this lecture, you will be able to do the following:

- Compute the likelihood of a continuous distribution .
- Interpret the maximum likelihood estimator as the objective value of an optimization problem.
- Define and compute the maximum likelihood estimator of an unknown parameter.
- Maximize a strictly concave function in one, two, or more dimensions.

### 09.02. Review and Likelihood of a Gaussian Distribution

Last time we introduced a likelihood,
and the way we motivated it was by saying, OK,
we're looking for a distance between probability
distributions that we can estimate,
and we tried with the total variation, which is perhaps
the most natural distance between probability
distributions.
We didn't come up with a nice estimator,
and so we moved on to the KL divergence, which
has some of the nice properties, for example, in particular,
it's equal to zero if and only if the two distributions are
the same, and that was the key.
But we can actually estimate it using our basic [INAUDIBLE],,
which consists in replacing expectation by averages.
And we showed that essentially minimizing
this estimate of the KL turned out
to be exactly the same thing as maximizing
this so-called likelihood function, which
is a function of my observation and theta.
And here I wrote it as saying you take your data
and you take your parameter, and it gives you
the joint probability of your random variables
being equal to your observations under p theta.

I just
put a semicolon here so that we know
when I end the observations and when I start the parameter.
It might be there's several parameters.

the likelihood
of the model, when you actually have
continuous random variables-- now you
don't have a pmf anymore, and so I write it
as essentially the same thing when
I replaced my pmf by a pdf.

So of course, the next thing that we're going to do,
is just like for the discrete ones,
we're going to compute it on some examples.

even the likelihood of a discrete statistical model can be continuous as function of the parameter.


### 09.03. Likelihood of an Exponential Distribution

And when you have product of indicators,
it's always a good idea to try to think of how to turn it
into just one single indicator.
And usually it involves the min or the max.
It depends on whether this thing is positive, or negative,

it does not
matter if this indicator does not depend on the parameter.
Whether I put it or not, it's not going to matter.
If this was lambda, I would certainly want to keep it.
If this is not lambda, I really don't
care because think about it.
Why do I not care?
The reason I don't care is because those are actually not
random variables.
Those are actually my observations.
Agreed?
And in this class, we're only talking
about well-specified models.
So if I'm only talking about, well-specified models,
I know that those random verbals actually
come from an exponential distribution
with parameter lambda, which means
that they're all positive.
They have to, because that's what well-specified is.
Being well-specified means they come from an exponential.
And for an exponential, they have to be positive numbers.
So no matter what those numbers are,
since they're realizations of an exponential,
no matter what lambda is, they're
going to have to be positive.
So it won't matter.
Now again, if this indicator was depending
on the unknown parameter, I would certainly
keep track of this.
Because I don't know what the parameter is.
And so if I said, oh, those guys are all
larger than, say, lambda, what lambda should I put there?
I don't know.
I don't know what lambda is.
So we're going to have to keep track of this.

If you observe a x that is smaller than zero, it means that the random variable was not produced by an exponential distribution (since the probability of a negative number is zero, as you said). This means that your model is not well specified if you use an exponential distribution. The Professor said that here we are only considering well specified models. Of course, if you use an indicator and observer a negative number the likelihood is zero, so you can't get a less likely result. However, this also means that no matter what you do with your parameter λ the likelihood will always be zero, so there is no point in trying to optimize its value. So, you better look for a different model.


### 09.04. Likelihood of a Uniform Distribution

For the pdfs we need to specify also a indicator term to consider only the right range where the pdf is non zero, and when we computer the likelihood we need to take the product also of this indicator.

the question is, why don't you add the other one again? [the indicator of min x > 0 in the likelihood formula]
Because if my data comes from a uniform, no matter what b is,
this thing will automatically be satisfied.
For uniforms, if I put in my observed data,
they're all going to be positive.
If you tell me my model is uniform on 0, b, estimate the b
and then you provide to me the data.
And there's minus 25 in there.
I'm going to be like, OK, there's
an issue with your data set, or there's
an issue with your model.
Certainly, it's not well specified.
OK?
And so all the observations we're going to see
are positive.
So this indicator-- so as a rule--
is that this does not depend on the unknown parameter,
so we can just remove it.


### 09.05. Maximum Likelihood Estimator


To find if a function of f(x) is maximum (minimum) at the same point as f(x) reach it's maximum, and this maximum is equal to k, the important is not to look if the function of f(x) is monotone or not, but if it is increasing (decreasing) specifically at f(x) = k

we said that minimum estimated kl
the same as maximizing likelihood.
So now I'm just left with a question, which
is how do I maximize those functions as functions
of b lambda mu sigma squared lambda p.

So the maximum likelihood estimator,
it's one of those nice estimators that does not
carry anybody's name, and therefore it actually tells you
what it is.
It's the estimator that maximizes the likelihood.
It was introduced by Fisher in the early 20th century.
And this has been probably the most influential contribution
to statistics.

"Maximum likelihood estimator"
But I will write it as MLE.
And sometimes I will even just say MLE.

And so this maximum likelihood is simply
the theta that maximizes L, and that's
what it means by ARG max.
Everybody knows what ARG maximum is?
It's just the theta that maximizes the likelihood.

there could be several theta star that actually do this,
and the ARG max would be the set of all those thetas,

if I have a function that I'm maximizing
or if I maximize an increasing function of this function,
it's the same thing, at least in terms of the ARG max, right?

And it turns out that if this function is positive,
I can actually take it slog, which
is an increasing function over the positive numbers.
And so maximizing L is the same thing as maximizing log L.

The x that maximise a positive function f(x) is (are) the same of those that maximise log(f(x)), as, for any f(x) > 0, log (f(x)) is increasing.

The reason why we take the log is because--
I don't know if you've noticed, but there's a lot of powers
there, and there's a lot of exponentials there.
And it's going to make our life much easier
by just taking the powers down and removing the exponentials,
and that's it.
That's the only reason why you're maximizing the log
likelihood-- oh, and also because, remember the KL
divergence?
That was actually minimizing negative log likelihood
when we estimated.
There was this log that we removed.
When we started from minimizing estimated KL divergence,
we went to maximizing log likelihood,
and then we removed the log.
And we said, oh, that's actually maximizing likelihood.
And so actually this log is very useful in practice.
And so, well, most of the time we'll talk about it.
So the maximum likelihood estimator
is the same thing as the maximum log likelihood estimator,
but we never talk about the maximum log likelihood
estimator.
Well, probably because maximum likelihood estimator
is already a mouthful.

So how do we maximize functions?

So this is very important that you actually
can make this switch.
You write, you think in terms of PDFs and PMF
as function of your data.
And once you've actually written this, you just make the switch,
and you think of it as a function of B or the parameter

So then we have to do this maximum likelihood,
and I have to tell you how to maximize this
as a function of those parameters.

Remark: Under some technical conditions the MLE is a weakly consistent estimator for θ∗, meaning that the MLE will converge to θ∗ in probability under these conditions. However, there are examples of statistical models where the maximum likelihood estimator will not converge to the true parameter.


### 09.06. Interlude: Minimizing and Maximizing Functions

So the first thing is, in this class,
we talk a lot about maximization because we
have the maximum likelihood estimator.
Now, maximizing or minimizing a function
is actually referred often to as optimization.
It's an actual entire field.
And actually, it's been really revived by machine learning,
and if you go to NIPS, which is the huge machine learning
conference that sold out in five minutes, which I'm guessing
you're not going, like me, and so this conference,
for example, a lot--
so there's a lot of deep learning going on.
But most of the theoretical contributions
are new optimization algorithms.
And the reasons why there's new optimization algorithms
is precisely this--
because they're trying to maximize likelihood
over some parameters.
And we'll see that sometimes they
don't want to deal directly with the likelihood,
and that's what we talk about in estimation.
But really, the idea is to maximize over parameters.
And that's precisely why you need
extremely large-scale optimization problems that
actually are able to maximize, not over parameters that
live on the real line or the positive real line
like we were talking about, but parameters that live in,
like, you know 20,000 dimensional spaces.
And that takes a while.
That takes algorithm.
And so optimization is a whole field
that's concerned with maximizing or minimizing functions.
And as I said, we're maximizing function.
If you open any book on optimization, which is not
really to maybe economics, for example-- so in economics
you're trying to maximize utility functions.
But most of the books that you will find
are concerned with minimizing.
And you need to be aware that this is exactly
that same problem.
Maximizing the function is minimizing
negative dysfunction.
Again, when it's coming to finding
the ARG max or the argument.
So this is minimization, and it's
the same thing as maximization.

And so this function looks like this,
and these are precisely my observations.
The points where it touches the x-axis
are exactly my observations.
So maybe this is x1, this is x2, x3, et cetera.
OK?
Now, this function is actually very painful to minimize,
and the reason is because we only know
how to minimize stuff locally.
I can only tell you, well, this is a minimum.
A sufficient condition for it to be a minimum
is we'll talk about its derivative being equal to 0.
But of course, derivative here is equal to 0,
here is equal to 0, here is equal to 0,
here, and even here, here, here, and here.
So those local conditions are not going to help me.
So what people do is they come up with algorithms.
But algorithms are also local.

And so those functions can be very hard to minimize.
And so we're going to have to make
some structural assumptions on what
they look like, not any crazy function,
because I could make your life very hard
to minimize or maximize.
And so we're going to focus on convex functions
when we're talking about minimization or concave
function when we're talking about maximization.

And so we're going to focus on convex functions
when we're talking about minimization or concave
function when we're talking about maximization.

So everybody has an idea what convexity or concavity is.
There's a formal definition for a function.
So we'll take the analytic definition,
there's also a so-called synthetic definition,
which is the one that we used when we talked
about Jensen's inequality.

convex function:
- synthetic definition: the function is below its chord.
- analytic definition: second derivative positive (everywhere)

concave function:
- synthetic definition: the function is above its chord.
- analytic definition: second derivative negative (everywhere)

So if you look again at a book on optimization,
the first thing that they will want to do
is to minimize convex function.
Here, we're going to talk about maximizing concave function.

We say that it's strictly concave
if this inequality is strict.

### 09.07. Worked examples: Concavity in 1 dimension

So if I want to actually check it,
I have to take its second derivative

Straith line: both concave and convex (but neither in strict terms)

And that's what's going to happen to any affine function.
OK, affine is basically a line that doesn't
have to be crossing 0 at 0.

What is its maximum over the real line?
Yeah, it goes to infinity, right?
It's a line.
So when you take the maximum, it's
just going to go to infinity.
And that's something we're also going to have to keep track of.
It might be that the maximum likelihood just does not
exist, because the argmax is just going to infinity,
and there's just nothing.
And we won't talk about those cases.
But there's papers that are still published today
that say, oh, the maximum likelihood actually exists
for this model.

Remark: It is very important to remember to test the endpoints when doing optimization.

### 09.08. Review: Gradients and Hessians; Concavity in Higher dimensions

there is a notion of derivative,
but we actually call it a gradient.
So the gradient of the function is just
a function that gives you the derivatives per coordinate.

the Hessian is basically the equivalent
of a second derivative.

So if you think of your function now, so this is the plane,
and I have my function, think of a surface on this function.
And if I want to say that this function is actually concave,
I really want to have my whole function look like a dome,
right?
But if I only say that I want those entries to be negative,
I'm really saying something along the axis that
looks like a dome, but the rest can be weird.

And so if I want this matrix to be as a whole negative,
there's actually a notion, which is this.
I say that for any vector that I hit this matrix with--
So one way to collapse a matrix into one number
is to take x transpose on the left an x on the right.
That's clearly going to be just one number.
I'm just collapsing all the rows and all the columns
into one number.
And I want this thing to be negative no matter what x I
take.

f you've never seen what eigenvalues are,
you had to wait for a stats class
to learn what this is, of course,
and we'll talk about it towards the end of the semester.

h is concave when $x^T H x \leq 0$ for whatever vector of x_i I consider.
- the Hessian is hence said to be "negative semidefinite" and one way to chack it is that al lthe eigenvalues of the matrix are non-positive
- if the Hessian happens to be a diagonal matrix, it is enough that all the elements are nonpositive

When I have a diagonal matrix, I only
see the x's showing up as squares.
So this whole product is actually minus 2 x1 squared,
minus 4 x2 squared.
Now, no matter what x1 and x2 are,
since I'm taking only negative coefficients here,
this thing has to be negative.
Actually, this one is even strictly negative--
actually, sorry, here this is not true,
because of course, I could always take x is equal to 0,
and this will always be equal to 0.
So here, I have to add the extra constraint that I
want x to be not equal to 0.


### 09.09. Worked Example: Concavity and Composition of Functions

If all the entries are the same, then basically,
this also works.

There is a much simpler way to actually see this actually
if you have a linear function composed with an increasing
and concave function, then you end up
with something, which is increasing and concave.

Remark: In general, any function c1f1+c2f2 where c1,c2>0 is convex of f1,f2 are.

### 09.10. Concavity in higher dimensions and Eigenvalues

### 09.11. Strictly Concave Functions and Unique Maximizer

What happens with convex and concave function
is that their minimum and maximum is achieved exactly
at one place.
And this place is where the derivative
is equal to 0, where the function just changes
its monotonicity, right?

And that's what convex and concave function tell you.
They're telling you a lot.
They're actually telling you that if you're
looking at the derivative here, and it's
negative for a convex function, then
you know that the minimum is actually
to the right of this point.
You should look at the derivative of this point here,
and the derivative is positive, then the minimum
is to the left of this point.
This is what guides all optimization algorithms.

But just here, it says, oh, positive sign,
I need to move in that direction.
Negative sign, I need to move in that direction.
More generally, you can do that with a gradient.
That's what gradient descent is actually doing.

Essentially, I have a friend who describes convex functions
as functions where local information translates
into global information.
Now again, in the multi-variate case,
I don't have a derivative.
So what I want is to check if the gradient is equal to 0.
And here, I put 0 in our d because I
want to check if this gradient is equal to 0 as a vector.
So I want to check if all of its coordinates
are actually equal to 0.
So that's a set system of d equations.
And that's useful when you have data that
has d different coordinates.
You have a system of d equations.
You're trying to solve for d variables.
So that sounds like you're probably in better shape
than if you had only one coordinate
once it's one equation.

Can somebody throw in some names of algorithms for optimization?
- Gradient descent. Recent, after 2012
- Interview point methods. That's a big algorithm that was developed throughout the 80s and 90s.
- Ellipsoid method
- The Simplex method. Is just for a very specific class, which is for functions that are linear with linear constraints, which are both convex and concave.

What we're going to do is we're actually
going to focus mostly on exercises that when I actually
take the derivative and set it equal to 0,
I get one unique point that I can actually find.

And that's what I mean by closed form.
You can actually solve this equation in theta
in most of the cases.

### 09.12. Examples of Maximum Likelihood Estimators

Remark 1: This problem illustrates the conceptually nice fact that the maximum likelihood estimator for a Bernoulli statistical model is the sample mean

Remark 2: Note that for this problem, we derived the maximum likelihood estimator by optimizing lnLn treating x1,…,xn as abstract variables. At the end, we plugged in our random samples X1,…,Xn. In practice, we would have access to observations X1=x1,…,Xn=xn, and we can simply plug in x1,…,xn for the values of X1,…,Xn in the expression for the MLE to get our estimate of the true parameter.

Remark 3: Alternatively, to get the estimate for p∗, we can first plug in the observations X1=x1,…,Xn=xn and then optimize the log-likelihood lnLn(x1,…,xn,p) as a function of p. You will get the same answer either way.


If a dxd Hessian matrix has at least a positive entry in the diagonal, the function can't be concave.

For example H = [[1,?],[?,?]] with x = [1,0], $x^T H x = 1$.
We found a case of X for which it is not negative definite (it doesn't mean it is positive definite either).

And, in general, any vector that looks like this--
only just 1 at some place and 0 at another place,
when you do this, x transpose the matrix x,
just extract the particular diagonal element
where the 1 actually is.

- The diagonal of the hessian has at least a positive entry: it is not negative-definite, function is not concave (everywhere)
- The diagonal of the hessian has at least a negative entry: it is not positive-definite, function is not convex (everywhere)

first
of all, if you give me a function,
I can check whether it's concave.
If it's concave, I know that to find its maximum,
I just have to set its derivative equal to 0
and solve.

So I claim that this will be the case
for the Bernoulli, the Poisson, and the Gaussian [likelihood] model.
For example, it's actually the case
for pretty much all of them.


### 09.13. Examples of Maximum Likelihood Estimators: Poisson Model

Remark: We also see for the Poisson model the conceptually nice fact that the maximum likelihood estimator is the sample mean.

So when you have multiplicative terms that
do not depend on lambda [in the pdf] and usually
those multiplicative terms come from the fact
that you need somehow to normalize
your distribution, et cetera.
Those things don't matter.
Because when I take the log, it's
going to be plus log of something that
looks like a constant from the perspective of lambda.
So that's it.

OK, so let's stop working, and the MLE is always x bar.
No, I'm kidding.
Sometimes it won't be, but in this instance,
which I take it upon myself to do,
the MLE is actually equal to xn bar, OK.


### 09.14. Maximum Likelihood Estimator of Gaussian Statistical Model

Next time, we'll see some of the statistical properties
of the maximum likelihood, consistency
and asymptotic normality.
But one thing we're going to have to think about
is, what does it mean to talk about the asymptotic normality
of the maximum likelihood when the maximum likelihood
estimator is actually two things?
We know the maximum--
the asymptotic normality of one random variable,
but what is the asymptotic normality of a random vector?
And we're going to have to talk about covariance matrices
and multivariate Gaussian distribution.

Anybody knows what Sn hat is?
So that's the empirical variance.
So Sn hat is just 1/n summed from i equal 1 to n of Xi.
And here, when I'm going to take the derivative with respect
to sigma squared, and mu hat is still
going to be in the picture, right?
When I think about this term here,
when I take the derivative with respect to sigma squared,
there's still going to be the sum of the Xi minus mu hat
that's going to be somewhere in there.
And so this is actually Xi minus mu hat squared.
But since I have a system of two equations,
I can actually plug in mu hat for what I just computed
it to be, which is Xn bar.

### Homework

Key point: When the indicator function in the likelihood includes only X (e.g. X within a given range) we can drop it as we can assume the mode lis well specified, and all the X we observe are already following the model. But when the indicator include our parameter (e.g. the x range is given in terms of the parameter) we have to consider it as a bound over the parameter, and we have to check both FOC and the value of the likelihood at the boundaries (slack conditions).
