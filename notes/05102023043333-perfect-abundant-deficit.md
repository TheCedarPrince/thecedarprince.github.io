+++
title = "A Fun Exploration of Perfect, Abundant, and Deficient Numbers"
slug = "05102023043333-perfect-abundant-deficit"
tags = ["blog", "abundant", "deficient", "number", "theory", "julia", "programming", "perfect", "aliquot", "sequence", "archive"]
description = "A computational treatment and exploration of abundant and deficient numbers"
rss_title = "A Fun Exploration of Perfect, Abundant, and Deficient Numbers"
rss_description = "A computational treatment and exploration of abundant and deficient numbers"
rss_pubdate = Date(2023, 5, 10)
+++



A Fun Exploration of Perfect, Abundant, and Deficient Numbers
=========

**Date:** May 10 2023

**Summary:** A computational treatment and exploration of abundant and deficient numbers

**Keywords:** #blog #abundant #deficient #number #theory #julia #programming #perfect #aliquot #sequence #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Motivation

I was at the gym working out when I started thinking about locker numbers in the men's locker room. I was reminded of perfect numbers and was thinking about perfect number examples. I started testing random numbers in my mind and noticed numbers which had divisors that summed up to greater than their number and also less than their number. I had no idea about the existence of abundant and deficient numbers and got curious about these numbers and to see what characteristics I could find about them.

### What Are These Numbers?

In Number Theory, there exist three species of numbers that depend on the divisors of a given number (excluding the number itself as a divisor). Here are the three species and their simple characteristics:

**Deficient Numbers** - these numbers have divisors whose sum is never greater than the number being examined. An example is the number $4$ which has as divisors $1$ and $2$ – those divisors only sum up to $3$.

**Perfect Numbers** - these numbers have divisors which sum to exactly to the number being examined. An example is the number $6$ which has as divisors $1, 2, 3$ which sum together to $6$.

**Abundant Numbers** - these numbers have divisors whose sum is greater than the number being examined. An example is the number $12$ whose divisors are $1, 2, 3, 4, 6$ and sum to $16$.

As it turns out, there are infinite deficient, perfect, and abundant numbers. However, only around 50 perfect numbers have ever been discovered to this day! $6$ is the smallest perfect number but then perfect numbers grow to be hundreds of digits long! For that reason, this fun exploration will really only explore abundant and deficient numbers. 

### Examining Divisors of These Numbers

Out of curiosity, I wanted to know if there were any trends to be noticed in the divisors of the deficient and abundant number species. So, I whipped together some code to explore this within Julia (if you are not interested in the code, you can skip it and just go to the results for each section). To get started, I first defined a function to calculate divisors of a number:

```julia
import Primes: factor

function divisors(n)

    d = Int64[1]

    for (p, e) in factor(n)

        t = Int64[]
        r = 1

        for i in 1:e
            r *= p
	    for u in d
	        push!(t, u * r)
	    end
	end

	append!(d, t)
    end

    return sort!(d)

end
```

With this function defined, now, I am going to calculate some deficient and deficient numbers (since perfect numbers are hard to calculate, I am going to look up a few to explore).  To do that, we will use the following snippet to find $1000$ abundant and deficient numbers:

```julia
i = 1 
deficient_numbers = []
abundant_numbers = []
while true
  divisor_sum = divisors(i)[1:end-1] |> sum
  if divisor_sum < i && length(deficient_numbers) != 1000
    push!(deficient_numbers, i)
  elseif divisor_sum > i && length(abundant_numbers) != 1000
    push!(abundant_numbers, i)
  end

  i += 1

  length(abundant_numbers) == 1000 && length(deficient_numbers) == 1000 ? break : continue
end
```

We are set to explore further these numbers!

#### Abundant Numbers

As a first pass, let's calculate the divisors of the abundant numbers and plot their frequency:

