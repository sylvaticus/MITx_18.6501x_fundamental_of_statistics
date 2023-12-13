## Lecture 08: Distance measures between distributions

### 08.01. Motivation

In the examples we've seen so far,
estimation was an easy task.
In the case example, we estimated the probability
with a proportion.
This is all very natural and justified
by the law of large numbers.
There are also systematic methods
to produce good estimators that are sometimes
better than the natural ones.
In this unit, we'll see a very powerful method called
maximum likelihood estimation.
It can be derived by estimating how far a candidate
distribution is from the one that generated the data.
In particular, focusing on the callback Kullback-Leibler divergence
between probability distributions
as a measure of proximity, we'll see
how to derive the maximum likelihood estimator.
Since it's a maximum, we'll need to understand
how to maximize a function.
And we'll review some important notions of analysis
and calculus, such as convex and concave functions,
gradients, and hessians.
What's particularly interesting about the maximum likelihood
estimator is that we can study statistical properties,
including confidence intervals without knowing its exact form.
Often this is the best possible estimator, and in that sense,
it's the most important method of estimation in statistics.
While it is often the best method,
maximum likelihood estimation can
suffer from limitations, such as computational intractability
or lack of robustness to partially corrupted data.
We will see other popular methods,
such as the method of moments, and the more
general M-estimation, and compare them with maximum likelihood
estimation.
At the end of this unit, you will
be able to compute estimates for sophisticated statistical
models where there may be no obvious natural estimator,
and understand their statistical properties in a unified way.


### 08.02. Objective

Total Variation Distance, Kullback-Leibler (KL) divergence, and the Maximum Likelihood Principle

At the end of this lecture, you will be able to do the following:

- Describe properties of the total variation distance and Kullback-Leibler (KL) divergence .
- Compute the total variation distance and KL divergence between two distributions.
- Derive the maximum likelihood principle using the KL divergence.
- Define and compute the likelihood of a discrete distribution.

### 08.03. Unit Overview

All right, so welcome back.
So we're moving on to our next unit,
where we're going to be talking about methods for estimations--
essentially, how to build estimators.
Are there principled ways of building estimators?
All right, so essentially, this is how we're going to proceed.
When I actually gave you an estimator,
I actually gave you two estimators
that we're not completely trivial.
The first one was for the kiss example, for example.
And I said, I'm interested in expected some proportion,
some expected value.
So let's just take some average of indicators.
And the law of large number told us
that it was pretty much a good idea to do this, right?
Another one that we used was the one where
we were doing the T example.
And the expected value was not quite the parameter
we were looking for, but it was 1 over the parameter.
And we just got around by taking one
over the average as an estimator.
And then we used the delta method,
remember, to estimate the asymptotics.
So right now, we basically have one method,
which is, well, compute the expectation
of your random variable.
And if you see the parameter there,
just, you know, solve for the parameter.
Turns out that this method is actually
something that is a principal method,
and it's called the method of moments.
That's the point two that you see here.
And it's fairly generic.
It's fairly easy, and that's one of the simplest
ones you can do because computing and expectation is
actually not too hard.
And that's fine as long as you have just one parameter.
When you start to have more parameters, when theta lives
in our d for d, which is at least two,
it becomes a different story, right?
If I want to estimate the mean mu and variance sigma
square of a Gaussian and I say, well,
compute the expectation of your Gaussians, you'll see mu,
but you won't see sigma square.
So you need to go to the variance.
Now again, this is actually an easy case.
And the method of moment is basically giving you
a principled way to do this.
But this estimator-- the, for example,
xn bar that we used for the kiss example--
is actually coming from the method of moments.
But it turns out there's a much more powerful method called
the maximum likelihood method that
gives you the same estimator.
And the maximum likelihood estimator
is something which sometimes gets non-trivial estimators--
not the ones that you would, you know,
just get by computing expectations or variances
and then finding your parameter there.
It's something which is very principled.
It's generic.
But what's more important is that it
has really nice properties.
We will be able, in this unit, to make statements,
make theorems, state theorems.
So I'm not going to prove them to you
but basically maybe show you an idea
of why this is true that says no matter what your problem is,
what your statistical model is, as long as it has
some nice regular properties, then
the maximum likelihood estimator will enjoy
some asymptotic properties.
For example, we'll be able to prove
some asymptotic normality.
And the variance that you will have there will actually
essentially be the best possible asymptotic
variance you can get among any estimator you can come up with.
So that means, in a way, that there
is some notion of optimality associated
to the maximum likelihood estimator,
and it's going to be very desirable.
So if you can compute it, and we'll see that it's not trivial
because it requires in particular computing
a maximum, which can be very complicated
and might require some external algorithms to do this for you.
It should be your go-to method when
you have a new problem at hand.
And finally, we'll essentially generalize maximum likelihood
estimation to what's called M estimators.
And it's a more flexible approach.
It's more general than the maximum likelihood,
and it's closer to the goals of machine learning, all right?
So the goals of machine learning are not so much
parameter estimation, confidence intervals,
and hypothesis testing.
They're really about prediction.
And in M estimators, we'll be able to put it
in the problem, put in the idea of what precise predictions
actually are, OK?
So this will be something that says I'm not
trying to maximize likelihood.
I'm essentially trying to maximize precision here.
And precision can be defined in some ad hoc way based on what
problem you have at hand.

