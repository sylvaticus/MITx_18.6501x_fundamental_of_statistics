# Lecture 04: Parametric Estimation and Confidence Intervals


## 04.01. Parametric Estimation and Confidence Intervals

Objectives

At the end of this lecture, you will be able to

- Distinguish between an estimator and a statistic .
- Compute the bias , variance , and quadratic risk of an estimator.
- Determine whether or not an estimator is consistent .
- Construct a confidence interval for an unknown parameter.

And today we're going to talk about using the mathematical framework introduced in the previous Lesson.

## 04.02. Statistics, Estimators, Consistency, and Asymptotic Normality
Parameter estimation
- **Measurable function** (rule of thumb): if you can compute it exactly once given data (once the data is given), it is measurable (you may have some issues with things that are implicitly defined such as sup or inf but not in this class)
  - non mesurable: you don't have a closed form function, you have an "infinite" or "superior" function (??) (min or max are ok)

- **Statistic**: Any measurable function of the sample, e.g.,
$X̄_n$ , $max_i X_i$ , $X_1 + log(1 + |X_n|)$, sample variance, etc...
  - it's a r.v. that depends on the data
- **Estimator of θ**: Any statistic whose expression does not depend on θ.
  - it is a statistic, but not any statistic will work. I want a statistic that corresponds to what I would use in an estimator. In particular, I need to rule out statistics that depend on things I don't know. An estimator is simply a statistic that does not depend on data, because I want to be able to compute it as an estimator once I get data.
  - a fixed number would still be considered a (poor) estimator

- An estimator $\hat \theta _n$ of $\theta$ is weakly (resp. strongly) **consistent** if: $\hat \theta _n \xrightarrow[n \to \infty]{}\theta$ in probability (resp a.s.) (w.r.t. $P_0$)  
  - The first goal that we might want to have is, as I'm collecting more and more data, I should have a better and better idea of what distribution generated that data. I'm going to want is an estimator that will converge to the true unknown parameter, theta, as my sample size goes to infinity.
  - Not only for sample average, also for other estimators (e.g. the maximum likelihood estimator)
- An estimator $\hat \theta _n$ of $\theta$ is asymptotically normal if
$\sqrt{}n(\hat \theta_n - \theta) \xrightarrow[n \to \infty]{(d)} N(0,\sigma^2)$
The quantity $\sigma^2$ is then called **asymptotic variance** of $\hat \theta_n$
- $var(\hat \theta_n) \xrightarrow[n \to \infty]{} = 0$ (as my sample size increase the estimator variance should reduce)

## 04.03. Bias of Estimators; Jensen's Inequality

pronunce: "baies"

unbiased: centered around what I want
The expectation is a centering parameter.

In many instances, it is one of the first properties
you would want to check about an estimator,
maybe even before consistency.
However, you have to be very careful.
Trying to enforce at all costs that an estimator is unbiased
might make you use an estimator which is overall not the best
possible estimator you can have, because there's
estimators that are unbiased but have a lot of variability.
And maybe these "biased" estimator have the bias going to zero as n tend to infty.

What is the expectation of x1? It's p.
So this estimator, which is terrible, is also unbiased.
Unbiasedness is a good thing, but it's certainly not
doing everything you want.

Jensen's inequality

