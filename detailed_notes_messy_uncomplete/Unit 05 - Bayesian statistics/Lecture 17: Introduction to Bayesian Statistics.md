## Lecture 17: Introduction to Bayesian Statistics

### 17.01. Motivation



### 17.02. Objectives
Bayesian Statistics Part 1

At the end of this lecture, you will be able to do the following:

- Describe the Bayesian approach to statistical decision making.
- Explain the mechanisms of the Bayesian approach, particularly the prior and posterior beliefs .
- Understand the role and significance of the prior distribution in a Bayesian set-up.
- Identify the Beta distribution and its role in Bayesian statistics as a prior distribution on a one-dimensional parameter.

### 17.03. Introduction to the Bayesian Framework




    The first choice "In Bayesian statistics, the true parameter is modeled as a random variable, or at the very least, the uncertainty regarding the true parameter is modelled as such" is correct. In the Bayesian set-up, we model the true parameter as a random variable and update its distribution as we receive more data.

    The second choice "In most practical applications of Bayesian statistics, we are trying to estimate the true parameter as accurately as possible as possible only from the observation data and our chosen model." is incorrect. In the Bayesian set-up, we do not even assume that there exists a true parameter, or at least we model it as a random variable to represent our uncertainty. This is rather the approach of frequentist statistics.

    The third choice "In Bayesian statistics, we use the data to update our prior belief about a parameter and transform it into a posterior belief, which is reflected by a posterior distribution." is correct. Our prior belief is captured by the prior distribution on the parameter, and we can use Bayes' formula to update the prior distribution as we receive more data.




### 17.04. Basic Example of the Bayesian Approach
### 17.05. The Prior Distribution

And we'll see that using Gaussian as prior, when
we have Gaussians as observations
make our life remarkably nice when
we're actually trying to compute the posterior distribution.
And so there will be this trade off
about having a prior that really captures, you know,
something which is faithful to reality
when it comes to your parameter and also
having some things that's actually easy to compute.

### 17.06. Review: Conditional Likelihood and Bayes' Rule
### 17.07. The Posterior Distribution, Bayes' Formula

The likelihood function was the product from i equal 1 to n of,
let's say, f theta of little xi, which is just the joint pdf.
And it's the joint because I take the product
because they're independent.
If they were not independent, I would just write the joint pdf
as such, OK?

So as you can imagine, you don't actually
need to understand really what's going on because that's
a pretty simple rule.
Oh, I have a likelihood.
If I were a frequentist, I would just maximize this thing.
Well you know, I have a prior, too.
Let me multiply those two guys.
And there you go, I have a posterior distribution.

The denumerator is just a costant to integrate to 1 that doesn't depend on theta, I don't need it for maximising the function to find the mle of the posterior.

 it is possible for the likelihood function to skew the posterior probability in the other direction.



### 17.08. Warm-up / Review: Proportionality
### 17.09. Bayes' Formula with the Beta Distribution
### 17.10. Worked Example Part I
### 17.11. Worked Example Part II
