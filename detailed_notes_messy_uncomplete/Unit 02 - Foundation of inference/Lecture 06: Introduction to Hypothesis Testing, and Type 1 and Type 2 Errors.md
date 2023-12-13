# Lecture 06: Introduction to Hypothesis Testing, and Type 1 and Type 2 Errors

## 06.01. Introduction to Parametric Hypothesis Testing

Objectives

At the end of this lecture, you will be able to do the following:

- Reformulate experimental questions in terms of a hypothesis test by specifying an appropriate null hypothesis and an alternative hypothesis .
- Design statistical tests to decide between a null and alternative hypothesis.
- Identify a hypothesis test as a one-sample or two-sample test .
- Compute the type 1 error and type 2 error associated to a statistical test.
- Describe the difference between parametric hypothesis testing and parameter estimation .

## 06.02. Introduction to Hypothesis Testing

We saw estimation (one point), CI (bars). What are you gonna do with it ?
there's many scientific questions that you
can reformulate by just binary questions about what
your parameter looks like.
And this is precisely what hypothesis testing actually is.

And we'll ask a very simple scientific question
on the basis of theta.
Is method number one better than method number two?
Or are those methods essentially the same?

Here, I don't give you the entire list
of 72 boarding times for rear to front and 56 boarding
times for WilMA, but I'm giving you
what's called summary statistics, which
are the average and the standard deviation.
Those are actually-- so if you were
to take a mathematical statistics
class at a graduate level, you would see the notion
of sufficient statistics.
And well, sufficient statistics essentially
means that they're sufficient for a particular task.
And here, those two statistics will be sufficient.
So it's a sufficient compression of the data
to be able to perform the hypothesis testing
problem that we want to know.

Now, it's certainly not enough to decide,
what is the 90th percentile-- to estimate
the 90th percentile of the boarding time for JetBlue.
If you want to some sort of worst case
upper bound of what will be your boarding time for JetBlue,
you might want to look at the entire list of flights
rather than just the mean and the standard deviation.
But for this purpose, this is sufficient.

Modelling the times:

So we need to make some assumptions.
This is a boarding time, so it should
be a non-negative number.
And so I'm going to totally violate this,
and I'm going to actually model those as a Gaussian

the probability
that I get negative will be really infinitesimal,
and it won't really matter.

so the scientific inquiry here is,
are those boarding times the same,
or is one better than the other?

[$\mu$] this is my expected boarding time
across the population of all possible flights
all the time ever.

So we're trying to extrapolate some scientific inquiry
among the entire populations of flights.

And this is the **status quo**, meaning, well, a priori,
before I collect any data, before I formulate
my scientific inquiry--
I don't have any reasons to believe that one
is better than the other one--
so I'm going to start with the status quo
as being mu1 equal to mu2.
And I'm going to try to collect data and see
if I can prove that.

If you think of a biological example,
a biological example would be that gene
has no particular effect on diabetes.
I'm trying to get data to show that this particular gene has
effect on diabetes.
It's hardly the case that you believe
that the gene has some effect on diabetes,
and you're trying to collect data to show that it does not,

Assumptions:

- Xi iid
- Yi iid (not necessarily among the same distribution of Xi)
- Xi independent of Yi (so the joint distribution is the product)


## 06.03. Statistical Model of a Two Sample Experiment


## 06.04. Introduction to Hypothesis Testing 3

Making modelling assumption that $\mu_1$ is greater than $\mu_2$, or that thay are equal, but not allowing that "$\mu_1 < \mu_2$".

Now you could say, why do you do this?
You're sort of tying your hand in the back.
And the idea is because when you do this,
you squeeze more out of your data.
The more you reduce the candidate,
the more you reduce things you don't know,
the more you're squeezing-- the more information you're
squeezing out of your data.

because I just
assumed that they were independent samples.
So I don't actually have to model jointly.
And I'm going to throw in the directional independent.
So it's really describing the joint distribution of x and y,
which is the product.

(x, y) is just a pair of independent random Gaussian
random variables.
So I could even write their PDF, which
would be just the product of the two PDFs.

