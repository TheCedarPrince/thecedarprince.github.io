+++
title = "Introduction To Streaming for Data Scientists"
slug = "09092022205654-streaming-data-scientists"
tags = ["archive", "data", "streaming"]
description = "What is streaming data and how it can be used in data science and other applications"
rss_title = "Introduction To Streaming for Data Scientists"
rss_description = "What is streaming data and how it can be used in data science and other applications"
rss_pubdate = Date(2022, 9, 9)
+++



Introduction To Streaming for Data Scientists
=========

**Date:** September 9 2022

**Summary:** What is streaming data and how it can be used in data science and other applications

**Keywords:** #archive #data #streaming

Bibliography
==========

C. Huyen, “Introduction to streaming for data scientists,” Aug. 03, 2022. https://huyenchip.com//2022/08/03/stream-processing-for-data-scientists.html (accessed Sep. 02, 2022).

Table of Contents
=========

\toc

### Reading Motivation

Streaming is an immensely important concept I have consistently found. I came to appreciate the concept more deeply by interacting with [TranscodingStreams.jl](/https://juliaio.github.io/TranscodingStreams.jl/stable/) to parse terabytes worth of data out of memory in a JSON format (shudders at the thought of this).

Once your data is stored in files, data lakes, or data warehouses, it becomes historical data.

Streaming data refers to data that is still flowing through a system, e.g. moving from one microservice to another.

Historical data is often processed in batch jobs — jobs that are kicked off periodically. For example, once a day, you might want to kick off a batch job to generate recommendations for all users. When data is processed in batch jobs, we refer to it as batch processing.

Stream processing refers to doing computation on streaming data.

Batch prediction means periodically generating predictions offline, before prediction requests arise.

Online prediction means generating predictions on-demand, after prediction requests arise.

One of the features you might use is the average price of all the items this user has looked at in the last 30 minutes. This is an online feature – it needs to be computed on online data (as opposed to being pre-computed on historical data)

This “easy” way is stateless, which means that each computation is independent from the previous one.

Stateful stream processing can avoid redundancy, hence faster and cheaper.

Batch monitoring means running a script to compute the metrics you care about periodically (like once a day), usually on data in warehouses like S3, BigQuery, Snowflake, etc. Batch monitoring is slow. You first have to wait for data to arrive at warehouses, then wait for the script to run.

Real-time monitoring means computing metrics on data as it arrives, allowing you to get insights into your systems in (near) real-time.

Continual learning refers to the ability to update your models whenever needed and to deploy this update quickly.

Overtime, we’ll have a series of ordered updates, which is called a log. Each update is an example of an event. Logs are append-only. You can only append the new events to your existing log. You can’t overwrite previous events.

There are two components of a streaming system: the realtime transport and the computation engine. The real-time transport, which are basically distributed logs.

The computation engine performs computation (e.g. joining, aggregation, filtering, etc.) on the data being transported.

The total price and the count constitute the internal state of the stream processing job.

The saved internal state is called a checkpoint (or savepoint), and this job can resume from any checkpoint.

The computed average price value, if saved, will become a materialized view of the feature average price.

Or you can update it using only the new information (e.g. using the latest materialized average price + the prices of updated items). The latter is called incremental materialized.

Point-in-time correctness refers to a system’s ability to accurately perform a computation as it would’ve happened at any time in the past. Point-in-time correctness means no data leakage.

Retroactively processing historical data using a different logic is also called backfilling.

With batch backfilling, you can apply the new logic (e.g. new feature definition) to a table in the past.

With stream backfilling, you can apply the new logic to the log in a given period of time in the past, e.g. apply it to the log on June 10, 2022.
## How To Cite

 Zelko, Jacob. _Introduction To Streaming for Data Scientists_. [https://jacobzelko.com/09092022205654-streaming-data-scientists](https://jacobzelko.com/09092022205654-streaming-data-scientists). September 9 2022.
## References:
## Discussion: 

{{ addcomments }}