f(.) is convex:  E[f(x)] >= f(E[x])
g(.) is concave:  E[g(x)] <= g(E[x
(strictly convex/concave -> disequality)  

Z(x) = sqrt(x) -> concave
E[sqrt(Z)] < sqrt(E[z])

## 04.04. Variance of Estimators

So we need something more to discriminate
between unbiased estimators, the good one and bad ones.
And the thing that we need to use
is the variance, how much variability they have.

Probably the most fundamental reason why you would use averages in statistics is that the variance decays linearly with the number of points that you have.

$\hat p_n = X_1 \to var(\hat p_n)= p(1-p)$:   clearly as I collect more data, if I forget everything starting at point 2, I'm not going to improve my variance.

We want the smallest possible variance

The square root of a bernulli is a Ber(x^2).
Also, the indicator function I(X1=1 and X2=1) is X^2.

$p^2(1-p^2) < p(1-p)$ for p > 0.5 and the opposite for p < 0.5
The function that map p(1-p) on p is a concave parabola with max on 0.5


## 04.05. Quadratic Risk of Estimators

Once you said that the bias is zero,
it's easy to compare estimators.
If they all have bias zero, you just
pick the one that has the smallest variance.

What if they had different biases?
You want some that has small bias,
but you also ones that have small variance.
So how do you put those two things back together?

This is multiobjective optimization.

Now it turns out there's a very natural way
of combining bias and variance.
And this is through what's called a quadratic risk.

Now, what's happening is that this random variable [Quadratic risk]
is very special.
It is non-negative because I took a square.
And when I have a non-negative random variable
and I take its expectation and force it to be small,
I actually force both of its expectations
to be close to zero-- both its expectation to be
close to zero and its variance to be close to zero.

$E[\hat \theta_n]$ and $\theta$ are numbers, not r.v., so their expectation is equal to themselves (the expectation of a number is the number itself).

Overall what we've proved is that the quadratic risk
is the sum of the variance and the square of the bias.
So when I minimize the quadratic risk,
I minimize both the variance and the bias
because those are two non-negative terms.

## 04.06. Worked Example: Bias, Variance and Quadratic Risk

Typically the quadratic root is in form of k*1/n.

## 04.07. Exercise: Strengths and Weaknesses of Estimators
## 04.08. Confidence Intervals

We need first to prove that our estimator of interest is asymptotically normal (for the mean, we know it from the CLT).

Think of alpha being small--
1%, 2%, 5%, maybe 10%.
Now, my confidence interval will be
at a level, which is going to be not close to 0,
but close to 1--
99%, 98% 95%, 90%.
So this is my 1 minus alpha.
So this is my confidence level.
I want this confidence to be high.
And so my confidence interval will be a random interval,
random how well will actually depend on my data.
Just like an estimator is a random variable that
depends on my data, my error bars around it
will also depend on my data.
And the boundaries do not depend on theta.

I can't make CI statements on finite n, all I can do is make CI of asymtotic level 1-alpha or, equivalently,  asymtotic CI level 1-alpha (not "confidence asymptotic interval", that's weird.)


My computation:

Given that $\bar X \xrightarrow[n \to \infty]{(d)} \sim N(\mu,\sigma^2/n)$ (by the CLT) then $\sqrt{n} \frac{\bar X - \mu}{\sigma} \xrightarrow[n \to \infty]{(d)} \sim N(0,1)$

I want to find the two value $x_1 < \mu$ and $x_2 > \mu$ such that $x_2 - \mu = \mu- x_1$ and $P(\bar X < x_1) + P(\bar X > x_2) \leq \alpha$:

```
/\
 |            *
 |          *   *
 |         *      *
 |        *         *
 |     *               *
 |*                          *
 ---------------------------------->
        x1    μ   x2
```

By symmetry, this means $2P(\bar X < x_1) \leq \alpha$.

But $P(\bar X < x_1)$ is equal to  $P( \sqrt{n} \frac{\bar X - \mu}{\sigma} < \sqrt{n} \frac{x_1 - \mu}{\sigma})$, that is $\Phi(\sqrt{n} \frac{x_1 - \mu}{\sigma})$ (the CDF of the standard normal evaluated at $\sqrt{n} \frac{x_1 - \mu}{\sigma}$).

So, $2P(\bar X < x_1) \leq \alpha \to 2\Phi(\sqrt{n} \frac{x_1 - \mu}{\sigma}) \leq \alpha$ or $\Phi(\sqrt{n} \frac{x_1 - \mu}{\sigma}) \leq \frac{\alpha}{2}$.

We are interested in finding $x_1$, so we need to invert $\Phi$:

$\sqrt{n} \frac{x_1 - \mu}{\sigma} \leq \Phi^{-1}(\frac{\alpha}{2})$

From there, we find that $x_1 \leq \frac{\Phi^{-1}(\frac{\alpha}{2}) \sigma}{\sqrt{n}}+\mu$, and, by symmetry,  $x_2 \geq - \frac{\Phi^{-1}(\frac{\alpha}{2}) \sigma}{\sqrt{n}}+\mu$

Note that $\Phi^{-1}(\frac{\alpha}{2})$ is a negative number and equal to $-\Phi^{-1}(1-\frac{\alpha}{2})$, so the two bounds can be rewritten as
$x_1 \leq -\frac{\Phi^{-1}(1- \frac{\alpha}{2}) \sigma}{\sqrt{n}}+\mu$, and, by symmetry,  $x_2 \geq + \frac{\Phi^{-1}(1- \frac{\alpha}{2}) \sigma}{\sqrt{n}}+\mu$.

The inequality make sense: to have a probability of error of catching the real $\mu$ within my interval *at max* of $\alpha$, the lower limit must be *at max* the founded $x_1$: if it is lower, well, my prob of error will also be lower (and the opposite for the upper bound).

Note also that the two limits doesn't need to be symmetric: however in that case, to compensate for the $x_1$ going a bit more tight to $\mu$ I would need to have $x_2$ to go much more  far from $\mu$ to recover the same density.. Intuitively having symmetric bounds we minimise the distance between $x_1$ and $x_2$.

## 04.09. Conservative Bound

We don't know the variance, but we are sure that with $p \in [0,1]$ the maximum variance $p(1-p)$ is obtained when $p = 0.5$, so we just plug that in our CI to obtain a conservative interval that it is ok for whatever the variance is.

I want to give the narrowest possible confidence interval.
I'm going to make something conservative, but no
more than what what's needed.

## 04.10. Solving for a Confidence Interval

OK, and this is a bona fide quadratic inequality, OK?
So if we see that this guy is positive,
so what we know is that this parable is pointing up,
it's going to cross the interval 0 1 hopefully at two points.
Sorry, the horizontal line at two points.
Let's call them P1 and P2.
And this will give me the boundaries
of my confidence interval.
Because when p is in this guy, I know
that this quadratic equation is giving you
a negative number, which is the same as saying
that p is in those two things.
OK, so if I found the two roots of this quadratic equation,
then they will give me immediately
my confidence interval.

Clearly, this was a good thing that we did.
We did not make any approximation.
All we did was rewrite what we had in the first place
and solved it for p.
We did not make any approximation.
We did not make anything conservative.
This is as precise as it gets, so long
as you believe that the central limit theorem is correct.

IMPORTANT:

When you have your bound in the form:

$\bar X_n - k \leq \mu \leq \bar X_n + k$

You can transform it for:

$(\bar X_n - \mu)^2 \leq k^2$


When you have your bound in the form:

$\bar X_n * (1-k) \leq \mu \leq \bar X_n * (1+k)$

You can transform it for:

$\frac{\mu}{(1+k)} \leq \bar X_n \leq \frac{\mu}{(1-k)}$


## 04.11. Using Slutsky Theorem: Plug-in

The third one is to say, OK, I don't know p,
but I certainly have an estimator for p.
It's p-hat hat.
And I knew that this p-hat is consistent.

And now what can I say about the limit of the probability
that this interval contains p?
Is it larger than or equal to?
Is it equal to?
It equals, right.
And somehow, we have the sense that we've done something
slightly less precise than iSolve. Right?
iSolve did not require a second asymptotic approximation
that comes from Slutsky.
But this one's simpler.
And if you're going to take n goes to infinity,
you might as well use all the tools that you know about this.
Now, of course, if n is not infinite,
if n is for any finite n, you're sort of
accumulating the amount of approximations
that you're making.
So you're relying twice on asymptotics.
And if you don't want to do this,
you might want to stick to iSolve.


## 04.12. Comparisons of the Methods

So the one you should be relying on the most
is actually conservative.
This is the one that says, oh, I'm actually being
very careful about what I say.
So this one is actually not bad at all.
The plug-in gives you the same things.
That's sort of reassuring.
And then you have this solve that actually is even bigger.
So certainly, you will always going
to go to the narrowest possible one,
as long as it's something that's sort of justified to happen.
So here in this case, the I-solve
is probably not the one you would
want to go for because it does not provide error bars that are
as accurate as the other two.
Now, you could also be somebody who is risk averse and says,
OK, I have three possibilities.
I'm always going to take the widest of all those guys.
We can even take the union of all those guys--
the smallest of the three lower bounds and the largest
of the three upper bounds that I get, and then I'm sort of sure.

For $X \sim Bernulli(p)$ we know that $r*\bar R_n \sim Binomial(n,p)$, we can compute non-approximated intervals for any n.