(on not allowing $\mu_1$ being lower than $\mu_2$):
So again, in this case, we did not allow that this happens.
And this is definitely a risk.
So how is this done?
I mean, that's a very valid question.
You could say, well, I don't know.
Why would I actually not formulate that?
I'm risking this.
So in practice, good and valid scientific inquiry
should start from just making this assumption
and then collecting data.
Now, here you could cheat and say,
well, I collect data first, and then
I'm going to start making my hypothesis testing.
Doing this is precisely the reason
why John Oliver talks about p values on TV.
It's because this is something that leads to wrong--
to bad science.
This is something that leads to actually making
the wrong conclusion.
If you first look at your data and make
it your assumptions based on this,
then it's more likely that your assumptions
are going to go your way.

So here, I could have looked at it
and say, well, it looks like [INAUDIBLE] is much better.
That's what I'm going to test for.
If you do this, all the conclusions that you're
going to be making, all the guarantees
on the performance, on the amount of error that you're
likely to make are violated.
None of the things I'm going to teach you will be correct.
You cannot do this.

So it's kind of a weird thing.
You should really close your eyes.
But if you think about being in a lab, being a scientist,
you should actually make your assumptions not based on data,
but based on maybe some biological process,
some physical process, how you think things actually work.

So, importnat: first make your assumptions, than run the experiment. Don't make assumption based on data!


## 06.05. Heuristics for Two Sample Tests

so there's one piece of terminology,
which is actually quite important here,
is we have two samples, right?
One for JetBlue, one for United.
This is the overwhelming majority
of hypothesis testing problems.

You will hear about two sample t-tests, for example.
And that's just because one is often used as a reference,
and the other one is used as the thing
you're actually trying to test.
So for example, you're testing the efficacy of a drug,
and you have a control group, which are patients
that are given a placebo.
And you have a treatment group, which
are patients that are actually given the drug.
And rather than saying the placebo has no effect,
and I'm going to test whether the effect of the drug
is larger than 0, what you say is,
well, there is a placebo effect.
And I want my drug to perform better than that.
So at the same time, you're trying
to get to catching from your data what
is the strength of the placebo effect.

One sample test:
So you typically have those two things,
unless you have a benchmark, which is totally clear.
I claim that my car goes faster than the previous model
that I made.
The previous model that I made has been established
to go at 180 miles per hour.
And now I can just run a bunch of tests on this car
and see if a bunch of them go faster than 180.
I don't need to estimate this 180.

I didn't tell you what kind of test.
T-test is just a kind of test.

OK, so let's make this intuition more precise.
And just check what are the fluctuations, right?
And by that, I mean what is the distribution of xn bar and yn
bar?
That's the real question.
In general, it's going to be hard to answer like that.
But using central limit theorem, we're
going to be able to talk about their syntactic distribution.


## 06.06. Heuristics for One Sample Tests

And the key thing here is that I actually,
for a one sample test, they typically give you a benchmark.

To measure waiting time at the ER:
You cannot just go at 5:00 AM every day when there's been
a shooting or something.
So just go on like truly random choice.
OK, and here, I'm really not making all the modeling
assumptions I should be making.
Maybe I should put some exponential distribution here.
Maybe I should put some normal distribution.
I'm just telling you mu.
Let's just keep it vague for now.

Everybody sees the difference between one sample and two
sample test?
So often, you're in the presence of a two sample test
because there's no one to give you this magical number 30.
OK, so here, you're comparing to some number that's established
by, say, national statistics.
And that's often how those numbers come, or maybe
from well-established facts in the past,
for which there was so much data.
Actually, those numbers are probably estimated themselves,
but they're estimated from samples of size a million
or something like that.
So people sort of are happy to make that jump to say, well, 30
is basically the limit of yn bar, OK?

"When performing hypothesis testing (as above), we are not necessarily interested in finding an estimator for μ. Rather, our goal is to decide find out if mu has some particular property (for example, whether or not mu lies in a certain region)." is correct. The question stated above is: Is μ>5.5 OR is μ≤5.5?.To answer this question, we do not necessarily need to come up with an estimator for the true parameter. It would be enough to decide whether or not μ lies in some particular region

## 06.07. Two Sample vs. One Sample Tests

