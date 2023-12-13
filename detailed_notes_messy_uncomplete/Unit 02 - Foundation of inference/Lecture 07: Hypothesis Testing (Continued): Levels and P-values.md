# Lecture 07: Hypothesis Testing (Continued): Levels and P-values

## 07.01. Introduction to Parametric Hypothesis Testing: Worked examples, P-values

Objectives

At the end of this lecture, you will be able to do the following:

- Specify the level or asymptotic level of a statistical test.
- Design a statistical test with a specific level or asymptotic level.
- Apply a test to a given sample to determine whether or not the null hypothesis should be rejected.
- Compute and interpret the p-value associated to a statistical test.

## 07.02. Review of Parametric Hypothesis Testing
## 07.03. Review of Parametric Hypothesis Testing

what I want to control is alpha of theta,

What is theta 0 for this problem?
Yeah.
So it's the singleton 1/2.
There's just one possible value that
can happen in there theta 0.
That's [? the ?] beauty.
It's easy for me to control this probability
for all possible values of p.
Because all possible values of p are just 1/2.

so, of course,
this cannot be your test.
Because p is the true value of p.
I don't know, in the case example,
I don't know what the true p actually is.
But under the null, if I say that the reality has
to be the null, and that's the only case in which I'm
interested in computing this probability,
because that's the definition of the type I error,
I actually know what this value is.
I know that if I'm under the null,
then p better be equal to 1/2.

## 07.04. Worked Example: Conclusion of a Two-Sided Test

So actually, let's look at the news on YouTube, which
is actually a one-sided test.
And we'll see how the natural quantity that comes as a cutoff
is 1.645, rather than 1.96, which
shows you that you're actually slightly less tolerant.
If this was replaced by 1.645, then there's
the entire range of values that was observed instead of 0.77,
which is between 1.645 and 1.96, which
would lead to rejecting H0 in the one-sided case,
but not in the two-sided case.
And so you want to reject.
You always want to reject, because rejection
means scientific discovery.
Remember, if I fail to reject, it just says,
well, you had a status quo, and you've
done a statistical analysis, and you've not changed anything.
So you really want to reject.
Rejection means scientific discovery,
means sociological discovery, means discovery from data.
And so you're going to try to find a rejection region which
is as big as possible.
So you want this number, here, in this case,
to be as small as possible.
So when you have one-sided, you might as well
take advantage of it.

Remark: A test with a smaller (asymptotic) level is more “stringent" than a test of the same form with a greater (asymptotic) level.

## 07.05. Worked Example: a One-Sided Test

I should pick one of those P's such
that this is true for any P in H0.
OK?
So which P should I choose?
Well, there's actually one P that's
going to work and not the other ones.
And that's by choosing P to be right at the boundary
of this guy.
what's happening is that you're just led to pick the P that is
the most likely to create confusion ,
because it's right at the boundary of the P's that come
from the alternative hypothesis.
And that's always going to be the case.

but what if I have the interval 01,
and somebody said H0 is P is in the interval 0.5, 0.6,
and H1 is P is not in this interval,
which means that theta 0 is this interval,
and theta 1 is the union of those two guys.
So which one is at the boundary?
Is it 0.5 or is it 0.6?
Well, there's two of them, right?
And what you just need to do is to compute this guy
for P0 equals 0.5.
Well, actually you should technically compute it
for all possible P0 in here, but I can promise you
that the worst case will be either this guy at the boundary
or that guy at the boundary.
And I'm sure you can all be convinced by that.
But then you really need to plug in the numbers
and compute whether for P0 is equal to 0.5
or for P0 is equal to 0.6, which one will actually
lead to the largest possible type 1 error.

this is just saying I reject when P hat is small, smaller
than what I haven't told you yet,
but my analysis of type 1 error led
me to conclude that it has to be smaller than 0.33.

the equality sign-- always goes on H0,

Let X1,…,Xn∼iidBer(p∗) for some true parameter p∗∈(0,1), and let ({0,1},{Pp}p∈(0,1)) denote the associated statistical model where Pp=Ber(p)

