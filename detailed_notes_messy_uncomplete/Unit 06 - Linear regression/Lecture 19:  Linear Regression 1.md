## Lecture 19: Linear Regression 1

### 19.01. Motivation
### 19.02. Objectives
Linear Regression

At the end of this lecture, you will be able to do the following:

- Understand the goals of regression .
- Identify the regression function and know what property of the dependent random variable the regression function is trying to capture as a function of the explanatory variables .
- Plot and understand box-and-whisker plots .
- Know the linear regression function .
- Understand the theoretical and empirical linear regression solutions.
- Write the linear regression problem as a noisy linear model .

### 19.03. Goals of Regression

You want to predict something that's
hard or impossible to know at the given
time from something that's easy or cheap to actually get.

### 19.04. Modeling Assumptions in Regression

The conditional density.
So the conditional density says, well, if y,
is going to depend on x for different values of x,
y is going to have a different distribution,
going to have a different density.
So for a particular value of little x,
I have a density that depends on x.

But it's just a way to break the information into a part that
pertains only to x and a part that pertains only
to how x depends on y.

Nobody cared if there was 75% of teenagers in my data set.
All I cared about is, given that I have a teenager, what
is the probability of having more than 200 conversion
rates, for example?


### 19.05. Partial Modeling, Regression Function, and Conditional Quantiles

Linear models of the type Y=a+bX+ε – hence the name Linear Regression – are the main focus of this chapter.


### 19.06. Plots of Conditional Distributions and Conditional Quantiles and Box-and-Whisker Plots

### 19.07. Linear Regression - Basic Setup

When I'm looking at this plot here,
I don't really need to tell you much, OK?
I could actually literally break my data set into four parts
and work on them separately.
There's enough data that I don't actually
need to borrow information from different age groups
to understand what's going on, right?
I could just say, OK, here's the external median for that group.
Here's the conditional median for that group.
So the conditional median for that group and for that group.
If you go back to the continuous example here,
what is the conditional expectation
for 500, for example?
Well, you don't have any data point here,

So somehow I'm going to have to pull information
from my neighbors.
I'm going to have to pull information

key concept:

I'm going to have to pull information
for things that are close, or even
hopefully from all the points.
And the way you do this is by imposing some structure on what
this function can be, OK?

when you do linear regression,
you're actually getting information from all the points
to estimate the conditional expectation at one point.

so now we're talking about regression,
so forget about conditional median, conditional quantiles--
we're never going to talk about this ever again.
my main goal here is to convince you that regression is not
the end of the story.
There's many conditional aspects of
this conditional distribution of y given x that you
could try to understand.

So you can do data transformation
before you do linear regression, right?
You could not do y on to x, but y
on to some cosine of x for example, or x squared.

In this unit, we will be studying the Least Squares Estimator . It is an estimator (a^,b^) so that Y^=a^+b^X is “close" (in some distance metric) to the actual Y as often as possible.

These two exercises verify that the Least Squares Estimator is consistent in the following sense: using the actual distribution on (X,Y), the true pair (a,b) itself is a least squares estimator. It may or may not be unique; we will address this in the following sections


### 19.08. Probabilistic Analysis of Theoretical Linear Regression

the theoretical regression line
is the one that will just be the closest
in expected squared deviation,

So derivatives, and expectations can
be interchanged under some technical conditions, which
will always be satisfied in this class.


### 19.09. Linear Regression in Practice: Linear Model Plus Noise

So I can think of Y as being its conditional expectation given X
plus some random variable that's just
whatever its deviations from this conditional expectation
is.
So let's just give this deviation a name.
And I'm going to call it epsilon, right?
So epsilon is just Y minus the point that's on the line, OK?

### 19.10. Empirical Linear Regression via The Statistical Hammer
Clearly, if the standard deviation of sigma
is 25 times the slope of the curve,
I'm never going to be able to know whether this curve is
pointing upwards or downwards because the points are going
to be so far, so spread out that I'm not going to be
able to sense any deviation.

And we're going to try to address how close they are.
And we're to try to say, as the number of points on the scatter
plot goes to infinity, those two lines should coincide.

If we understand what the fluctuations of b hat
are around b star, we're even going
to be able to do some tests about b star.

In empirical linear regression , we are given a collection of points {(xi,yi)}ni=1. The goal is to fit a linear model Y=a+bX+ε by computing the Least Squares Estimator , which minimizes the loss function
1n∑i=1n(yi−(a+bxi))2.


Using the same technique as in the problems on theoretical linear regression, one obtains the solution
a^=y¯¯¯−xy¯¯¯¯¯−x¯¯¯⋅y¯¯¯x2¯¯¯¯¯−x¯¯¯2x¯¯¯b^=xy¯¯¯¯¯−x¯¯¯⋅y¯¯¯x2¯¯¯¯¯−x¯¯¯2.


In this particular case, this is precisely what one obtains by taking the least squares solution for the theoretical linear regression problem
a=E[Y]−Cov(X,Y)Var(X)E[X]b=Cov(X,Y)Var(X)


and replacing each term with their empirical counterparts according to the plug-in principle, i.e. E[X] with x¯¯¯, Var(X)=E[X2]−E[X]2 with x2¯¯¯¯¯−x¯¯¯2, etc. It happens to work nicely in this setting, but this trick does not always work out in general!

(like ???)


### 19.11. Multivariate Regression: Definitions, Modeling, and Matrix LSE

Note that we can always perform linear regression, even if the model is misspecified. There are many ways that things can go wrong! For example, the estimator may not be unique, or the estimator β may have huge variance. This unit will help us understand when and why these issues occur.

The natural analogy is to take β=(β0,…,βp)T∈Rp+1 and X=(1,X(1),…,X(p))∈Rp+1. Therefore, whenever we have an intercept in the model, we extend the dimension by 1 and take the first coordinate of X to always be 1

.

(On the other hand, if we did not have an intercept in our model, then we would not need β0.
In this case, for a typical p-dimensional model, we usually write X=(X(1),…,X(p)), a p

-dimensional vector.)

This technical distinction won't affect theoretical analyses. Unless otherwise specified, we will always take X and β to be generic vectors in Rp.