- A **one-sample test** is a hypothesis test where an unknown parameter μ is to be compared to a known reference value. For example, the U.S. heights example was a one-sample test because we wanted to compare the unknown mean μ from 2018 to the known average height from 2012, which was 5.5.
- A **two-sample test** is a hypothesis test where two unknown parameters are compared to each other. For example, the clinical trial example is a two-sample test because we want to compare the unknown $μ_{drug}$
to the unknown $μ_{control}$ to quantify the drug effect.

## 06.08. First Example

Rather than telling you, well, here's
a list of 4,971 zeros and ones, I'm just telling you,
well, there is a list.
And I'm just telling you there's 32% of ones in there.

If my real mean is the assumption I make, then I could use that number
to standardize my Xn-bar and make it something which
is almost a Gaussian, right?

Because the number I get when I plug in the real value of 0.32
for Xn-bar, the number I get should
be a plausible realization for a standard Gaussian.
If I plug in Xn-bar here and I see 5 million,
5 million is not a plausible number for a standard Gaussian.
So if I see 5 million here, this is not holding.
So it means that, at some point, I
made an assumption which was not true.

So this is basically the basic principle
behind hypothesis testing.
You have a hypothesis.
Well, just plug it in and see how plausible
the number that you saw in the end was from this distribution.

So I have square root of n times Xn-bar minus blah, blah, blah.
And if I compute it, if I plug in 0.33 for the assumed $\mu$, 0.32 for Xn-bar
and I plug in 4,971 for n, then the number I get is minus 1.5.

1.645
is my 90th percentile

And this number (1.5 - my X_n once standardized) is pretty reasonable, right?
I mean, it's not like I got a number which was, like,
all the way to the edge here.
I've got a number which is, like, somewhere
in the bulk of my Gaussian.
So this number is actually plausible.

The fact that I don't see 0 can
be explained by the fluctuations of my random variable Xn-bar.

I'm not telling you exactly what the distribution of Xn-bar
is, but I'm telling you that, once you re-normalize Xn-bar,
the fluctuations that you will see
are that of a standard Gaussian.

And you might want to say that anything that's
beyond 99% of the realizations of a Gaussian
around 0 I will consider as not being reasonable.
But you could go down to 90%.
You could go up to 99.999%.
Depends on what your application actually is.
And we'll see precisely what the consequence
is in terms of the errors you might be making when
you make these conclusions are.

And this is actually a lot of what statistics is about,
is to take a problem which is--
well, here, it's on the scale of a proportion of people,
so on the scale of 32%.
It might be on the scale of waiting time in the ER room
in terms of minutes.
Well, I have another one in terms of minutes
when it comes to boarding time.
And then, taking those guys and mapping them
into a scale which is in terms of percentage of a Gaussian,

So the percentage of a Gaussian will be some universal scale
that we have in mind.
I'm willing to tolerate 99% of probability,
or I mean 1% of error, which means that I
want a confidence level of 99%.
And this is the scale at which the statistician should always
be thinking.
This is the scale he's trying to communicate
with the practitioner and say, how much error are you
willing to tolerate?
That will be a number which will be some number between 0 and 1.
And what he needs to do, or she needs to do,
is to map it back onto the scale of the problem itself-- back
to minutes or back to percentages of Americans.

The sample mean $\bar X_n$ lives inside an interval of radius Constant×1/√n around its expectation. This heuristic will be useful for designing hypothesis tests.

## 06.09. Example: Is this Coin Fair?

I started with this assumption, that this guy was equal to 0.5.
And I could not find a contradiction.
But it doesn't mean that it's actually equal to 0.5.
I just couldn't find evidence that it was not true,
using this particular reasoning.

I can' say "The coin is likely to be fair", but rather "it is not unlikely that the coin is fair". I can't support accepting a different hypothesis of the coin being unfair.

## 06.10. Statistical Formulation of Hypothesis Testing

why I made this like weird mathematical formula,
is because I want to be able to talk
about all possible tests all at once in one unified theory.
And then I'm going to be able to dispatch all these things
in particular application.

So I know if my model is well specified,
and if theta is identifiable, I can basically
go back and forth between a space of thetas
and a space of probability distributions.