We either had to estimate the expectation of the variable, or a parameter that could be related to the expectation, so we could use a function of the expectation to still have an estimator for the parameter of interest.
This is called the **method of moments**.
It becomes harder when there are more than one parameter to estimate.

It turns out there's a much more powerful method called
**the maximum likelihood method** that can gives you the same estimator, but sometimes gets non-trivial estimators, different than those you would get from the method of moments.
It is very generic and it has really nice properties (no proof here).
As long your statistical model has
some nice regular properties, then
the maximum likelihood estimator will enjoy
some asymptotic properties.

We'll be able to prove
some asymptotic normality.
And the variance that you will have there will actually
essentially be the best possible asymptotic
variance you can get among any estimator you can come up with.

So that means, in a way, that there
is some notion of optimality associated
to the maximum likelihood estimator,
and it's going to be very desirable.
So if you can compute it, and we'll see that it's not trivial
because it requires in particular computing
a maximum, which can be very complicated

**m-estimator** Generalisation of the maximum likelihood estimators, more flexible and more general, close to obj of machine learning. I'm not trying to maximize likelihood.
I'm essentially trying to maximize precision here.
And precision can be defined in some ad hoc way based on what
problem you have at hand.

Machine learning obj: NOT parameter estimation, confidence intervals, and hypothesis testing, but really prediction.


### 08.04. Introduction to Total Variation Distance

What is my goal when I'm actually
constructing an estimate or theta I have from the data?
Well, I want theta hat to give me a distribution, which
is close to theta star.

In particular, if my model is not an identifiable,
it doesn't really matter what I find in terms of theta hat.
I just want to have those two distributions to be close.
And the theta-- if the parameter is not identified,
those could actually be pretty different parameters.

What does it mean for two probability distributions
to be close?
Well, what I mean is that when I compute
the probability in particular event for the two distributions
that I have at hand, I want to get pretty
much the same result, right?

So this means that I want that when
I compute the probability of an event A under P theta,
and I compute the same probability
under P theta star of A--
so here, theta being my estimator, theta hat--
I want those two probabilities to be close,
meaning that I want their absolute difference to be
small.

The **total variation distance** ("TV") is the distance
between probability distributions, the worst distance, the worst difference in those probabilities that I can
incur over all possible events?

Then all I have to do is to check
what is the worst deviation when I compute events under P theta
and when I compute events under P theta prime.

So in particular, if this is equal to 0,
it means that the maximum is equal to 0.
It means those are all positive numbers.
It means that all those numbers are
equal to 0, which means that the evaluation of the probability
under P theta is the same as the evaluation of the probability
under P theta prime, which is saying
that those two are the same.

So this is very nice, but if I asked you,
well, compute the total variation distance between two
probability distributions, that could be a hard problem,
because you would have to maximize over
all subsets of your sample space.
And that's kind of a pain.
There's a lot of them.
And so it turns out there's actually
a very nice analytical formulation
for what the total variation, or just TV, distance is.
It's just different whether you have a PDF
or whether you have a PMF.

So let's start with the simple case,
where I have a discrete random variable, and we have PMFs.