```julia
import DataStructures: counter
import UnicodePlots: barplot

abundant_divisors = vcat(divisors.(abundant_numbers)...) |> counter |> Dict |> sort;

vs = collect(values(abundant_divisors));
ks = collect(keys(abundant_divisors));

barplot(ks[1:20], vs[1:20], xlabel = "Count", ylabel = "Divisors", title = "Divisor Count for First 1000 Abundant Numbers")
```

Which gives the following plot:

```txt
               Divisor Count for First 1000 Abundant Numbers 
               ┌                                        ┐ 
             1 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 1 000   
             2 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 995     
             3 ┤■■■■■■■■■■■■■■■■■■■■■■ 677                
             4 ┤■■■■■■■■■■■■■■■■■■■■■ 623                 
             5 ┤■■■■■■■■■■ 308                            
             6 ┤■■■■■■■■■■■■■■■■■■■■■■ 672                
             7 ┤■■■■■■■ 216                               
             8 ┤■■■■■■■■■■■ 347                           
             9 ┤■■■■■■■■ 229                              
   Divisors 10 ┤■■■■■■■■■■ 303                            
            11 ┤■■■■ 116                                  
            12 ┤■■■■■■■■■■■ 336                           
            13 ┤■■■ 96                                    
            14 ┤■■■■■■■ 211                               
            15 ┤■■■■■ 139                                 
            16 ┤■■■■■■ 188                                
            17 ┤■■ 68                                     
            18 ┤■■■■■■■ 224                               
            19 ┤■■ 61                                     
            20 ┤■■■■■■■ 201                               
               └                                        ┘ 
                                  Count                   
```

Without any real methodology, what I notice is that there seems to be an interesting pattern where certain divisors are being repeated more than others as more and more divisors are found. It almost feels like a kind of decaying sequence where counts seems to spike on any multiple of $3$ or $4$ more consistently than any other number. Even though, it seems like multiples of $3$ are not as consistent.

#### Deficient Numbers

Now, let's calculate the divisors of the deficient numbers and plot their frequency:

```julia
import DataStructures: counter
import UnicodePlots: barplot

deficient_divisors = vcat(divisors.(deficient_numbers)...) |> counter |> Dict |> sort;

vs = collect(values(deficient_divisors));
ks = collect(keys(deficient_divisors));

barplot(ks[1:20], vs[1:20], xlabel = "Count", ylabel = "Divisors", title = "Divisor Count for First 1000 Deficient Numbers")
```

Which gives the following plot:

```txt
               Divisor Count for First 1000 Deficient Numbers 
               ┌                                        ┐ 
             1 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 1 000   
             2 ┤■■■■■■■■■■■ 337                           
             3 ┤■■■■■■■ 220                               
             4 ┤■■■■ 124                                  
             5 ┤■■■■■■ 168                                
             7 ┤■■■■ 119                                  
             8 ┤■■ 51                                     
             9 ┤■■ 73                                     
            10 ┤■ 36                                      
   Divisors 11 ┤■■■ 82                                    
            13 ┤■■ 71                                     
            14 ┤■ 25                                      
            15 ┤■ 43                                      
            16 ┤■ 18                                      
            17 ┤■■ 56                                     
            19 ┤■■ 50                                     
            21 ┤■ 31                                      
            22 ┤■ 22                                      
            23 ┤■ 42                                      
            25 ┤■ 33                                      
               └                                        ┘ 
                                  Count                   
```

What's interesting here is that I did not see any immediate pattern or phenomena with these divisors at first glance. However, when I examined the plot using a log10 scale, I then saw that consistently, the counts for odd divisors for outnumber those for even divisors:

```txt
            Divisor Count for First 1000 Deficient Numbers 
               ┌                                        ┐ 
             1 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 1 000   
             2 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 337          
             3 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■ 220            
             4 ┤■■■■■■■■■■■■■■■■■■■■■■■ 124               
             5 ┤■■■■■■■■■■■■■■■■■■■■■■■■ 168              
             7 ┤■■■■■■■■■■■■■■■■■■■■■■■ 119               
             8 ┤■■■■■■■■■■■■■■■■■■■ 51                    
             9 ┤■■■■■■■■■■■■■■■■■■■■ 73                   
            10 ┤■■■■■■■■■■■■■■■■■ 36                      
   Divisors 11 ┤■■■■■■■■■■■■■■■■■■■■■ 82                  
            13 ┤■■■■■■■■■■■■■■■■■■■■ 71                   
            14 ┤■■■■■■■■■■■■■■■ 25                        
            15 ┤■■■■■■■■■■■■■■■■■■ 43                     
            16 ┤■■■■■■■■■■■■■■ 18                         
            17 ┤■■■■■■■■■■■■■■■■■■■ 56                    
            19 ┤■■■■■■■■■■■■■■■■■■■ 50                    
            21 ┤■■■■■■■■■■■■■■■■ 31                       
            22 ┤■■■■■■■■■■■■■■■ 22                        
            23 ┤■■■■■■■■■■■■■■■■■■ 42                     
            25 ┤■■■■■■■■■■■■■■■■■ 33                      
               └                                        ┘ 
                           Count (Log10 Scale)            
```

### Any Connection to Aliquot Sequences?

Out of curiosity, I wondered if there could be any overlap of abundant and deficient numbers' divisors with their respective aliquot sequences. Now, an aliquot sequence is a rather fun thing. It has the following form:

$$
s_{0} = k
$$

$$
s_{n} = s(s_{n-1}) = \sigma_{1}(s_{n-1}) - s_{n-1} \text{if} s_{n-1} \gt 0
$$

$$
s_{n} = 0 \text{if} s_{n-1} = 0
$$

I decided to implement a small algorithm to compute the aliquot sequence for a given number as follows:

```julia
function aliquot_sequence(num; max_itrs = missing)
  sequence = [num]
  s = num

  while true
    s = sum(divisors(s)) - s
    if !ismissing(aliquot_sequence) && length(sequence) == max_itrs
      return nothing
    elseif s == 0 
      push!(sequence, s)
      break
    elseif in(s, sequence)
      break
    else
      push!(sequence, s)
    end
    
  end

  return sequence

end
```

In my implementation, I decided to limit the sequence to no repeating sequence values for a number. Let's plot these sequence values and see what could be seen as before.

> NOTE: As a limitation, some of these sequences have an immensely high number of iterations which cause my computer to explode (looking at you, abundant number $138$)! For that reason, I am only calculating sequences for an abundant number that has only 10 maximum iterations within their aliquot sequence.


#### Aliquot Sequences of Abundant Numbers

Let's calculate the aliquot sequences for $500$ abundant numbers that have at most $10$ terms within their sequence:

```julia
import DataStructures: counter
import UnicodePlots: barplot

abundant_aliquot_sequences = []

for i in 1:1000000
         divisor_sum = divisors(i)[1:end-1] |> sum
         if divisor_sum > i 
           seq = aliquot_sequence(i, 10)
           !isnothing(seq) ? push!(abundant_aliquot_sequences, seq) : continue
         end

         i += 1

         length(abundant_aliquot_sequences) == 500 ? break : continue
         
       end
        
abundant_aliquot_terms = vcat(abundant_aliquot_sequences...) |> counter |> Dict |> sort;

vs = collect(values(abundant_aliquot_terms));
ks = collect(keys(abundant_aliquot_terms));

barplot(ks[1:20], vs[1:20], xlabel = "Count", ylabel = "Terms", title = "Aliquot Term Count for 500 Abundant Numbers")
```

Which yields the plot:

```txt
           Aliquot Term Count for 500 Abundant Numbers 
            ┌                                        ┐ 
          0 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 448   
          1 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 448   
          3 ┤ 3                                        
          4 ┤ 3                                        
          6 ┤ 3                                        
          7 ┤■ 9                                       
          8 ┤■ 9                                       
          9 ┤ 3                                        
         10 ┤ 1                                        
   Terms 11 ┤ 4                                        
         12 ┤ 1                                        
         13 ┤■ 11                                      
         14 ┤ 1                                        
         15 ┤ 3                                        
         16 ┤ 1                                        
         17 ┤ 3                                        
         18 ┤ 2                                        
         19 ┤■ 8                                       
         20 ┤ 1                                        
         21 ┤ 4                                        
            └                                        ┘ 
                               Count                   
```