The hypothesis, again, is something
that we formulate about.
It's a scientific hypothesis that we formulate
in terms of the parameters.

The hypothesis, again, is something
that we formulate about.
It's a scientific hypothesis that we formulate
in terms of the parameters.
OK?
So they start from some English things.
Oh, do people tend to turn their head to a particular direction?
And then we formulated that into saying is p different from 1/2?
Is the waiting time at the Princeton-Plainsboro Hospital
worse than the national average?
We made a statistical model, and we turned that
into a question, which was very mathematical.
Is mu larger than 30?
OK?
Is there a difference between WILMA and rear to front?
We turned that into some questions about mu1 and mu2.

So now, we go from some plain English scientific question
into a question that's formulated in terms of what
does your parameter look like?

And here, the question I'm asking
is, does theta belong to theta 0,
or does theta belong to theta 1?
That's what I'm asking.
You have two possible things.
I'm restricting, saying, well, I know that theta does not
belong to this guy.
And all I'm asking from my theta is, is theta here or is theta
there?
That's what I'm asking.

So you can see why it's important that those guys [paramenter spaces for $\Theta_1$ and $\Theta_2$] are
disjoint because the answer cannot be oh,
it belongs to both.

So this is the abstract setup that we have.
We're asking if theta belongs to theta 0 or theta 1.
And the first one, H0, everything indexed by 0
is called the null hypothesis.
This is a very important notion.

So what we're doing is, so in the terminology
that we say is we say we test H0 against H1, OK?
So we're not testing if H0 is true.
We're just testing H0 against **a very specific alternative**,
a very specific alternate reality.

So this is why you can actually allow yourself to do this.
Because you could say, OK, is it more likely
that I am a man above 30 or not?
Well, OK, a man above 35 or not?
That's a hard question.
And then you could say, are you a man above 35,
or are you a goat?
OK?
And one is actually slightly easier than the other one.
Because I just really restricted the thing
of not being a man over 35 in two very specific alternatives
that are very unlikely.

we want to decide whether to reject H0.
OK?
So we're trying to look for evidence
in the data that would say that H0 is not true in favor of H1.

So th way you want to think about it
is that H0 is this small island.
It's my theta 0.
And then I'm looking towards a particular direction,
which is H1.
And this is my reality, and I want to say,
is my theta telling me that I'm actually here?
Is my theta telling me that I should really
go in that direction?

So we're going to try to decide if my data can reject H0.
And so we look for evidence against H0 in the data.
We're never looking for evidence for H0 in the data,
only against.
And that's why we can never conclude
that H0 is true because we never really proved anything.

let's assume that H0 is true,
and let's see if we find a contradiction.
But if you don't, it does not mean that H0 was true.

So that's why H0 and H1 do not play a symmetric role.
The data is only used to disprove H0.
OK?
In favor of H1.

so now if they don't play a symmetric role,
it's going to be a very careful job to decide which one is H0
and which one is H1.
Think of the ER example.
I want to decide whether my waiting time is larger than 30.
And I could write two hypothesis testing problems.
One is H0, mu larger than 30 versus H1, mu less than 30.
So that's one hypothesis testing problem.
Another one is H0, mu less than 30, H1, mu larger than 30.
Right?
Those are two hypothesis testing problems.
And since I said that H0 and H1 do not play a symmetric role,
those are actually different things.
And what I'm trying to do is to find evidence
in the data for H1 or against H0, if you will.
OK?
So it depends on who I am.
If people actually want to prove that the Princeton-Plainsboro
Hospital has longer waiting times, right?
Let's say I'm really trying to prove this.
Which one is the two that I should be choosing?
First one?
Who says the first one?
Who says the second one?
Yes, the second one.
I'm trying to find evidence in the data
that I'm worse than average.
OK?
And by default, I should assume that the Princeton-Plainsboro
Hospital is innocent of being worse
than average in the nation.

So it's this _innocent until proven guilty_.
And what is the verdict that's passed by juries?
Is it innocent at the end?
No, they say not guilty.
We did not find enough evidence to prove that you were guilty.
That is your status quo, and the burden
is on the trial to bring evidence.
But it does not mean, if you walk away free,
does not mean that you are innocent.
It's just that we were not able to bring enough evidence.
Agreed?
So that's a good analogy to keep in mind.

