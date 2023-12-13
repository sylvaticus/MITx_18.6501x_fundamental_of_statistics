
## Lecture 10: Consistency of MLE, Covariance Matrices, and Multivariate Statistics

### 10.01. Consistency of MLE, Covariance Matrices, Multivariate Statistics

Objectives

At the end of this lecture, you will be able to do the following:

- Derive the maximum likelihood estimator for the uniform statistical model and prove its consistency.
- Recognize that the maximum likelihood estimator is consistent.
- Know that independence implies zero covariance but not vice-versa.
- Define sample covariance as an unbiased estimator for the covariance.
- Obtain the covariance matrix of a random vector.
- Identify multivariate Gaussian random variables and understand affine transformations of multivariate Gaussian random variables.
- Use multivariate Central Limit Theorem .
- Use multivariate Delta method .


### 10.02. Maximum Likelihood Estimator of Uniform Statistical Model

mild regularity conditions

is if you actually took a derivative and set it to 0.
When you computed your maximum likelihood estimator,
then typically those conditions are satisfied
for finite parameters.
And so they will be satisfied for, in this class at least--
these regularity conditions will always
be here when you actually got their maximum likelihood
by setting the derivative of, say, the log
likelihood equal to 0.

When does this not happen?
When is it the case that you actually
compute the maximum likelihood without setting
a derivative equal to 0?
And the typical example is when you
look at x1, xn, and their IID uniform
on, say, the interval 0 lambda.
And lambda is just a positive number.
And that's your parameter of interest.

$X \sim U(0,\lambda)$

$f_X(x) = \frac{1}{\lambda} ~ \mathbf{1}(0 \leq x \leq \lambda)$
$L_n = \frac{1}{\lambda^n} ~ \mathbf{1}(0 \leq min(x)) ~  \mathbf{1}(max(x) \leq \lambda)$

So here, if you look at the density--
so the PDF is f lambda of x is 1 over lambda indicator
that x is between 0 and lambda--
so when you look at your likelihood, what you get
is 1 over lambda to the n, product of indicators.
But we said that the product of indicators
is essentially something that says
that the minimum of the xis will be negative
and the maximum of the xis will be at most lambda.
So that's when I write my likelihood.
As I said, this one does not depend on lambda,
so I can just remove it, because all the points
that I will actually observe satisfy that their minimum,

So as soon as lambda becomes smaller
than the maximum of my xis, this function is equal to--
well, this function is not equal to minus infinity.
So this function is equal to 0.

Now, I claim that if I want to find the derivative-- if I want
to find a maximum of a function or the minimum of a function,
I just have to take its derivative, set it equal to 0.
But this is true only when this function has derivatives
everywhere.
And this function does not have a derivative
at this point max of xis.
Because if I compute the derivative to the right,
I have something that goes like this.
And if I compute the derivative to the left,
I have something which is equal to 0.
So this is not derivative.
There's actually a kink here.
There's even a discontinuity.
So not only is it not differentiable,
it's not even continuous.

So you see, in this case, this model does not
satisfy the regularity conditions
that I am talking about.
So for that matter, this is still a consistent estimator.

So think, regularity means I can take the derivative of my log
likelihood or my likelihood, set it equal to 0,
and get my maximum likelihood.

So in particular, if your log likelihood is differentiable,
then you're sort of good to go.
And when I say sort of, it's just to cover myself.
But it has to have a little more than that.
But otherwise, it's fine.

I can promise you that half of you--
maybe not the half that's in this room,
maybe the half that's not in this room--
will actually go on the midterm, write this down, take the log,
set the derivative equal to 0, and tell me
that the maximum likelihood estimator is lambda.
Maybe take one extra step back and realize that maybe you
cannot take the log in the first place.

So we can compute the maximum likelihood estimator either
by taking the derivative of the log likelihood,
setting it to 0, and solving.
So that's one way.
The other way is to look at this visual thing.
And now that we've computed it, we
have a method to compute estimators.
This is probably the first time we actually
get an estimator that's not something
related to an average.

Actually, here, the average of those points in expectation
should be lambda over 2.
And so you might suggest as an estimated 2 times xn bar.

I know something about my estimator [max(x)].
It's always strictly less than lambda.
So in particular, it's going to be biased.
But it's actually a very good estimator.
It's closer.
But it's always under shooting.

### 10.03. Another Example of Maximum Likelihood Estimator
### 10.04. Consistency of Maximum Likelihood Estimator
### 10.05. Review: Covariance
### 10.06. Covariance and Independence
### 10.07. Covariance in Real Life
### 10.08. Covariance Matrices
Capital sigma Σ is usually used to denote covariance matrices.
Just because small sigma is essentially the variance.
Sigma square is the variance.
This should really be sigma squared,
And what is this thing?
Well, it's just we write it as covariance of X.
So I just put a bar here [a vertical line on the C letter of "Cov"]to indicate
that I'm talking about, say, a matrix, a big thing.

