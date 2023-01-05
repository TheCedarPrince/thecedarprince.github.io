+++
title = "Asymptotic Notation"
slug = "09242021040445-asymptotic-notation"
tags = ["asymptotic", "notation", "complexity", "bigo", "masters", "archive"]
description = "An overview of asymptotic notation and time complexity"
rss_title = "Asymptotic Notation"
rss_description = "An overview of asymptotic notation and time complexity"
rss_pubdate = Date(2021, 9, 28)
+++



Asymptotic Notation
=========

**Date:** September 28 2021

**Summary:** An overview of asymptotic notation and time complexity

**Keywords:** #asymptotic #notation #complexity #bigo #masters #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

  * Complexity of an algorithm is often calculated by counting primitive operations
  * Primitive operations:

```
- Basic memory and reference management
- Simple comparisons
- Basic arithmetic
	- Addition
	- Subtraction
	- Multiplication
	- Division
	- Modulo
```

### Big-O Notation

#### Overview

  * Big-O (denoted as $\mathcal{O}$) refers to the most accurate worst case analysis with regards to either

```
- Execution time
- Space used (in memory or disk)
```

  * It always assumes the maximum number of iterations

#### Conventions

  * Constants get dropped from $\mathcal{O}$ notation as it is small compared to infinity

Example: 

$$
\mathcal{O}(5n) \rightarrow \mathcal{O}(n)
$$

  * Lower order terms get dropped in $\mathcal{O}$ notation for the reason as before

Example:

$$
\mathcal{O}(n^{2} + 1000n - 3) \rightarrow \mathcal{O}(n^{2})
$$

  * Dropping constants theoretically is possible because constants do not grow towards infinity
  * In practice however, these constants can affect practical outcomes of algorithms

#### Constant Complexity: $\mathcal{O}(1)$

  * Performance does not scale with input size
  * Example is having a list and returning the first item in the list:

```julia
mylist = [1:5...]
first(mylist)
```

#### Linear Complexity: $\mathcal{O}(n)$

  * Performance does scale with size
  * Example is summing all elements in an array:

```julia
mylist = [1:5...]
summed_values = sum(mylist)
```

#### Logarithmic Complexity: $\mathcal{O}(log(n))$

  * Performance scales logarithmically with input size
  * Base doesn't matter due to change of base:

$$
log_{m}(n) = \frac{log_{2}(n)}{log_{2}(m)} = Clog_{2}(n) \rightarrow \mathcal{O}(log_{m}(n)) \rightarrow \mathcal{O}(log(n))
$$

  * It can intuitively be thought of the running time is proportional to the $n$ [Stack Overflow Explanation](/https://stackoverflow.com/a/2307307)
  * Another way to think about it is that the time goes up linearly while $n$ increases exponentially [Stack Overflow Explanation](/https://stackoverflow.com/a/2307330)

An example of this behavior is here:

| Time ($t$) |    $n$ |
| ----------:| ------:|
|          0 |      1 |
|          1 |     10 |
|          2 |    100 |
|          3 |   1000 |
|          4 |  10000 |
|          5 | 100000 |

Where the proportion can be stated as:

$$
f(n) = log_{10}(n^{t})
$$

#### Exercises

*The following exercises can be found [here](/https://www.geeksforgeeks.org/practice-questions-time-complexity-analysis/)*

1. What is the time and space complexity of:

```julia
a = 0
i = 0

while i < N
	a = a + rand(1)
	i += 1
end


b = 0
j = 0

while j < M
	b = b + rand(1)
	j += 1
end
```

Answer: $\mathcal{O}(N + M), \mathcal{O}(1)$

Explanation: Since we measure complexity by worse case scenario of primitive operations ran, there could be $N$ and $M$ operations executed in this code. As no additional space is being utilized, space complexity is constant as no new variables are being defined.

2. What is the time complexity of:

```julia
a = 0
i = 0
j = N

while i < N
	while j > i
		a = a + i + j
		j -= 1
	end
	i += 1
end
```

Answer: $\mathcal{O}(N \cdot N)$

Explanation: Both loops are dependent on $N$ so both loops, iterate $N$ times, therefore resulting in a time complexity of $\mathcal{O}(N \cdot N)$

3. What is the time complexity of the following code:

```julia
i = N / 2
k = 0

while i <= N
	j = 2
	while j <= N
		k = k + N / 2
		j *= 2
	end
	i += 1
end
```

Answer: $\mathcal{O}(n \cdot \log(n))$

Explanation: As $n$ continues to increase, the variable, $k$ continues to loosely grow more than exponential. Furthermore, there are, $\frac{n}{2}$ primitive steps in the outer loop such that the total time complexity would be $\mathcal{O}(\frac{n}{2} \cdot \log{n})$ which is then simplified to $\mathcal{O}(n \cdot \log(n))$ I got this wrong initially because I did not account for the outer loop contributing a time complexity of $\frac{n}{2}$.

4. What does it mean when we say that algorithm X is asymptotically more efficient than Y?

Answer: Algorithm X will always be better for large inputs

Explanation: When we consider an asymptote in terms of an algorithm, we also consider that algorithms "growth" over time. Meaning, that if you have some algorithm that is efficient at an asymptote, by nature of asymptotic analysis, that means it is "good" in the worst case scenario of that algorithm.

Addendum: I got this wrong when thinking about asymptotic notation as I failed to consider growth. I thought X would be better for all inputs to that algorithm but that would not be so in the case of possibly a smaller input to X.

5. What is the time complexity of the following code:

```julia
a = 0
i = N

while i > 0
	a += i
	i /= 2
end
```

Answer: $\mathcal{O}(\log{n})$

Explanation: There is a direct proportional relationship between $n$ and the final output.

6. What best describes the useful criterion for comparing the efficiency of algorithms?

Answer: Time and Memory

Explanation: Time dictates how long a program will evaluate for and memory dictates how much a program can evaluate

7. How is time complexity measured?

Answer: By counting the number of primitive operations in an algorithm on a given input size.

Explanation: Each primitive operation is generally assumed to evaluate at the cost of "one" for each operation.

8. What will be the time complexity of the following code?

<!–NOTE: SKIPPING FOR NOW–>

```julia
i = 0 
while i < N
	i *= k
end
```

9. What will be the time complexity of the following code?

<!–NOTE: SKIPPING FOR NOW–>

```julia
value = 0
i = 0
j = 0

while i < n
	while j < i
		value += 1
		j += 1
	end
	i += 1
end
```

10. Algorithm A and B have a worst-case running time of $\mathcal{O}(n)$ and $\mathcal{O}(logn)$, respectively. Therefore, algorithm B always runs faster than algorithm A.

Answer: False

Explanation: Algorithm A could be faster on smaller inputs as compared to algorithm B

### Amortized Analysis

See [note here for details](/10052021235121-amortized-analysis.md)

## References

## References:
## Discussion: 

{{ addcomments }}