## 06.11. Hypotheses Formulation for Drug Effectiveness Test
## 06.12. Statistical Tests

Here we have H0 or H1.
So we're going to turn it into a function that
takes our data and maps it to either 0, if we want
to conclude H0 or to 1 if we want to conclude H1.

It's OK to have a test function that concludes at 0.
But this does not mean that H0 is true.
It just means that your test preferred H0,
but it does not mean that H0 is true.

OK, so now, I'm going to form what's
called a test statistic, which is really just a function.
It's a function that takes your data
and turn it into the number 0 or the number 1.
OK?
That's what a test statistic is.
Remember, **a statistic is a function
of the data that's measurable**.
It can depend on the parameter.
It can depend on anything you want.
But a test, unlike an estimator, is not
living in the same space as theta.
It's actually just 0, 1 [in this case we are using for H. testing].
any such function has to be an indicator.
It's the indicator of where it's equal to 1.

OK, so psi of x is just the indicator
of psi of x is equal to 1, which is a complete tautology.
But just so you know, you can always write this thing
as indicator of something, OK?
And so that just means that if x is my data, psi of x
is a function of my data, and so it's an indicator of what
my data looks like.

So in the cone example, we had two things
we wanted to test if, well, a coin by default should be fair,
there's no reason why it should be unfair.
And so our status quo will be that p is equal to 1/2,
and our alternative will be that the coin is unfair.
We have no reason to believe that it's
going to be biased towards heads or tails.
So we're just going to say it's not equal to 1/2.
OK?
So here, I really have H0 and H1 that
map the entire possible interval 0, 1 of the values
that p can take.
Theta 0 and theta 1 cover all of the interval 0, 1.
And they're disjoined.
This is called a **partition** of 0, 1.

So all I have to say is when I want this guy to be equal to 1.
So I want to conclude that it's different
when xn bar is significantly far from 1/2, right?

I want to reject when xn bar is far from 1/2,
and another way to say this is that absolute value
of xn bar minus 1/2 is large.

the cutoff c is exactly the one that tells me, is this too
large or is this not too large?

That's what I have to decide.
And so now I have to decide, well, what is this threshold c?
This is precisely the cutoff that we have to decide.
Right, then that's the last question that we have here,
how to choose the threshold c.

A **statistic** is, intuitively speaking, a function that can be computed from the data.

A **(statistical) test** is an statistic whose output is always either 0
or 1, and like an estimator, does not depend explicitly on the value of true unknown parameter.

1(A) is the **indicator** (function) defined as follows: 1(A)={1 if A occurs; 0 otherwise}

It is useful to keep in mind the following mnemonic:
- ψ=0 ⇒ H0
- ψ=1 ⇒ H1.

Of course, the implications above are informal and should not be taken literally. To be precise, we say that if ψ=0, we fail to reject H0, and if ψ=1, then we reject H0 in favor of H1.


If we assume the null hypothesis H0:μ=0, then since the variance is known to be 1, the CLT guarantees that

$\sqrt{n}\bar X_n \xrightarrow[n \to \infty]{(d)} N \sim (0,1)$


The quantiles of N(0,1) can be understood using tables or computational software, so if n is very large, then we can approximate the probability of our test ψ rejecting or failing to reject under the null hypothesis.


## 06.13. Type 1 Error of a Statistical Test

I'm trying to find a C that will optimize something.
And when a test makes a decision,
the performance should be measured by its error, right?
It can make an error.
It could say, oh, I believe that H0 is not true,
but actually it is true.
And there's tests that make this error constantly,
tests that says, I believe that H2 is not true,
whereas it is true.
Those are the tests that always reject, for example.
If I take a test that says, reject for C is equal to 0,
for example, this will always be larger than 0.
And therefore, this test will always reject.
So it is a test, but it's pretty bad at controlling
the error that consists in saying,
do not reject when you should not.

A **rejection region** is just a subset of the possible samples
that would lead to a rejection.

So I have a function that takes a sample, that
takes a set of n observations, and just maps it to 0 1.
Rejection region is just the set of observations
that would lead to the value 1.