The covariance matrix is the outer product of the random vector made of the deviations with itself transposed:

$\displaystyle  \Sigma = \mathbb E[(\mathbf X- \mu )(\mathbf X- \mu )^ T].$

The matrix notation makes it useful to play around with,
but otherwise, that's all it is.
It's just a nice way to collect all this information, only
pairwise covariances.

So if I give you covariance matrix,
you look at the diagonal elements,
and you get the variances. (on the diagonal must be positive numbers)

First of all, just like for variances,
adding something constant is going to have no impact on it.
Adding B is going to have no impact on the covariance.
So the covariance of AX plus B is actually
equal to the covariance of AX.

So the matrix is making just all the indices go away, really.

$cov(AX+B) = A*Cov(X)*A^T$

For any pair of random variables A,B with the same variance Var(A)=Var(B)=σ2, Cov(A−B,A+B)=Var(A)−Var(B)=0.

### 10.09. Multivariate Gaussian Distribution
$\displaystyle  \displaystyle f_{\mathbf X}(\mathbf x) = \frac{1}{\sqrt{\left(2\pi \right)^ d \text {det}(\Sigma )}}e^{-\frac{1}{2}(\mathbf x-\mu )^ T \Sigma ^{-1} (\mathbf x-\mu )}, ~ ~ ~ \mathbf x\in \mathbb {R}^ d$

So now that I have a covariance matrix,
I can actually talk about a multivariate Gaussian
distribution, just like--
if I want to describe a Gaussian--
so what is nice about the Gaussian
is that it's described by only two parameters--
its mean and its variance.
And now I would like to say that a multivariate Gaussian is
determined only by its multivariate mean
and its multivariate covariance matrix.

It turns out that they have another property, which
is among all the distributions that have a given
mean and a given covariance matrix,
those are the ones that have maximum entropy, meaning
the ones that you can least predict, in a way.
But this is beyond the scope of this class.

And then the covariance tell me how they interact together.
It turns out that this covariance number
is enough to tell me everything about the interactions
between those two random variables.
And that's a property of Gaussians.
In general, interactions could be very complicated.

So if I give you the covariance matrix,
I give you the covariances, so the pair Y's covariances.
I also give you all the variances.
So all I need to give you extra are the expected values.

That's a multivariate PDF.
I need to give you a function of d variables
so that if I ask you the probability
that my Gaussian vector belongs to a particular a which
is a subset of R d, I need to do a d dimensional integral.
And so it turns out that it's just a generalization.
So you can check for yourself that when d is equal to 1,
you go back to what you had before.


#### Multivariate Gaussian Random Variable ####

