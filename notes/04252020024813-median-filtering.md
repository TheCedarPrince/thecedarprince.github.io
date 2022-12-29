@def title = "Median Filtering"
@def slug = "04252020024813-median-filtering"
@def tags = ["zettel", "signalprocessing", "noise", "artifact", "filtering", "window", "julialang", "median", "movingaverage", "downsampling", "archive"]
@def description = "An overview on how to use and implement a median filter"

@def rss_title = "Median Filtering"
@def rss_description = "An overview on how to use and implement a median filter"
@def rss_pubdate = Date(2020, 4, 25)


Median Filtering
=========

**Date:** April 25 2020

**Summary:** An overview on how to use and implement a median filter

**Keywords:** ##zettel #signalprocessing #noise #artifact #filtering #window #julialang #median #movingaverage #downsampling #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

It is a non-linear digital filtering technique, used to remove noise from an image or signal. The main idea of the median filter is to run through the signal value by value, replacing each value with the median of neighboring values. The pattern of neighbors is called the "window", which slides, entry by entry, over the entire signal.

### Algorithm

An explanation of implementing the algorithm is given in example form:

Given the original signal, $x = (2, 3, 80, 6)$, a 1D Median Filter is applied as follows:

$$
y1 = med(2, 3, 80) = 3
$$

$$
y2 = med(3, 80, 6) = med(3, 6, 80) = 6
$$

$$
y3 = med(80, 6, 2) = med(2, 6, 80) = 6
$$

$$
y4 = med(6, 2, 3) = med(2, 3, 6) = 3
$$

Which yields the final filtered signal, $y = (3, 6, 6, 3)$.

#### Additional Consideration

In the example implementation, there is no value preceding the first value, thus the window "wraps" around the original to fulfill its window size.

There are other ways to handle filling the window other than wrapping such as:

  * Avoiding selecting values directly located at either boundary of the signal.
  * Use other values from within the signal.
  * Shrink the window near the edges of the signal so that the window is always full.

Furthermore, it is very good for salt-and-pepper noise/impulse noise (e.g. noise that is caused by sharp and sudden disturbances in the image signal)

### Example Implementation

```julia
using Plots # IMPORT FOR PLOTTING
using Statistics # IMPORT FOR `median` FUNCTION
using LaTeXStrings # IMPORT TO ENABLE LaTeX FORMATTING
gr()

let

    # CHOOSE WINDOW AND INPUT VALUES OVER WHICH TO CALCULATE
    input = 0:0.001:1
    window = 30
    sampling_rate = 15

    # GENERATE GENERIC SIGNAL - IN THIS CASE sin(2Π)
    signal = [sin(2 * pi * i) for i in input]

    # ADDING RANDOM NOISE TO FUNCTION
    noisy_signal = [sin(2 * pi * i) + rand([-1, 1]) * round(rand(), digits = 2)
                    for i in input]

    # FILTER THE SIGNAL USING A MEDIAN FILTER & DOWNFILTERING USING A MEDIAN FILTER
    downsampled_signal::Array{Float32} = [noisy_signal[1]]
    downsampled_input::Array{Float16} = [0]
    median_signal::Array{Float32} = []
    for i in 1:length(signal)
        if length(noisy_signal) - (window + i - 1) < 0
            forward = noisy_signal[i:end]
            wrap = noisy_signal[1:abs(length(noisy_signal) - (window + i - 1))]
            append!(median_signal, median(vcat(forward, wrap)))

            # SETTING SAMPLING RATE AND CREATING DOWNSAMPLED OUTPUT
            if i % sampling_rate == 0
                append!(downsampled_input, input[i])
                append!(downsampled_signal, median(vcat(forward, wrap)))
            end
        else
            forward = noisy_signal[i:(window + i - 1)]
            append!(median_signal, median(forward))

            # SETTING SAMPLING RATE AND CREATING DOWNSAMPLED OUTPUT
            if i % sampling_rate == 0
                append!(downsampled_input, input[i])
                append!(downsampled_signal, median(forward))
            end
        end
    end

    # PLOT SIGNALS
    append!(downsampled_input, input[end])
    append!(downsampled_signal, noisy_signal[end])
    plot(input, noisy_signal, label = "Noisy Signal", title = "Example of Median Filter")
    plot!(input, median_signal, label = "Median Filtered Signal", linewidth = 3)
    plot!(input, signal, label = L"2\pi", linewidth = 5)
    plot!(downsampled_input, downsampled_signal, linewidth = 3, color = :black,
          label = "Downsampled Median Signal")

end

```

#### Output

![median_filter](/04252020025710.png)

## References

## References
## Discussion: 

{{ addcomments }}