Each f(i) > 0 and sum_i(f(i)) = 1:
And every time you give me a function
that's like that, it's going to correspond to a PMF.
It describes completely a probability distribution.

In particular, as I just told you, well,
if I have two probability distributions that
are the same, they should have the same PMF.
So I could actually measure the distance
between two random variables by the distance
between their PMFs, right?

And it turns out that you can rewrite the total variation
between P theta and P theta prime as just some notion
of distance between the PMFs.
So what is this notion of distance?
Well, there's a normalization factor when half year just
happens to be here, but this is just
the sum of the absolute differences
of the PMF under P theta and the PMF under P theta prime, OK?

if you actually end up computing it,
this is what's happening.

The third choice, "|θ∗−θ^|≤ϵ.", is incorrect. In general, even if distributions Pθ^ and Pθ∗ are close, there is no reason to expect the parameters θ∗ and θ^ to be close. To conclude that the estimated parameter is close to the true parameter given their distributions are close, we would need some assumptions on the map θ↦Pθ. No such assumption is given here.

### 08.05. Total Variation Distance for Discrete Random Variables

(actually a semi-proof of the theorem to compute TV for discrete r.v.)

And so, yeah, we'll just do a little bit of algebra to see--
I'm not going prove you this result, but I'm actually--
so remember the total variation between say p--
let's just write it p--
well, p theta and theta prime.
So what is this?
This is the maximum over all possible events of p theta
of a minus p theta prime of a.
Agree?
So now I'm going to show you that there exists
a such that p theta of a minus p theta prime of a absolute value
so is actually equal to that number.
So I'm only showing you one side.
I'm just telling you the maximum is at least that number
because I found one which was equal to that number.

Now you would have to work a little more to actually show
that this is the largest possible number it can take,
but we'll see where the 1/2 actually
shows up from this computation.

The proof is based on computing $P_\theta(A) - P_{\theta'}(A)$ for the event A defined as all the x for which $p_\theta(A) < p_{\theta'}(A)$, and then computing the same for the complement of A, so that we obtain that $\sum_{x \in E} |p_\theta(x) - p_{\theta'}(x)| = 2* |P_\theta(A) - P_{\theta'}(A)|$


So now if I give you two random variables,
you're going to be able to know what their PMFs is,
and you're going to have-- if I say compute
their total variation rather than having to maximize over
all possible a's some difference between probabilities,
you just have a very analytical way of doing it.
Just compute sums of differences.

Note that the distance between two distributions only depends on the distributions themselves and not their relation to each other (the joint distribution). This is why assuming X and Y are independent (or not) does not affect the total variation distance.

### 08.06. Total Variation Distance for Continuous Distributions

Compute the total variation distance between, I don't know,
a Gaussian and an exponential.

But how to compute the tv between a discrete and a continuous distribution ?

So that doesn't sound very subtle, but I could ask you,
what is the difference between 1 over square root of n binomial
and a Gaussian, right?
Central limit theorem tells me that one
converges to the other.
This thing should go to 0.

So we'll see that in examples.
But if you want to do this, there's
no slide within the analytical formulation
because you basically have to put your hands in it
and to actually compute this maximum over a, OK?

Recall the formula for total variation when both distributions are continuous:

$TV(P,Q)=\frac{1}{2} \int_{E} |f(x)−g(x)| dx$


The integral on the right hand side is precisely the (unsigned) area between the densities f
and g:


### 08.07. Properties of Total Variation Distance

operational property to say two distributions have
the same PMF or the same PDF.

A **distance**:  symmetric, non negative, definite and following triangle inequality

Total variance is a distance between probability destinations.

you can think of it basically the same way you
think about distance between points on the plane,
or distances between cities on a map.
It's satisfies this kind of thing,
except that it measures distance between probability
distributions, which are very--
it's a very big space.
Much bigger than R2.

### 08.08. Worked Examples

An example pair P,Q where TV(P,Q)=1: E={1,2},P(1)=1,Q(2)=1.

Remark:. In general, when the support of P does not intersect with the support Q, then TV(P,Q)=1.

Remark: Even though the two distributions have different sample spaces, we can take the union of the two as the sample space for both, and integrate over it.

### 08.09. Worked Examples on Total Varation Distance Continued