A random vector $\mathbf{X}=(X^{(1)},\ldots ,X^{(d)})^ T$, is a Gaussian vector , or multivariate Gaussian or normal variable , if any linear combination of its components is a (univariate) Gaussian variable or a constant (a “Gaussian" variable with zero variance), i.e., if $\alpha ^ T \mathbf{X}$ is (univariate) Gaussian or constant for any constant non-zero vector $\alpha \in \mathbb {R}^ d$.

The distribution of $\mathbf{X}$, the ${\color{blue}{d}}$-dimensional Gaussian or normal distribution , is completely specified by the vector mean $\mu =\mathbb E[\mathbf{X}]= (\mathbb E[X^{(1)}],\ldots ,\mathbb E[X^{(d)}])^ T$ and the $d \times d$ covariance matrix $\Sigma$.\, \, If $\Sigma$ is invertible, then the pdf of $\mathbf{X}$ is

$\displaystyle \displaystyle f_{\mathbf X}(\mathbf x) = \frac{1}{\sqrt{\left(2\pi \right)^ d \text {det}(\Sigma )}}e^{-\frac{1}{2}(\mathbf x-\mu )^ T \Sigma ^{-1} (\mathbf x-\mu )}, ~ ~ ~ \mathbf x\in \mathbb {R}^ d$	 	

where $\text {det}(\Sigma )$ is the determinant of the $\Sigma$, which is positive when $\Sigma$ is invertible.

If $\mu =\mathbf{0}$, and \Sigma is the identity matrix, then $\mathbf{X}$ is called a standard normal random vector .

Note that when the covariant matrix, $\Sigma$, is diagonal, the pdf factors into pdfs of univariate Gaussians, and hence the components are independent.

Such a Gaussian (with a singular covariance matrix) is sometimes referred to as a degenerate Gaussian.

### 10.10. Multivariate Central Limit Theorem

So now that I have this, I can talk
about multivariate Gaussians as being
limits of a multivariate central limit theorem.

The average of a random vector is the vector of the averages.

Of course, there is a notion of standard Gaussian
for multivariate Gaussian, which is
the one that has mean 0 and covariance matrix
equal to the identity--
only 1's in the diagonals, 0 elsewhere.
That's ID.
So ID is the identity matrix of Rd.
And it's just the matrix that has 1's on the diagonals
and then 0's elsewhere.

essentially, sigma to the minus 1/2 is--
so it's the d by d matrix such that sigma to the minus
1/2 times sigma to the minus 1/2 is equal to sigma
to the minus 1.
That's what it is.
Now, you could say, well, if I want
to talk about square roots for a number,
I need those numbers to be non-negative.
I can not talk about square roots of minus 25.
Well, I guess I can talk about complex numbers.
But for real numbers, I can not talk about this.
And so somehow, I need to think of this matrix
as being non-negative so I can talk about its square root.
And it turns out that covariance matrices precisely
have these properties.
And we see that they're positive definite.
And we even write something like, "Sigma is positive."
So this is the property.
Basically, any covariance matrix is a positive definite matrix.
Any positive definite matrix is a covariance matrix--
unless there's some weird things happening
with some variances equal to 0, in which case,
we have to relax the sign to allow the matrix
to essentially be 0.
Just like we can talk about the square root of 0,
in this class, we won't.

Now, if I gave you a matrix, and I
said, find a square root of this matrix,
I give you sigma inverse, and I say, find
the square root of sigma inverse, then that's
actually more complicated.
You would have to use Cholesky decomposition
or you would have to use some eigenvalues decomposition.
And I don't want to go into that at this point of the class.
We'll talk about eigenvalues when
we talk about principal component analysis.
But if you want to look at it, these are the key words.
You want the square root of a matrix.
I'm sure there's some nice--
even Wikipedia probably gives you a nice page for this.
Otherwise, this is just linear algebra.

#### Convergence in Distribution in Higher Dimensions

Convergence in distribution of a random vector is not implied by convergence in distribution of each of its components.
The vector sequence (Tn)n≥1 converges in distribution only if its dot product vTTn with any constant vector v, which is a scalar random variable, converges in distribution (or equivalently, if the projection of the vector sequence onto any line converges in distribution.)

#### Univariate CLT Implies Multivariate CLT

### 10.11. Multivariate Delta Method

What is the delta method doing for me?
If Xn bar minus mu divided by square root of n
was going to Gaussian, then this would actually
give me a central limit theorem for g
of Xn bar minus g of theta.
So it was really when I wanted to take a function of Xn bar
and make it convert to a function of the mean.

So I take a function g, takes as input a vector of size d,
like this guy, and gives me on the other side
another vector of size k.
Most of the time, k will be equal to 1.
But again, since I have a multivariate central limit
theorem, I might as well try to state
a multivariate central limit theorem for g.

G is actually a k-system of functions each taking d parameters

And of course, the whole question
is, how am I going to talk about the square of g prime
for a function g, which goes from Rd to Rk?
Now, g prime is a derivative.
We know the generalization of a derivative
for multi-dimensional functions when they go to R.
We've talked about it.
It's called a gradient.
All the functions that we had before were going from Rd to R.
And we talked about the gradient, which was a vector.
It was just the derivative with respect to each coordinate.

Now, if I have a function that goes from Rd to Rk,
really the way to think about this function
is having a function that's really
just a bunch of functions, g1 through gk,
each of them being a function of X1 to Xd.

Now again, I could have stacked them
horizontally or vertically.
There's no real rule, as long as you're consistent with what
you're doing at this point.

So once I have this, I just want to talk about the square
of this matrix.
But just like we did before, it's
not like we're going to have this gradient squared
times the original matrix.
We're going to have to multiply on one side
and multiply on the other side transpose.

So now, if I want to choose which side needs
to be multiplied by gradient of g,
and which side needs to be multiplied by gradient
of g transpose, all I have to do is
to check what's the compatibility.

### 10.12. Preview of Fisher Information

So now I'm going to want to talk about the asymptotic covariance
matrix of the maximum likelihood estimate.

It turns out that the covariance matrix--
so the maximum likelihood will satisfy
a multivariate central limit theorem.
And what we'll see in the end, as
the asymptotic covariance matrix is something called--
well, something related to what's
called the Fisher information.
And the Fisher information can be
computed by looking at successive derivatives
of the log likelihood.

So when I look at this random variable,
I can do several things.
First of all, I can think derivative with respect
to theta, and I can compute variances and expectations
with respect to X. And I'm going to do both things at once.

So if I look at this function from Rd to R,
I can talk about its gradient.
Its gradient is a vector of size d OK, it's a random vector,

Now why you can actually go from first to second derivative,
it's not entirely clear.
In one dimension, if you want to try to parse this,
I think it makes it even more mysterious
if you think about it for one second is
that the first one is the--
so the Fisher information is the variance.
So now it's just the number.
The Fisher information is just the number.
It's the variance of the derivative of the log
likelihood, which is also minus the expectation
of the second derivative of the log likelihood.
