##  Lecture 15: Goodness of Fit Test for Discrete Distributions

### 15.01. Objectives

Goodness of Fit Test for Discrete Distributions

At the end of this lecture, you will be able to do the following:

- Understand the difference between parameter estimation, parametric hypothesis testing, and goodness of fit testing.
- Know when and how to apply a goodness of fit test for discrete distributions.
- Understand the categorical distribution , compute probabilities associated with it, and know how to compute likelihoods for a categorical distribution.
- Use the maximum likelihood estimator for the categorical distribution.


### 15.02. Introduction to Goodness of Fit Tests

 Choice 4 is attempting a likelihood ratio test using the log-likelihoods evaluated at the maximum likelihood estimator and under H0 and this choice is also technically incorrect because the MLE technical conditions are not satisfied for the uniform statistical model (recall the technical conditions for asymptotic normality of the MLE). Only if the MLE conditions are satsfied can this test be applied according to Wilk's theorem.

 So, non metric hypothesis testing is really,
a question that's not just within the realm of probability
attributions.
Am I here or am I there, right?
Within the realm of Galveston's, is my mean zero or his my
you mean non-zero?
Here, we're going to say, Am I a Gaussian with mean 0,
or am I something entirely different, right?

So, the null hypothesis would look like something parametric.
But the potential alternatives actually,
are going to be much more complicated.

So, that's a very difficult question
because there's many candidates that actually, are much more
likely to fit our data well.
So, we're going to have to be a little careful about how
we make those tests, OK?

Remember, it's actually a fallacious procedure
to look at this data, and then go on
to say, I want to test if Pisces is actually
getting more chances, right?
You could not first collect data, look at it,
and build your hypothesis testing
based on the data you've done.
Though, that's probably what people do behind
closed doors in many instances.
But this is not what you should be doing.
And the reason we should not be doing it
is because if people do it again and try to validate your data,
you going to be caught.
And you're going to look bad.
Probably going to get fired, OK?
So, don't do it.

And we want to know if this probability is 1/12
or if it's slightly higher for some test.
Then we could go back and look at our data.
And say, OK, maybe Pisces is the one that explains this.
But we want to test whether, you know,
the most natural hypothesis-- which is it's 1/12
for everyone--
is the correct one.

o, what I want to do is to divide this number by 275,
see what number I get.
Hopefully it's going to be a number which is close to 72%.
And then I'm going to all those numbers
by 275, get some numbers, and see
if, you know, overall, they're actually, close
to this vector of numbers.
Or if they're seeking significant differentiations
that cannot explain by just random sampling, OK?

Remark: In general, goodness of fit testing is considered a topic in non-parametric statistics, in contrast to the material we have covered so far. You should keep in mind though that the topic of parametric hypothesis testing is a special case of goodness of fit testing. However, to handle non-parametric models we will need to develop new techniques.

### 15.03. The Probability Simplex of Discrete Distributions

So I'm not getting--
so what's important is that I'm not
getting a space filling set.
And we'll come back to this in a second.
But there's a huge chunk of the space
that's gone because of this constraint
that they have to sum to 1.

The Probability Simplex in K

Dimensions :

The probability simplex in RK
, denoted by ΔK, is the set of all vectors p=[p1,…,pK]T

(note that we are using subscripts for vector indices for simplicity) such that
 	p⋅1=pT1=1,  pi≥0 for all K


where 1
denotes the vector 1=(11…1)T

. Equivalently, in more familiar notation,
 	ΔK={p=(p1,…,pK)∈[0,1]K:∑i=1Kpi=1}.


### 15.04. Goodness of Fit Test - Discrete Distributions

So the likelihood ratio test was boiled down to actually being Wald's test in one dimension.   

So we have 12 modalities.
And our data is just 256--
a sequence of 256 of those 12 modalities.
So it's like Scorpio, Virgo, Libra, Libra.
And then they're just like in this order,
and I have all those numbers.
Now clearly, for what we're trying to do,
we can compress this data into just the number of Pisces,
the number of Taurus, the number of Cancer, the number of--
we can just count the number of each.
Because there's no information if I just,
oh, CEO number one is Scorpio and CEO number two is Libra,
is the same as saying that CEO number one is Libra and CEO
number two is Scorpio, right?
Who is what does not matter for this problem.
Those are called **sufficient statistics**.

There's no difference between a discrete distribution
with a given PMF and a multinomial distribution
with a given set of parameters.
Those are the same thing.

### 15.05. Maximum Likelihood Estimator for the Categorical Distribution

Now technically when I take this derivative,
I should also check that the numbers
I'm going to get when I set the derivative equal to 0,
or non-negative, that this will actually be fine, right?
Because clearly, I'm trying to find the maximizer of this guy.
But as soon as I get one which is negative,
if anyone is negative, then the value of the log
is basically negative infinity.
Or anything that's trying to get close to 0
is going to be negative infinity.
So there's no chance that those Pj's
that are negative are going to actually
contribute to anything here.