And that's the issue with the total variation.
It's a distance, that's fine.
And when things go well, it expresses what you want.
But when you have things that start
to have disjoint support, when you start measuring
the total variation between something which
is discrete and continuous, it captures nothing.
It really does not capture proximity.

And so the total variation distance is nice,
but it doesn't capture these, sometimes referred to as,
horizontal movements, right?
When I take my random variable and I move it a little bit,
the total variation stops paying attention the minute
the supports are disjoint.


When the supports are disjoint, as in comparing any continuous to any discrete rv, the TV is 1, doesn't matter if the support is largely or closely disjointed.


### 08.10. Motivation and Introduction to the Kullback-Leibler (KL) Divergence

And that's actually the principle
behind pretty much every statistical method
that we're going to talk about.
If you have a function that is minimized
at the parameter you're looking for,
try to estimate that function, and minimize the estimator
instead.

The problem here is that it's very unclear
how to build an estimator for the total variation.
And there's many reasons for that.
One of them is this thing, the fact that it becomes
trivial in many instances.
But it's just like at the end of the day,
how do you build an estimator?
Because now it seems that I've stepped back, and I say,
let's see methods for estimation.
But then I'm saying, oh, to build a method for estimation
you need to estimate something.
So for that, you need a method for estimation.
And so at some points I'd be like, how do I do this?
Because you take the maximum likelihood estimator
of the total variation.
And you're like, what does that mean?
I mean, I just don't know how to do estimation just yet.
Turns out that what you do is you
try to find a place where this naive method, that
consistent replacing the expectation
by the average, the thing that we did for the kiss example,
works.
That's your building block.
That's the thing that will work for you always.
The law of large number is a good guiding principle.
So if you can express this function that
is minimized at theta star as the expectation of something,
and you can replace the expectation by an average,
then you're golden.
Because now you have an estimator.
The law of large number tells you
that those fluctuations of the blue curve
around the black curve become smaller
as the sample size increases.
And you can, under some mathematical conditions,
those guys then become closer and closer.

We need something that says that replaces
the TV by another notion of distance between probability
measures, but that's the expectation of something,
so that I can just say, oh, let me just replace the expectation
by an average.

has some nice properties, one being that I can estimate it.
So the Kullback-Leibler divergence--
which I will call the KL divergence from now on--
between two probability distributions
is also defined differently, whether you're
talking about discrete distributions,
or continuous distributions.

Definition of Kullback-Leibler (KL) Divergence

Let P and Q be discrete probability distributions with pmfs p and q respectively. Let's also assume P and Q have a common sample space E. Then the KL divergence (also known as relative entropy ) between P and Q is defined by

KL(P,Q)=∑x∈E p(x)ln(p(x)q(x)),


where the sum is only over the support of P.

Analogously, if P and Q are continuous probability distributions with pdfs p and q on a common sample space E, then

KL(P,Q)=∫x∈Ep(x)ln(p(x)q(x))dx,


where the integral is again only over the support of P.


Remark: Although KL divergence is not a distance on probability distributions (as we defined above), it does satisfy some of the axioms. For example,

    KL(P,Q)≥0 (nonnegative), and

    KL(P,Q)=0 only if P and Q are the same distribution (definite).



What happens when p(x) != 0 but q(x) = 0?

question posted a day ago by lokeshhh

Q1. Wouldn't the KL Divergence go to infinity if we have x such that P(x)≠0 but Q(x)=0?

Yes, KL Divergence would go to infinity if P(x)≠0 but Q(x)=0. In essence, KL(P,Q) is a measure of how much information is lost when Q is used to approximate P. Thus P(x)≠0 and Q(x)=0 means under P an event is possible but under Q it is impossible and hence the two distributions are totally different. From what I understand, KL divergence is only defined if P(x)=0 is implied by Q(x)=0.


### 08.11. Properties of the Kullback-Leibler (KL) Divergence

So now It's not even clear that this thing is actually
just like, you know, when I tell you, oh take
the absolute value of the difference,
clearly when those things become closed,
the absolute value of the difference becomes smaller.
It's not even clear that this is happening here.
But it actually is.
So there's a lot of properties for this.
And there's a lot of lack of properties that are coming u

This thing is completely asymmetric.
So it's not the case that this thing is symmetric.