Suppose the null hypothesis is H0:p∗≤1/2
and the alternative hypothesis is H1:p∗>1/2. Let ψ continue to denote the **statistical test** we will use. (Recall that a test takes value either 0 or 1. Usually it is of the form 1(Tn>C) where C is a threshold to be specified and Tn is known as a **test statistic**. Be careful to not confuse (tests with test statistics.)

Remark: In general, we will describe the level of a test by the smallest possible level α, but this is not strictly necessary.


## 07.06. Behaviors of Type 1 and Type 2 Errors for One-Sided Tests

At μ=μ0 and when n is large, Tn∼N(0,1) by the CLT. Therefore, when n is large, the type 1 error Pμ0(Tn>qα) is geometrically approximately the area of the “right tail" of standard normal distribution defined by the line Tn=qα.

In conclusion, for any one-sided hypothesis test where the family of distributions is parametrized by the mean of the distribution and the variance is fixed for the entire entire family, the type 1 and type 2 error achieve their suprema (or maxima) at the boundary between Θ0 and Θ1. Therefore, the level and power can be read off at the boundary.


## 07.07. The p-value of a Statistical Test

as I shrink down my type I error,
the more constraint I put on this, the less I'm
going to be rejecting the null hypothesis.
OK, and that means that if I go down to 1%,
I put some ever stricter conditions for you
to actually claim that you've made a discovery.

OK, the p-value is what people produce in their papers
when they say, I've made a discovery from my data or not,
rather than saying yes or no.
So yes or no goes into the title of the paper.
People tend to turn their head to the right.
That's, you know, the verbose conclusion.
But the numerical conclusion that you see
is not the value of the test statistic.
It's not a number which is 0 or 1, which is
the value of your actual test.
It's actually a p-value.

And why do they report the p-values?
Because the p-value is something-- no matter
what tests you use, no matter whether you're
using Gaussian asymptotic distribution
or a different asymptotic distribution,
whether you're using the actual distribution of this guy, which
we said there's seven methods to perform this kind of test
for the confidence intervals-- no matter what you're actually
using, the p-value is something that
lives on the same absolute scale that everybody understands.
And the scale on which it lives is the same scale
on which alpha lives.
So it's basically answering all the questions
that you may ask that says, how about if I did this test at 5%?
How about if I did this test at 10%?
How about if I did this test at 2%?
The p-value says, here's the answer to all these questions.
And so rather than putting a cutoff on the space of where
my t-statistic is--
oh, sorry, yeah, my test statistic is--
which is the space of Gaussians, right-- the x-axis
of the Gaussians-- it actually places the cutoff on the area
under the curve scale.

The **p-value** is the alpha that I should accept so that my experiment can reject the null.

Our workflow before was to set the alpha, derive the corresponding threshold, run the experiment and finally check if the experiment allowed to reject the null under such alpha (yes or not).

Now our workflow becomes to run the experiment and find which is the alpha for which we could say that our experiment can reject the null.

OK, so a p-value is a level.
So it's an alpha.
It's the smallest alpha for which psi done
at test alpha rejects H0

So we know that as alpha increases,
I'm more and more likely to reject.
As alpha goes down to 0, I will stop rejecting after a while.

So when the p-value is small--
less than alpha-- you will reject at the test alpha.

this p-value is 4%--
then it means that you reject that 5% because 4%
is less than 5%.
So very small p-values means that you will reject
at lower and lower levels, OK?
If your p-value is 0.5%, you can afford
to reject at 1%, and at 2%, and 5%, et cetera.

The probability of type-1 error doesn't depend on your data, while the p-value is a r.v. that depends on the data.

And so this actually gives you a level of confidence.
It's actually replacing a binary answer-- yes, no, reject,
fail to reject--
by an actual number that tells you
how strongly did you reject.


## 07.08. Worked Example: Find the P-value

So let's finish this lecture by just running a couple examples
where the question is in all these examples,
let's compute the p value and conclude in terms of tests.

- For tests of type $H_0: \theta= k, H_1: \theta \neq k$ the rejection rule is: $\sqrt{n} \frac{|\bar X_n - k|}{\sigma} > q_{\alpha/2}$ and the p-value is $2*\Phi(- \sqrt{n} \frac{|\bar X_n - k|}{\sigma})$
- For tests of type $H_0: \theta \leq k, H_1: \theta > k$ the rejection rule is: $\sqrt{n} \frac{\bar X_n - k}{\sigma} > q_{\alpha}$ and the p-value is $\Phi(- \sqrt{n} \frac{\bar X_n - k}{\sigma})$
- For tests of type $H_0: \theta \geq k, H_1: \theta < k$ the rejection rule is: $\sqrt{n} \frac{\bar X_n - k}{\sigma} < -q_{\alpha}$ and the p-value is $\Phi(\sqrt{n} \frac{\bar X_n - k}{\sigma})$

What represent the p-value?
I observe some $\bar X_n$. How likely it is that the observed parameter (often the mean or a function of the mean) comes from the distribution with my supposed parameter ? If it is very small (i.e. $2*P(- |\bar X_n - \mu|)$ for a double side test) then I can reject the null and say it comes from something different.
That prob is the p-value.

And so if I plug in those numbers and q alpha over 2--
let's say, for alpha equals 5%, let's say this is 1.96.
So when I plug-in those numbers, what I actually get here is
the number that you saw before, which is--
or something that's similar to it.
And so what I found was 3.229.
And the question is is 3.229 larger than 1.96?
So do we reject or fail to reject?
We reject.
And it's actually-- again, we lose totally track
of how big this number was when we just say,
OK, now we walk home, and we reject.
This number is big.
It's big on the Gaussian scale.
It's really far in the tails.
But this is only true for Gaussian.
So what we do is we convert this number into a p value.

Remark 1: As a rule of thumb, a smaller p

-value implies that one can more confidently reject the null hypothesis. Hence, in this scenario, we can more confidently reject the null for experiment I than the null from experiment II. You can think of a p-value as a measure of 'how surprised' you are to observe the given data set under the assumption that the null hypothesis holds. In particular, the smaller the p-value is, the more surprised you should be.

Remark 2: A very large value of Tn
indicates a rare event under the null hypothesis, s we should be ‘more surprised' at the data if we observe a very large value of Tn as opposed to a small one. The fact that the p-value decreases as Tn increases is consistent with that intuition, since our heuristic is to be more surprised at very small p-values than large ones under H0.



## 07.09. Are there at Least 20 chocolate Chips on a Cookie?

$H_0: \mu \geq 20, H_1: \mu < 20$

estimated variance:
And we should use what's called the t-test.
But for n larger than 30, the t-test
and the test we're going to use are actually
numerically the same.

so, you know the [? sup ?] is achieved
at boundary mu equal 20.
And therefore, my rejection region should be, well,
reject when square root of n Xn bar minus 20 divided by, let's
put the number here, 4.37 is less than minus q alpha.

For this a one-sided test, the p-value is still defined to be the smallest level at which ψn rejects H0 on a given data set.


## 07.10. Is the False Positives Rate Below 95 Percent?

A positive is when you actually do a scientific discovery.
So that's when you actually reject a test.
And a false positive is what happens when you should not
have rejected this test but you said there is a yes.
There is something.
So in the case of breast cancers examination,
that means saying that something is a cancerous tumor when
it's not.

- **positive**: I reject H0 in favour of H1. It's not a normal cell, it's a cancers
- **false positive**: I reject H0 in favour of H1 when it is actually H0, I commit a type-1 error. I claim it's a cancer when it is not.

And so it doesn't have to be a statistical test.
A false positive is just like a false alarm.
Well of course, and you like to control the false alarms,
the same way we like to control the type I error,
because this is something that's quite dangerous.

now, you could see also that the most dangerous one
is the one where you don't go through surgery when
you actually have a cancerous tumor.

And so what people are controlling
is the probability of this happening.
And then, just like we did, they cross their fingers
really hard about what's happening
for the false positives.

So those are actual numbers.
It turns out that the state of the art
is that 95% of breast cancer surgeries are false positives.
People detect a tumor, and they're going to say,
I don't want to take any risk.
Just go through surgery.

you still want
to preserve the same of what's called
true positives, the one that should actually go to surgery.

CSAIL: MIT Computer Science & Artificial Intelligence Lab

after surgery, of course, you can check whether you--
you can do a full biopsy and check whether it was OK or not.


What is the model here for our data?
What kind of data did we collect?
Bernoullis?
They're Bernoullis.
So they're IID Bernoullis.
And what are the observations?
Well, they're precisely the ones that said,
is this particular tumor--
was this particular-- so here we only work with benign tumors,
and the Bernoulli is 1 if the algorithm said it's cancerous,
and it's 0 if it said it's not.
So it's 1 if I have a false alarm,
and it's 0 if I don't have a false alarm.
All alarms are false.
So it's 1 if I have an alarm, and 0 if I don't have an alarm.

How could I actually improve that?
What kind of test could I have written
that would actually have led to maybe a slightly
more reasonable value?
Yes?
[INAUDIBLE] a significant improvement.
Exactly.
Right.
Well, significant is what we do.
But we could actually quantify the improvement
that we're looking for.
I could want to write a paper that's
called Machine Learning Algorithm Drops Rate of False
Positive from 95% to Below 70%.
And then I could actually write the whole thing by replacing
this by 0.70.
Agreed?
And then I could actually have numbers that are actually
slightly more reasonable if I start plugging in 0.70 here
because this would be 0.69, this would be 0.70,
and things would not be as completely atrocious.

I could test if the algorithm return false positive below 70% with still a decent p-value rather than just claiming is below the status quo of 95%



## 07.11. P-value Exercises

Remark: In general, we will compute p-values using the CDF of the underlying distribution. Although the p-value has a rather complicated definition, in the case of most of the models we work with, it can be computed in a relatively straightforward fashion.

It is very important in practice that one specifies the null and alternative hypotheses before conducting the experiment. Otherwise, it is possible to ‘tweak' the hypotheses. This can artifically result in a lower p-value, which would favor the scientist or company's desired conclusion.
