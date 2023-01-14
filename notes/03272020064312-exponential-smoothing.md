+++
title = "Exponential Smoothing"
slug = "03272020064312-exponential-smoothing"
tags = ["zettel", "signalprocessing", "noise", "artifact", "smoothing", "window", "julialang", "archive"]
description = "An overview on how to use the exponential smoothing algorithm"
rss_title = "Exponential Smoothing"
rss_description = "An overview on how to use the exponential smoothing algorithm"
rss_pubdate = Date(2020, 3, 27)
+++



Exponential Smoothing
=========

**Date:** March 27 2020

**Summary:** An overview on how to use the exponential smoothing algorithm

**Keywords:** ##zettel #signalprocessing #noise #artifact #smoothing #window #julialang #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

The exponential smoothing algorithm is a recursive algorithm and is one of the more simple smoothing methods commonly used to remove small noise and motion artifacts from a discrete time series signal. However, it can be considered a "manual" algorithm due to having to manually determine a smoothing factor for it to work properly.

Per conversation with Post-Doc Researcher, Fredrik Bagge Carlson, another definition for the smoothing factor is the "forgetting factor". A bigger value for the forgetting factor results in forgetting the memory built into the algorithm faster and focusing more on recent inputs.

Also, this method is classified as a moving average filter!

### Algorithm

The algorithm is very simple in which it is described as:

$$
s_1 = x_1
$$

$$
s_t = ax_t + (1 - \alpha)s_{t - 1} \space | \space t > 0
$$

The variables are defined as follows:

  * $$
    \{x_t\}
    $$

      * The raw signal sequence
  * $$
    \{s_t\}
    $$

      * The smoothed output signal sequence
  * $$
    t
    $$

      * Time (where $t > 0$)
  * $$
    \alpha
    $$

      * Smoothing factor (must be chosen such that $0 < \alpha <1$)

The weighted average in this case works when you take a portion of the current value x(t) from the original signal and a portion of the s(t -1) is summed together after being scaled by the forgetting factor. [Explanation thanks to Fredrik Bagge Carlson]

#### Additional Considerations

  * Each term in the sequence, $\{s_t\}$, is counted as the weighted average of the current data point from the sequence $\{x_t\}$ and the prior smoothed statistic, $s_t$.
  * There is no clear method for choosing the value of the smoothing factor

      * $0 <<\alpha < 1$ yields a smaller smoothing effect and "value" updating values more highly
      * $0 < \alpha << 1$ yields a greater smoothing effect but does not respond greatly to recent updates

### Example Implementation

```julia
using Plots # IMPORT FOR PLOTTING
using LaTeXStrings # IMPORT TO ENABLE LaTeX FORMATTING
gr()

let

    # Choose Smoothing Factor, α, And Input Values Over Which To Calculate
    # Choose α: 0 < α < 1
    input = 0:0.001:1
    α = 0.05

    # Generate Generic Signal - In This Case Sin(2π)
    signal = [sin(2 * pi * i) for i in input]

    # Adding Random Noise To Function
    noisy_signal =
        [sin(2 * pi * i) + rand([-1, 1]) * round(rand(), digits = 2) for i in input]

    # Filter The Signal Using An Exponential Smoothing Filter
    exponential_signal::Array{Float32} = [noisy_signal[1]]
    for i in 2:length(signal)
        smooth_term = α * noisy_signal[i] + (1 - α) * exponential_signal[i-1]
        append!(exponential_signal, smooth_term)
    end


    # Plot Signals
    plot(
        input,
        noisy_signal,
        label = "Noisy Signal",
        title = "Example of Exponential Smoothing",
    )
    plot!(
        input,
        exponential_signal,
        label = "Exponentially Smoothed Signal",
        linewidth = 3
    )
    plot!(
        input,
        signal,
        label = L"sin(2\pi)",
        linewidth = 5
    )

end

```

#### Output

![](1585295721254.png)
## How To Cite

 Zelko, Jacob. _Exponential Smoothing_. [https://jacobzelko.com/03272020064312-exponential-smoothing](https://jacobzelko.com/03272020064312-exponential-smoothing). March 27 2020.
## References
## Discussion: 

{{ addcomments }}