And actually, there are attempts at making it symmetric,
There's something called the Shannon Jensen
divergence, which is popular in deep neural nets these days.
It's making it symmetric but much more.

OK, so it's definite.
So let's just put a big check here
because this is really nice.
That's what we want.

And it does not satisfy the triangle inequality in general.
But did we use that for the TV?
No, we did not.
The only thing that we needed for estimation strategy was
that it was definite-- that the only place the black curve
would touch the x-axis was at theta star.
And that's what we needed.
So this is not a distance, but it is a divergence,
which has other properties.

And it's also the unique minimizer of the opposite one.
Even if it's not symmetric, it's still the unique minimizer.
Everybody agrees with this?
That's for identifiable models.
But again, in this class, everything's identifiable.

So the first thing that I'm going to use
is the fact that I have a log here, and the log of A over B
is the log of A minus the log of B

### 08.12. Estimating the Kullback-Leibler (KL) Divergence

So now I could do the same estimation strategy
that I had here, except that I would have here KL,
and I would need to find an estimator for the KL.
And that's precisely what maximum likelihood estimation
is doing.

So this is how it goes.
It started with this idea of KL divergence being a good notion
because if I can find something that makes it equal to 0,
I know I found the right distribution
and by identifiability I get the right parameter.

Why is this useful?
Well, because the expectation has this linearity property.
So when I have the expectation of a difference,
I can write it as the difference of the expectations.

That's just a trick to make my expectation appear.
Because remember, my one and only estimation strategy
right now is to replace expectations by averages.

Now, what's nice about having a constant here is that when
I minimize a function, or I minimize a function plus 25,
the value of the minimizer will change by whatever number
I add or remove, but the value where it's minimized
won't change.
So this guy [constant term] won't matter when I try to minimize.
I need to estimate this guy.

But now I have something which of the form expectation
of something.
I have data from this expectation, right?
I have data from p theta star.
I have my observations x1 to xn.
So I'm going to replace my expectation with an average,
and that's my one and only trick,
which is justified by the law of large number
as being something that asymptotically will make sense.

TV is not easy to estimate, so we found another thing - KL, which exhibits some important property. The main property is that it's definite, so it has one point where it has its min, which is equal zero. So if we found the point θ where it has its minimum, we are golden (here we also rely on the assumption that the model is identifiable, but this is the case for this course everywhere). In this sense KL is as good as TV.

In addition, it has another desirable property: it is easy to estimate KL, since we can represent KL as expectation and estimate this expectation by averaging observations.

So the black curve is KL represented by an expectation, and the blue curve is an estimator of the black curve; we get this estimator by replacing expectation with average of a sample.


### 08.13. Parameter Estimation via KL Divergence

So now I am just trying to minimize the KL.
Now, what those equivalence signs
means, what you need to pay attention
is that this equivalence is not an equality.

By making those two equivalent, it
means that the theta that minimizes this guy
will be the same as the theta that minimizes that guy.

And all I'm saying is that minimizing this guy
is the same as minimizing this guy without the constant.
Just because I'm just shifting up and down the curve,
and so wherever the argument was, it just won't move.
Just because I'm just shifting up and down the curve,
and so wherever the argmin was, it just won't move.

minimizing minus something is the same
as maximizing the something.

And then having this 1 over n here doesn't change anything.

maximizing log of something, since log is an increasing
function, is the same as maximizing the something.
There's no difference.

Anything that's just increasing, just
give me the same maximizer.
Not the same value of the maximum again,
but they're still equivalent problems.

And so if I remove my log, I'm left with this thing.
And what is this thing?
The product of the pmfs evaluated at the xis,
this is exactly what we call the likelihood.
And therefore, this problem--
this technique that started by minimizing
an estimator of the KL turned out
to maximize something by just doing a little of algebra.
And this something is called a likelihood.
And therefore, the term maximum likelihood principal.

We are not so much interested in the minimum value attained by the objective function KL(Pθ∗,Pθ), but rather the value of θ where the minimum is attained. We refer to such a θ as a **minimizer**.

Remark: The assumption that there is a unique minimizer holds if we are given that the parameter θ is identified. Here is why: since KL divergence is definite, KL(Pθ∗,Pθ)=0 if and only if Pθ∗ and Pθ are the same distribution. And if θ is identified, this implies that θ=θ∗.