So now, I want this to be equal to 0,
so now I have K minus 1 equations
with K minus 1 unknowns.
But I cannot solve each of them individually, right?


### 15.06. Preparation for the Chi-Squared Test
### 15.07. The Goodness of Fit Test for Discrete Distributions: Chi-Squared Test
### 15.08. The Chi-Squared Test - Main Ideas

So, 0 equals to 1 implies that this is the correct answer,
right?
I could do a bunch of steps before that.
But this is really, what happens, right?
So, you can start with something wrong and end up
with something right.
This should never shock you, OK?
So, this is always true-- that something wrong ends up
to anything you want--
right or wrong.

So, having this joint convergence--
of the p hat j's to the p-- is important, here,
because they sum to zero.
So, something is really happening
when you look at the joint convergence of all of them
together, rather than looking at individual convergences,


### 15.09. The Chi-Squared Test - Example Problems I
### 15.10. The Chi-Squared Test - A Few Thoughts

think about the t-test.
What do you do?
For [then apply Your t-test] is H0: I have Gaussian data.
H1 I don't.
Well, you want to hear that you have Gaussian data.
Otherwise, you don't know what to use.
And so those are those tests where people sort of
close their eyes and say, I don't
reject so I should be Gaussian.
But really, you don't reject because you don't have evidence
that you're not Gaussian, but it doesn't really
mean that you're Gaussian.

And so we'll see, for example, in the Kolmogorov-Smirnov
test--
those tests have very little power.
They very rarely reject.
It's very hard for them to disagree with the fact
that it's Gaussian, and so those are the kind of tests where
you don't want them to reject.

Just like Walt's test--
when I had a one dimensional parameter--
was the same as the test that we did with the Gaussian, right?
We had an absolute value that became a square.
And we had a critical value that became
the square of a critical value.
Then we're going to have the same thing
here, if k is equal to 2.
When k is equal to 2--
what is the multinational when we have k is equal to 2?
It's just the binomial, right?
It's just the Bernoulli experiment.
So, in this case, we already know a test for my binomial.

But we have the same limitation as for the Walls test.
This thing is tailored to two sided tests.
I can do a one sided test, but I'm
going to lose some power compared to the original thing.
If I want to test, for example, if p is larger than 0.3--
versus p is less than 0.3--
I'm stuck using those absolute values.
And therefore, I'm stuck having to use q alpha over 2,
rather than q alpha when I actually perform my test.
Just like for Walls test, same limitation.

OK, so, I'm going to stop here because next--
we're going to move on--
to continuous distributions.
Though, some of those tests also apply
to discrete distributions, but they really tailor.
And the idea basically is to say,
if I have a random variable, it's completely
characterized by its CDF--
its cumulative distribution function--
this cumulative distribution function, p is a possibility.
So, it's the expectation of some things, the expectation
of an indicator.
And therefore, I can use my statistical hammer.
I replace the expectation by an average,
and I get what's called the empirical CDF.
And this is an estimator I can always
write for any distribution.
Because there's always a CDF and I
can always replace my expectation with an average.



### 15.11. Chi-Squared Test for a Family of Discrete Distributions

Degrees of Freedom for χ2

Test for a Family of Distribution

More generally, to test if a distribution $\mathbf{P}$ is described by some member of a family of discrete distributions $\{ \mathbf{P}_{\theta } \} _{\theta \in \Theta \subset \mathbb {R}^ d}$ where $\Theta \subset \mathbb {R}^ d$ is d-dimensional, with support $\{ 0,1,2, \ldots , K\}$ and pmf $f_\theta$, i.e. to test the hypotheses:

-   $\displaystyle H_0: 	\displaystyle \mathbf{P}\in \{ \mathbf{P}_\theta \} _{\theta \in \Theta }$ 	 	 
-   $\displaystyle H_1: 	\displaystyle \mathbf{P}\notin \{ \mathbf{P}_\theta \} _{\theta \in \Theta }$, 	 	 

then if indeed $\mathbf{P}\in \{ \mathbf{P}_{\theta } \} _{\theta \in \Theta \subset \mathbb {R}^ d}$ (i.e., the null hypothesis $H_0$ holds), and if in addition some technical assumptions hold, then we have that

$T_ n:= n\sum _{j =0}^ K \frac{\left( \frac{N_ j}{n} - f_{\widehat{\theta }}(j) \right)^2}{ f_{\widehat{\theta }}(j) } \xrightarrow [n \to \infty ]{(d)} \chi ^2_{(K+1) - d - 1}$.


Note that K+1 is the support size of $\mathbf{P}_\theta$ (for all $\theta$.)

In our example testing for a binomial distribution, the parameter $\theta$ is one-dimensional, i.e. $d=1$. Therefore, under the null hypothesis $H_0$, it holds that

$T_ n \xrightarrow [n \to \infty ]{(d)} \chi ^2_{(K+1) - 1 - 1} = \chi ^2_{K-1}$.
