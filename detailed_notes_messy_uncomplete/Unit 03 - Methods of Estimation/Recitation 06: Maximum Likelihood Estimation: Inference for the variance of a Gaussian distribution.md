Recitation 06: Maximum Likelihood Estimation: Inference for the variance of a Gaussian distribution


$\hat{\sigma^2} = \frac{1}{n}\sum_{i=1}^n X_i^2 -(\frac{1}{n} \sum_{i=1}^n X_i)^2$

I can for sure apply the central limit theorem
to each one of those two expressions
to determine the limit distribution.
The problem is that this does not
tell us what the joint limiting or limit
distribution of these two expressions is going to be.
And this is important because what
we are doing in sigma hat squared
is we are combining them via a function
to form a new random variable.
So we need to know how they behave jointly.

So what's going on is that we just
determined the asymptote distribution of these two
ingredients and now we want to combine them
into sigma hat squared and know what
the limiting distribution is.
This is given to us by the delta method

There is one problem with this confidence interval.
Do you see what it is?
Right.
We were just trying to give an interval for sigma squared,
but now we're actually telling someone
who might be interested in, oh, how certain are you
that sigma squared lies in that interval you gave me.
You're telling him, well, it's probably
between some numbers times the actual parameter,
and some numbers times the actual parameter.
While this might be theoretically useful,
it is not very satisfactory if you just wanted
to give some numbers, right?
So the problem is we expressed our confidence interval
in terms of the parameter that we were trying
to estimate in the first place.
So how do we solve this?
There are a couple of ways around this problem,
and here's one.

Anyway, for our purposes, we know
that sigma hat squared is a consistent estimator
for sigma squared.
That means we can essentially divide
this whole random variable by sigma hat squared
over sigma squared.
The sigma squareds cancel out.
And in turn we obtain that the same convergence
in distribution holds when I replace sigma squared
by sigma hat squared here.

And this allows me to replace all the arguments
we've done so far and put a hat on all the sigma squareds.