Remark: Since we cannot even compute the function KL(Pθ∗,Pθ) for general θ, this implies that the optimization problem

$\min_{θ∈R} KL(P_{θ^∗},P_θ)$


cannot be solved exactly, regardless of the number of samples we have. So to estimate the minimizer of this optimization problem (which is the true parameter θ∗
) we will have to consider an approximation for KL(Pθ∗,Pθ).

### 08.14. Likelihood of a Discrete Distribution

the likelihood of the model-- so this
is the likelihood of a model, OK?
I give you a model and you have a likelihood.
And so it's actually a function, which
takes my n sample, and a candidate parameter,
and tells me how likely it is that this data was generated
by P sub theta.

That's what likelihood means.
This just says, let's look at the probability
that those numbers that I observe, x1 to xn,
were actually coming from P sub theta.
The bigger this number, the more likely it is.
I'm just computing the probability
to have seen the numbers that I actually observed
for different values of theta.
A simple way to think about this problem is--
I give you two candidate values for theta.
Theta is equal to 0 or theta is equal to 1.
Those are the two possible values you have.
You could try which one is the most likely to have generated
the data that you see.
if theta was equal to 0, let me compute the probability
when theta is equal to 0 that I see what I've seen.
And then you compute the probability
when theta is equal to 1 to see what I've seen.

Now I'm doing it for two values, but nothing prevents me
from doing it for a continuum of values.
For the entire interval 0, 1, and check which
one gives me the maximum probability
of occurring-- of giving me this data.

And now I look at my outcomes.
So those are n numbers OR n trials that are either 0 or 1.
And now I need to compute my likelihood
for all possible values of my parameter.

And the likelihood, by definition,
is the product of the probabilities that
my Bernoullis p give me xi's.
Agreed?
Is this what I wrote in the definition of the likelihood?
No.
I wrote the probability that x1 is equal to little x1
all the way to xn is equal to little xn.
I didn't write it as a product.
Why can't I write it as a product?
Because they're independent.
So the likelihood, in general, can
be defined for not necessarily independent random variables.
In this class, it will always be independent and therefore,
the likelihood will always take the form of a product.

what is the probability under P
that capital Xi is equal to little xi?
Right?
So remember, xi is equal to 0 or 1, so you could write it,
as well-- if little xi is equal to 0
then this probability is 1 minus p.
If little xi is equal to 1, then this probability is p.
Everybody agrees with this statement?
That's just the probability of a Bernoulli.
There's actually a compact way to write it.
And the compact way to write it is
to say that this is equal to p to the power xi, times 1
minus p to the power 1 minus xi.
Why is this true?
Well, remember-- xi takes only value 0, 1.
When xi is equal to 0, what do I get?
I get p to the 0, which is equal to 1, and 1 minus p
to the power of 1 minus 0, which is just 1 minus p.
So when xi is equal to 0, this expression is 1 minus p.
And when xi is equal to 1, this expression is p.
So that's just the tricky way of writing something
without a brace, like I did for the Bernoulli


So that's my likelihood.
Here it is.
It's a function of p.
Every time you give me data that's
going to determine what my exponents are,
and then I have a function of p--
of p that's a function.
And I'm going to try to do what with this function, too?
Maximize it.


Remark 2: Later on we will maximize Ln (as a function of θ) to define the maximum likelihood estimator . Hence, it is a crucial property that the likelihood is a function of the parameter.

[Which of the following are true about the likelihood Ln?] "It is the joint pmf of n iid samples from the distribution Pθ∗." is incorrect. The likelihood takes as input all possible θ, not just the true parameter θ∗. Note how the likelihood is defined for general θ, not just the true parameter θ∗.



### 08.15. Likelihood of a Poisson Statistical Model

So there's the likelihood for the continuous case,
which is just consisting of replacing PMFs by PDFs.

The likelihood is nothing more than the productivity of the pdfs for x = 1,n where n is the number of samples.

Remark 1: Observe that we can compute the likelihood sequentially as the data arrives, updating it in the previous fashion after each new observation.

Remark 2: Observe that the likelihood of observations X1=x1,…,Xn=xn is independent of the order in which these observations arrive.
