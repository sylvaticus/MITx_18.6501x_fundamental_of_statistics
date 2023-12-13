## Recitation 04:  Introduction to Hypothesis Testing

Let X1,…,Xn∼i.i.d.Poiss(λ), for some unknown λ>0 and let λ0 be a fixed (known) positive number.

- Consider the following hypotheses: H0:λ=λ0 vs. H1:λ≠λ0. Give a test with asymptotic level 5%
- Consider the following hypotheses: H0:λ≤λ0 vs. H1:λ>λ0. Give a test with asymptotic level (at most) 5%
- Consider the following hypotheses: H0:λ≥λ0 vs. H1:λ<λ0. Give a test with asymptotic level (at most) 5%
- Consider the following hypotheses: H0:|λ−2|≤1 vs. H1:|λ−2|>1. Give a test with asymptotic level (at most) 5%.

### Revisiting Type 1, Type 2 Errors, Level, Power of a Hypothesis Test

Usually when we're asked to produce a test,
this test will come with a certain level,
and level is the amount of uncertainty
that we tolerate for our type I error.

So we handle these two hypotheses asymmetrically.
We say that we want to be really certain about what
we're doing when we reject H0, when we say that H1 is correct.

So the level of the test is the biggest number, essentially,
the biggest type I error that I see
within all lambdas corresponding to the null hypothesis.
So that is what's the probability
that I reject the null hypothesis,
that I say the alternative hypothesis is true?
We call this alpha.
And this is the supremum, so the biggest type I error
that we can make.

If you want, you can just think about this as a limit.
So as n goes to infinity, how big
is my type I error going to be?
I don't care about what happens for finite n.
Just how big is the limit?
And this often simplifies calculations.
But of course the downside is for fixed n--
because in practice you will never have infinite data.
You will always have only a finite number of samples--
only arguing asymptotically topically can be a disadvantage
because this wants to produce a certain level of certainty,
and you cannot be 100% certain if all you have is asymptotic
descriptions of what you're doing.

Although we often say we accept or reject the null hypothesis,
we can only really ever reject the null hypothesis.
We can only reject or refute H0, never accept it.

so what's a common level of alpha?
Let's say alpha is 5%.
If you want to be really certain about this, then often
for values close to the true or to any lambda in theta 0,
we'll have a very large type II error.
So we can never be certain that if we see something
that looks like H0, we can never be certain about our decision.
Our guarantees will often be quite weak
whenever our decision actually outputs 0.
But when it outputs 1, then by fixing a certain level,
we have a certain kind of security
or a certain kind of certainty that work
we are outputting actually matches data that convinces you
that H0 is not true.

So what's a test statistic?
A test statistic should be something
that basically measures the distance between what kind
of parameter lambda does my data suggest and what kind of lambda
it corresponds to the null hypothesis.
So if those two look very different,
than I would like to reject.
And if those two look similar, then I
would probably go with H0.
And it's also called a pivot or it
is a pivot if I can manage to write it down in such a way
such that it's distribution under the null hypothesis
is known and does not depend on any additional parameters.
And in that case, I have an easier time
fixing the level of the test, writing down
the level of the test.
And once I have this, then think about this as some kind
of distance function.
And then my test statistic is just an indicator function of
does my test statistic exceed a certain threshold s?
And then in a second step that is hopefully
guided by the distribution we found Tn in step A,
we determine s to match the level alpha.


### Two-Sided Test

H0:λ=λ0 vs. H1:λ≠λ0

So let's try to stick with our strategy
and first find a test statistic Tn or a pivot.

First obj: find an estimator for the underlying parameter

Of course, it will not hold if lambda equals 2 is not correct.
But remember, in order to control the level of the test,
I only need to control type I error, which
is controlled by knowing what happens when
the null hypothesis is true.

$P(|Z| > s) = 2* \Phi(-s) = 2 * (1- \Phi(s))$

$2 * (1- \Phi(s)) = \alpha$

$\Phi(s)) = 1-\alpha/2 => s=\Phi^{-1}(1-\alpha/2) = q(\alpha/2)$


So that means, at least pointwise, the type
II error is 0.

### One-Sided Test

H0:λ≥2 vs. H1:λ<2

$P(T< -s) = \Phi(-s) = \alpha$

$1 - \Phi(s) = \alpha \to s = \Phi^{-1}(1-\alpha)$

$P(T< -s) = \alpha$ when $T < - \Phi^{-1}(1-\alpha)$

### One-Sided Test Continued

But now we only have one side to control.
So that means we can move s in a little bit more
for the same level alpha.
In other words, with one side test we have here,
it is actually easier to reject the null hypothesis.
It's going to be easier to say, oh,
I have enough evidence against H0
because I only have to control one side of what's happening.

So for the type II error, the same argument as before
applies, or an argument similar to this one
here by the law of large numbers.
So this was by the law of large numbers.
By the law of large numbers, if lambda now is actually
smaller than two, then this quantity
here goes to something positive instead of negative.
So if I multiply this by squared of n, then as n
goes to infinity I will always reject.
So my type II error will always go to 0.
So this is point wise asamtolically

And now one side remark or one remark--
now, if you basically continue this curve,
then because of the definition we
had without the absent value, the same value
would increase once we move to larger lambdas, which
is fine here because it's not actually an error.
So basically this is the probability
that I'm going to accept, and that
is good because when lambda is very large
I want to accept because H0 will probably be 2.
But this is why a statistic like this
is not a good choice for the two sided test
we were talking about before.
But the funny fact or the interesting fact
is that in fact at the same test statistic here, what if yielded
the right control the right alpha level
even for the two sided test?
But we don't want to use it because of this type II error
problem.


### Composite Test

H0:|λ−2|≤1 vs. H1:|λ−2|>1.

A $\pm 1$ buffer over lambda equal to 2.


So basically we're only looking for evidence for lambda
being significantly larger than 2 or as being significantly
smaller than 2.

 we could call this a composite test.

 We already know how to test whether lambda
is larger than 3, and we already know
how to test if lambda is less than 1,

first let's decide on the form of our test.
And I suggest we do the following.
We actually do an indicator function
of two different cutoffs, of two different test statistics,
and they will take care of what's
happening in the left and the right boundary.
So let's call the first one Tl for the left boundary.
And let's reject if there is enough evidence at the left
boundary that lambda is less than 1,

Now in this case, my type I error
is the probability of 1 is the true lambda of either
of those two events being true, so
the probability that Tnl larger than sl or Tnr larger
than sr. Now by the laws of probability,
I can estimate this from above by the probabilities
that either event occurs--
so the sum of either event occurring.
So now let's look at those two separately.

So if lambda lies actually inside this interval here,
same thing happens as in the one-sided test,
and asymptotically the type I error will vanish.