$\psi(x) = \mathbf{1}_{x \in R_{\psi}}$

Psi is the indicator function that take value 1 when x is within the rejection region.
So tautology again.
And the rejection region, this is what it is.

- **Type 1 error (or "$\alpha$"): I reject H0 when it is indeed true (too sensitive test)
- **Type 2 error: I fail to reject H0 when indeed H1 is true instead (too little sensitive test)



OK, so remember which one it is.
This is just the rule.
We could have called one the other.
But we just have those names, type 1 and type 2.
So let's just check that this is exactly what I wrote.

### Type 1 errors

The type 1 error is usually denoted by alpha.
So it's a function of your test.
The test, this is the error of a test.
And this is the probability that you reject.

The type 1 error is usually denoted by alpha.
So it's a function of your test.
The test, this is the error of a test.

what is the probability of making
this type of error?
Now, the thing is that H0 is not just one reality.
In the case of the fair or unfair example,
H0 was just p is equal to 1/2, which is certainly
one single reality.
Theta 0 is just reduced to a singleton 1/2.
But there are examples where this was not the case.
For example-- so which one did we
decide to take, this guy, right?
This is not a single reality.
If I tell you, compute the probability of type 1,
you're going to have to decide, what is the probability you
want to take?
And for each possible values of mu that's less than 30,
you would compute a different probability.
And so you have an entire function

And so you have an entire function
depending on what the true mu is, what the actual--
H0 is just a collection of mu's.
And when you want to compute a probability,
this is a function for all possible mu's
that you can have.

alpha of psi is a function from theta 0 to R
that maps in theta 0 to the probability of psi equal to 1.
So I could replace R with the interval 0 1
because I know that this will always
spit out a probability which is a number between 0 and 1.

## 06.14. Example: a Non-Asymptotic Test for the Support of a Uniform Variable
## 06.15. Type 2 Error and Power of a Statistical Test

when H1 is true,
there might be several possible values of H1.
These are the ones that range in theta 1.

**Power** of a test: there is a third notion, which
we won't use as much.
It's just 1 minus the probability of type 2 error.
So that's the probability that you
reject when you really should.
That's a good thing.
If this number is large, usually you have a powerful test.
That's a good thing.
So this is a number between 0 and 1.
But you look at the worst possible value
that this number can take among all possible realities that
are offered to you by H1.

