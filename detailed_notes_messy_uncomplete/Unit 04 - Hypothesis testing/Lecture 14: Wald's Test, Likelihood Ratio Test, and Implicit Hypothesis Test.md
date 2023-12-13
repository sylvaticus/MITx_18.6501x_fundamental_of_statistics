##  Lecture 14: Wald's Test, Likelihood Ratio Test, and Implicit Hypothesis Test

### 14.01. Objectives

Wald's Test, Likelihood Ratio Test, and Implicit Hypothesis Test

At the end of this lecture, you will be able to do the following:

- Derive Wald's test using the properties of multivariate Gaussians.
- Perform Wald's test for a family of hypothesis testing questions.
- Perform the likelihood ratio test for a family of hypothesis testing questions.
- Use an asymptotically normal estimator to test implicit hypotheses involving an unknown parameter.


### 14.02. Worked Example: Two-Sample T-test with Small Sample Sizes

So do we reject or do we fail to reject?
Fail to reject, right?
I mean, if we fail to reject with a Gaussian,
it's very likely we're going to fail to reject
with the student, right?
More conservative.

Assume

- $X_1,\dots ,X_ n\stackrel{iid}{\sim }\mathcal{N}(\mu _ X,\sigma _ X^2)$,
- $Y_1,\dots ,Y_ m\stackrel{iid}{\sim }\mathcal{N}(\mu _ Y,\sigma _ Y^2)$,
- $X_1,\dots ,X_ n,Y_1,\dots ,Y_ m$ are independent.

Then, for any $n$ and $m$, the distribution of the test statistic below is approximated by a t-distribution:

   $\displaystyle \displaystyle \frac{\overline{X}_ n-\overline{Y}_ m-(\mu _ X-\mu _ Y)}{\sqrt{\hat{\sigma _ X^2}/n+\hat{\sigma _ Y^2}/m}} 	\displaystyle \stackrel{\text {approx.}}{\sim } 	\displaystyle t_ N$ 	 	 

where the degrees of freedom, $N$, is given by the Welch-Satterthwaite formula :

   $\displaystyle \min (n,m)\, \leq \, {\color{blue}{ N\, =\, \frac{\big (\hat\sigma _ X^2/n + \hat\sigma _ Y^2/m\big )^2}{\frac{\hat\sigma _ X^4}{n^2(n-1)}+\frac{\hat\sigma _ Y^4}{m^2(m-1)}}}} \, \leq \, n+m$


### 14.03. Recap: Advantages and Limitations of T-test

the main drawback of student's test
that people tend to forget is that it's actually
relying on the assumption that the data is Gaussian.
So we'll see how to test this assumption.
And again, we're going to be able to test it
to a certain extend because we're
going to want to test it with very small sample sizes, right?
If I tell you my data is 10.2 and 3.6,
does this come from a Gaussian?
You know, maybe you will tell me maybe,
but you know, clearly you need a bunch of data
to start figuring out if your data is actually Gaussian.
So sample size is less than 10, you're
going to have to probably rely more
on your knowledge of the domain to see if Gaussian is actually
something that makes sense or not at all.


it doesn't really cost
you much to always use the same test rather than saying,
oh, my data is large enough, let me switch the test I'm using.
You always use t-test.
If it's small sample size, well, you're
going to have to rely on the fact that it's Gaussian.
If it's large sample size, you're
not really relying on anything.
It's the same, pretty much.

### 14.04. Interlude: Square Roots of Matrices

Interlude: Square root of a positive semi-definite matrix

Recall that a matrix A
of size d×d is positive semi-definite if xTAx≥0 for all x∈Rd.

Two example classes of positive semi-definite matrices are:

    Diagonal matrices with non-negative entries: D=⎛⎝⎜⎜⎜⎜⎜c10⋮00c2…⋱…00⋮cd⎞⎠⎟⎟⎟⎟⎟