Here, I really cannot discern any relatable pattern as well as significance that can be tied back to abundant numbers. I am not sure if there is a way to tie significance back to abundant numbers at all in this scenario.

#### Aliquot Sequences of Deficient Numbers

Let's calculate the aliquot sequences for $500$ abundant numbers that have at most $10$ terms within their sequence:

```julia
import DataStructures: counter
import UnicodePlots: barplot

deficient_aliquot_sequences = []

for i in 1:1000000
         divisor_sum = divisors(i)[1:end-1] |> sum
         if divisor_sum < i 
           seq = aliquot_sequence(i, 10)
           !isnothing(seq) ? push!(deficient_aliquot_sequences, seq) : continue
         end

         i += 1

         length(deficient_aliquot_sequences) == 500 ? break : continue
         
       end
        
deficient_aliquot_terms = vcat(deficient_aliquot_sequences...) |> counter |> Dict |> sort;

vs = collect(values(deficient_aliquot_terms));
ks = collect(keys(deficient_aliquot_terms));

barplot(ks[1:20], vs[1:20], xlabel = "Count", ylabel = "Terms", title = "Aliquot Term Count for 500 Deficient Numbers")
```

Which yields the plot:

```txt
            Aliquot Term Count for 500 Deficient Numbers 
            ┌                                        ┐ 
          0 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 487   
          0 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 487   
          1 ┤■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 487   
          2 ┤ 1                                        
          3 ┤■■ 28                                     
          4 ┤■■ 27                                     
          5 ┤ 1                                        
          6 ┤■ 10                                      
          7 ┤■■ 24                                     
          8 ┤■■ 23                                     
   Terms  9 ┤■■ 26                                     
         10 ┤■ 10                                      
         11 ┤■ 17                                      
         12 ┤ 2                                        
         13 ┤■ 15                                      
         14 ┤■ 9                                       
         15 ┤■■ 25                                     
         16 ┤■ 7                                       
         17 ┤■ 13                                      
         18 ┤ 1                                        
         19 ┤■■ 25                                     
            └                                        ┘ 
                               Count                   
```

Again, I really cannot discern any relatable pattern as well as significance that can be tied back to deficient numbers.

### Conclusion

This was a small exploration that I wanted to do of these numbers to see if I could find any patterns or significance within aspects of these numbers.  It seems like there may be some present within the factors of abundant and deficient numbers, but when looking at their corresponding aliquot sequences, I am unable to determine anything from a computational sense.  To that end, I was also curious about how effective computation can be in helping to derive or provide hints about what may underlie these numbers. In short, it would appear that computation is quite helpful to give rise to initial questions. For example, I'd be curious to what extent the patterns I noticed within abundant and deficient numbers prolong for and if they are actually legitimate observations. At that point, one could then start applying basic data science skills to group, explore, and summarize potential trends within these numbers.

For now, my curiosity is sated and it might be worth a return to in the future. One thing this blog post did make me think about is analogies. The idea of deficient, perfect, and abundant numbers are really fascinating as it lends itself to analogs within set theory relationships (like many-to-one -> deficient number, one-to-one -> perfect number, one-to-many -> abundant number). I wonder if it could be used as analogy outside of mathematics strictly and in terms like healthcare (sub-type of a disease -> deficient number, canonical disease diagnosis -> perfect number, disease family -> abundant number). Might be worth further exploration in the future.
## How To Cite

 Zelko, Jacob. _A Fun Exploration of Perfect, Abundant, and Deficient Numbers_. [https://jacobzelko.com/05102023043333-perfect-abundant-deficit](https://jacobzelko.com/05102023043333-perfect-abundant-deficit). May 10 2023.
## References:
## Discussion: 

{{ addcomments }}