Speacking about a chart where $\mu$ is on the ascisses (with $\Theta_0$ being in [0-30 and $\Theta_1$ being [30,inf[) and $P(\psi = 1)$ is on the ordinate.

So if I look at the probability that psi is equal to 1,
I want this probability to be small here [mu=0-30]
And I want this probability to be large here [mu > 30].
And as you notice, this thing tends
to be continuous for reasonable tests.
There is no reason why this thing should jump.
So meaning that I'm going to have a smooth transition,
and hopefully it's going to be sharp and go fast.

Now, what the threshold is going to do for me--
remember this C, this cutoff that we have to decide.
It's going to move this point up and down for us.
OK.
And moving this point is going to have some effect.
It's going to keep this guy below the threshold,
but it's also going to increase the probability of rejecting
over there.
And so that's how we're going to have to make our trade-off.
That's how we're going to have to make some principled choices
about how to pick this guy.
And this is not going to be a universal choice.
I'm just going to try to convince you that we're making
at least a principled choice.

About using the max Xi for a test on the upper part of a uniform:
This test is rather extreme example in that it minimizes type-1 error while maximizing the type-2 error. In general, we want to design tests so that the type-1 and type-2 error are both controlled. These types of trade-offs are crucial to consider in the context of hypothesis testing.


## 06.16. Level of a Statistical test

- **Power** of a test ($\pi$): The min probability of rejection in $\Theta_1$, i.e. the max prob. of an error of type 2
- **Level** of a test ($\alpha$): The max probability of rejection within $\Theta_0$, i.e. the max prob of error of type 1

Power and level do not necessarily coincide (But they do if the function "probability of rejection" is continuous over $\Theta$).

so the number that I see here, the number
that's basically dominating all the probabilities of type I
error over theta 0 is called the "level."
And it's often denoted by alpha.
So we say that a test has level alpha.
So this is an extremely important notion,
because I will say "build a test at level alpha."
That's typically how you describe a test.

So I give you two hypotheses.
You know, I translate into mathematical language
my scientific question.
And then I say, for those two hypotheses
I want you to build a test.
But I'm going to have to tell you somehow
how to pick this point, here.
And the way I'm going to do it is, rather than saying,
do it for the threshold C--
Because I'm going to give you some flexibility.
I'm going to say, I want this test to happen at level alpha.
And I want this test to happen at level alpha,
and what it's actually saying, is
I want my probability of type I error
to be controlled by alpha.

So you need to think, just like for confidence interval,
you know, alpha is equal to 5%, 1%--
like, small values, typically, right?

You want to control the probability of type I error.
So this goes back precisely to the
"innocent until proven guilty" type thing,
the asymmetry that we have between the two hypotheses.
What the type I error says, it says,
if I have an innocent person I want
the probability that I send them to jail to be at most 5%.

So let's think about this example.
H0, innocent, H1, guilty.
And I'm building a test.
And I want my test to have zero type I error.
How should I do this?
Yeah.
Let everyone go?
Let everyone go.
Right?
This gives me zero type I error.
How could I actually make a test that has type II error which
is equal to zero--
the Type II error, here, being the probability of letting
a guilty person go free?
Right?
How can I make it zero?
I send everyone to jail.

And so there's this trade-off.
And clearly it's impossible to make the type I error go to 0
and the type II error go to 1.
There's just uncertainty, and you can never
know for sure if someone is innocent or guilty,
so you're going to have to make a cutoff.

The asymmetry [between H0 and H1] comes from the fact that there's only one
of the two errors that we will control,
and we're going to cross our fingers really
hard for the other one.

And the way we're going to control the first--
one of the errors, we're going to first focus on the type I
error, and we're going to say, do your best,
under the constraint that the type I error is at most 5%.
Do your best, under the constraint
that you send to jail at most 5% of innocent people.

And we're going to try, if possible,
to make this inequality, $\alpha_{\psi}(\theta) \leq \alpha$, an equality.

this is going to be very hard--
like, mathematically-- so we're going
to be able to make this happen only asymptotically,
just because we have this Gaussian approximation.

the asymptotic level is something that says,
well, the limit, as n goes to infinity, of alpha of psi,
which depends on my sample size, will
go to something which is less than alpha.

So, in general, the test has the form indicator
that some random variable Tn, which is a statistic,
exceeds some threshold c.
And Tn will be called the "test statistic",
and the region is as we said.

So, typically, Tn will involve some renormalization of xn bar,

Remark: The reason behind increasing the level in this example is to increase the power of the test from 0. In general, one of the first requirements of a test is to have a small-enough level so that the probability of concluding a false positive, (i.e. rejecting the null while the null is true) is controlled.

Remark: Notice the threshold C depends on n, α, as well as the value of θ at the boundary of $Θ_0$ and $Θ_1$.


## 06.17. One Sided Versus Two Sided Tests

So **one-sided test** is of the form where
I'm either less than something or larger than something.
That's the one that's trying to push in one specific direction.
One that believes that, I think there's
only one alternate reality that's possible.
Either I'm below a level or I'm above a level.



The other one, **two-sided test**, is the one that's trying to discover something,
that could go either way, but where
it's important to be something in the middle.
For example, when you flip a coin,
and you want to test whether it's fair or unfair,
you don't want to test whether P is equal to 1/2
versus P is larger than 1/2.
You want to test whether P is equal to 1/2
versus P is different from 1/2.
A priori you have no reason to believe that it's going
to go one way or the other.
So two-sided means you can be on both sides of theta 0
at the end.
And notice here, that this is in the case where theta 0 is just
a singleton.
The two-sided version of the ER example would be mu equals 30 versus--
so that's an H--
versus mu not equal to 30.
And that's what you would do if you said,
is Princeton-Plainsboro truly different
from the national average?

And as a rule of thumb, just write it
down at the back of your mind, if you have a two-sided test,
you're going to have an absolute value in your test.
If you have a one-sided test, you won't.