where ci≥0 for all i. (You have shown in exercise in a previous lecture that indeed xTDx≥0 for all x

.

Matrix products PTDP
where P is an invertible (square) matrix and D is a diagonal matrix with non-negative entries (as above). Proof: xT(PTDP)x=(Px)TD(Px)=yTDy≥0 for all vectors x

    .

The positive semi-definite square root (or simply the square root) of a positive semi-definite matrix A
is another positive semi-definite matrix, denoted by A1/2, satisfying A1/2A1/2=A. It is the case that for any positive semi-definite matrix (positive definite matrix, respectively), the positive semi-definite square root (positive definite square root, respectively) is unique.


### 14.05. Introduction to Wald's Test

Hypothesis testing on Maximum Likelihood Estimators, based on theis asymptotic normality distribution

whether the MLE is an average or not,
then we know we have asymptotic normality.
And so we might be able to actually use
this asymptotic normality of the MLE to build tests, OK?

So if H0 is true, why do I want H0 to be true?
Because remember, the MLE converges
to something which is the true parameter,
but I would not know what this true parameter is unless I
assume that H0 is true.
That's the usual trick of testing
is that there's no real unknown parameter in the H0
because we can just plug-in the value we're actually testing,
which is a good thing.

Linear transformations, e.g. MZ, of Gaussian vectors are still Gaussian vectors.

Remark: Real matrices satisfying $M^T=M^{−1}$ (or equivalently $M M^T=M^TM=1_{d×d}$,) are called orthogonal matrices. In general, in d dimensions and for any orthogonal matrix M, MZ is also a standard multivariate Gaussian vector if Z is a standard multivariate Gaussian.

### 14.06. Wald's Test Continued

Remark: Recall from a problem on the previous page that the vector MZ, where MT=M−1 (or equivalently MMT=MTM=1d×d,) is also a standard multivariate Gaussian vector. Hence ∥MZ∥2 also follows a χ2d distribution.

So I have two vectors.
I want to test if they're equal.
And so to test if two vectors are close to each other,
I'm going to need to have a little wiggle room.
So I'm going to need to say, OK, if I have this vector--
say-- in the plane--
so I have one vector here.
This is, say, theta 0.
And then I estimate theta hat.
And I want to say that, well, theta hat has
some fluctuations around it.
So theta hat is going to be this guy.
Then I want to be able to say, well,
it's actually pretty plausible, given
the fluctuations of theta hat, that it's actually
equal to theta 0--
that the true one is actually equal to theta 0.
Is that OK?
That's basically what we're doing when we're doing stat.
So now, you need to actually define what this vicinity is.
What does it look like?
And to actually say that two vectors are close,
I can pick any distance between vectors I want.
And what Wald decided to look at is just the square distance
between theta hat and theta 0.
And that's just the Euclidean square distance,
which is just the sum of theta hat j minus theta j squared.
And that corresponds to, actually,
taking a circle in this case.

So the Fisher information should really
tell me that there's some direction along which
this vector, theta hat, has more variance than other directions.


### 14.07. Wald's Test in 1 Dimension

So now I'm in good shape.
Because I'm going to want to reject when this thing, which
measures proximity from theta-hat to theta-0,
is large or small?
It's large, right?
This is really measuring how far theta-hat is from theta-star
in the right geometry.

The thing is the Wald test is not one
that we can modify much.
And it's basically inherently two-sided.
And why it's inherently two-sided
is because in d dimensions like this,
I'm just measuring how far I am.
I cannot tell you, oh, am I going to be larger or not.

In 1 dimension, Wald's Test coincides with the two-sided test based on on the asymptotic normality of the MLE.

### 14.08. Review: Power of a Test
### 14.09. Performing Wald's Test on a Gaussian Data Set
### 14.10. Likelihood Ratio Test: Basic Form
### 14.11. Likelihood Ratio Test

So we had a test that was based on the asymptotic--
on the maximum likelihood estimator.
But I might actually want to do--
so here, we're doing the test on the x-axis,
but I also have my likelihood and I
would like to perform a test based on the y-axis, right?

So if the true theta star--
let's say I want to test where theta star is equal to theta 0.
OK?
Then it should be that when I evaluate my likelihood at theta
0, it should be very close to the maximum, right?
It's another way of saying that theta hat should
be close to theta star, but rather
than going back to the x-axis, I'm measuring proximity
in the y-axis.

And so, so far, we've just been saying, oh, is
theta 0 close to theta hat MLE?
But we could also check whether the value of theta hat 0
is close to the value at the maximum of the likelihood.
OK, so we want to know if those two things are small.

So if we want to do this, we need
to understand the fluctuations of the log likelihood
around the Maximum Likelihood Estimate, right?
The log likelihood is a random function.
I look at its maximum.
The maximum is just a random number that
is going to be fluctuating.
OK?
And so we're going to want to know if those fluctuations can
account for this guy.

So we're going to look at a fairly general setup.
So again, same blanket first line.
We're in d dimensions.
And now we're going to make statements
about very specific tests

Here what it's doing is it's testing
if a subset of the coordinates of theta
is equal to some pre-specified thing.
The fact that I decide to make those guys the last ones
doesn't really matter.

so one thing that you might want to do, for example,
is if you have a high-dimensional parameter
and each of the coordinates is something that say,
for example, tells you the impact of a particular variable
on some phenomenon.
You might want to test if a subset of the variables
has no impact, in which case the theta 0s here
would be all equal to 0.

And so what I'm going to do is that I'm going to say, OK,
among those guys, all the thetas that
have those pre-specified values at the coordinates
that you gave me, I'm going to find the one that
is the most likely.
And so instead of actually maximizing
the likelihood over all possible thetas,
I'm going to try to maximize the likelihood over thetas
that agree with theta 0.
And so rather than doing a full maximum likelihood estimator,
I'm going to do what's called a constrained maximum likelihood
estimator.

OK, let me look at my maximum likelihood.
That's the likelihood evaluated at the maximum,
completely unconstrained.
OK?
That's the actual value of my objective function
when I maximize it.
This is a number we've never cared about, right?
Remember this?
If you have a bunch of constants that move around,
we said it doesn't matter, the argmax is not going to change.
Here, you have to keep track of those constants that
moves things around.

I multiply by 2.
This 2 is the 1/2 that you see in your second-order Taylor
expansion because any other day, that's everything
we've been doing so far.

Remark: The likelihood ratio test is a natural test in a situation where we only care about some (e.g., the last d−r coordinates) of the unknowns involved in the parameter $θ^∗ ∈ R^d$.

Remark: Be careful not to be confused about the following point. While the parameter space corresponding to H0 is Θ0=Rr which, intuitively, has r free variables, the test statistic Tn converges to a χ2 distribution with d−r degrees of freedom. This convergence fact follows from a technical result of Wilks, and we do not discuss aspects of its proof here.

**Pivotal distribution**:

What is pivotal distribution?

Think of it as a standardized distribution not dependent on parameters. Thus the standard normal distribution is a "pivotal" (no idea where they got this term from) distribution. So usually if you have a random variable X distributed according to some distribution with for example parameters μ,σ2, then X−μσ will have a pivotal distribution - so in a sense it is just the standardized version. But in theory you can have more than two parameters to describe a probability distribution, so you need a transformation which gets rid of all the parameters.

### 14.12. Testing Implicit Hypotheses I

OK, so to conclude this parametric hypothesis testing,
let's look at something which is fairly similar.
So here, this Wilks test is really limited to,
so I have a multivariate parameter,
and I can actually test if a subset of its coordinates
is equal to some given numbers.
And now I would want to do something slightly more
sophisticated.
I want to be able to take a function of my coordinates
and test if it's equal to 0.
So now the function that I have can actually
be the same as before.
For example, here, I have this function g.
So it goes from the parameter to a subset of size k.
So it's basically a list of k constraints
that I want on my parameter.
So you can think of g as being a list of k functions.
And each of them is telling me, I
want this first function of my parameter g(1) of theta
to be equal to 0, g(2) of theta equal to 0, et cetera.
So for example, we can recover the previous setup
by taking g to be equal to--
so g of theta is equal to theta r plus 1 to theta r
plus d minus theta 0, r plus 1 minus theta 0, r plus d--
sorry, d.
I can actually just do this.
And now testing if g of theta is equal to 0
is the same as testing whether the last coordinates
of my vector are actually equal to the last coordinates
of the vectors that are not.

But I could do other stuff by looking, for example,
at g of theta is equal to theta 1 minus theta 2.
And when I do this, what I'm trying to do
is to check if the first two coordinates of theta
are equal to each other.

So this is exactly the same recipe as Wald's test
except that Wald's test, the way we described it,
was for under H 0, theta was equal to theta 0,
and therefore, I could have chosen to put theta 0 here.
I chose to put theta hat, and this
is consistent with what I'm doing now,
because now I can no longer choose
to put theta 0, because I don't have a theta 0.
Under the null, I do not know what theta actually is.
I only know some properties of theta.

Remark: For a square matrix M, we are guaranteed that M−1/2 exists if M is positive-definite. In particular, since Γ(θ∗) is a covariance matrix, it is guaranteed to be positive semidefinite. So then Γ(θ∗)−1/2 exists if and only if Γ(θ∗) is invertible. Moreover, by the previous problem,

Γ(θ∗)=∇g(θ∗)TΣ(θ∗)∇g(θ∗).


Hence, Γ(θ∗)
is invertible if Σ is invertible and ∇g(θ∗) is rank k.




### 14.13. Testing Implicit Hypotheses II
