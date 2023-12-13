# Unit 03

using Distributions, SymPy, StatsPlots, LinearAlgebra



R = 0.645
n = 100
α = 0.05
1-α/2
Z = Normal(0,1)
q = quantile(Z,1-(α/2))

f(x) = exf(-x)

plot(x -> exp(-x),0,3)

log(1)

plot(x -> x^2,-10,10)
plot(x -> sqrt(x),-10,10)
plot(x -> log(x),-10,5)
plot(x -> -log(1/x),-10,5)
plot(x -> cos(x),0,3)
plot(x -> -cos(2*x),0,3)
plot(x -> (x-2)*(x-3)*(x-2)*(x-5),1,5)

@vars x

myF = (1/3)*x^3 -x^2 -3*x +10

solve([myF],[x])

SymPy.solve([Eq(myF,0)],[x])

plot(x -> (1/3)*x^3 -x^2 -3*x +10,-5,5)
plot(x -> x^0.99,0,5)
plot(x -> -exp(-x),0,5)

M = sympy.Matrix([[-4, sqrt(2)], [sqrt(2), -5]])
dict_eig = M.eigenvals()
# ..or..
M2 = [[-4 sympy.sqrt(2)]; [sympy.sqrt(2) -5]]
M2.eigenvals()

@vars x y
df1 = -4*x+ sqrt(2)*y
df2 = sqrt(2)*x -5*y
solve([df1,df2],[x,y])

## Homework 4

### Homework 4.3: concave functions
plot(x -> -x^4+x^2-40*x,-1/12,1/12)
plot(x -> 1/(exp(x)-1),0.1,2)

S = [[1,0,0,0] [0,1,0,0] [0,0,1,0] [0,0,0,1]]
a = det(S)
iS = S^(-1)

is = inv(S)

## Lecture 11

### 11.8
x = [0.5,1.8,-2.3,0.9]
xsq = x.^2
m1 = mean(x)  # (x[1]+x[2]+x[3]+x[4])/4
m2 = mean(xsq)
μ = m1
σ = sqrt(m2-m1^2)

### 12.6

mydata = [0.5,1.8,-2.3,0.86,0.32]
sort!(mydata)
μ   = sum(mydata)/length(mydata)
med = mydata[Int((length(mydata)/2)+0.5)]
mydata2 = [0.5,1.8,-23,0.86,0.32]
sort!(mydata2)
μ   = sum(mydata2)/length(mydata2)
med = mydata2[Int((length(mydata2)/2)+0.5)]

# Understanding median as E[|xi - mu|]
using Distributions, StatsPlots
k=2;θ=2;
obs = rand(Gamma(k,θ),5000)
plot(density(obs)) # or plot(Gamma(k,θ))
candidates = 0:0.01:(k*θ*10)
function findMedian(obs,candidates,lossFunction=abs)
  score  = +Inf
  median = 0
  for c in candidates
    candidateScore = mean(lossFunction.(obs .- c))
    if candidateScore < score
      score = candidateScore
      median = c
    end
  end
  return median
end
function huberLoss(x,δ=0.01)
  if abs(x) <= δ
    return x^2/2
  else
    return δ*(abs(x)-δ/2)
  end
end
μ = k*θ
medianWithAbs       = findMedian(obs,candidates)
medianWithHuberLoss = findMedian(obs,candidates,huberLoss)

# With Laplace distribution
μ = 4; b = 1
d = Laplace(μ,b)
plot(d)
obs = rand(d,5000)
plot(density(obs)) # or plot(Gamma(k,θ))
candidates = 0:0.01:(μ*10)
medianWithAbs       = findMedian(obs,candidates)
medianWithHuberLoss = findMedian(obs,candidates,huberLoss)

### 12.8

obs                 = [0.5,1.2,0.6,-0.7,-0.2]
candidates          = minimum(obs):0.001:maximum(obs)
medianWithAbs       = findMedian(obs,candidates)
medianWithHuberLoss = findMedian(obs,candidates,huberLoss)

### 12.9
g(x) = 2*(1-x*exp(-x)-exp(-x))/(1-exp(-x))^2

plot(g,-10,10)

## Homework 6

### 6.4

d = Normal()

qalpha = quantile(d,1-(0.05/2))

qalpha = quantile(d,1-(0.001/2))

### 6.5

@vars x λ z

LogL = x * ln(exp(- λ *z))+(1-x)*ln(1-exp(-λ*z))

dLogL_λ = diff(LogL,λ)
d2LogL_2λ = diff(dLogL_λ,λ)

Ed2LogL_2λ = subs(d2LogL_2λ, x=>exp(-λ*z))

simplify(Ed2LogL_2λ)



minZ = Eq((2*exp(λ*z)-2)/(λ*exp(λ*z)),z)

λ = μ +2
λ
