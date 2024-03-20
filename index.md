---
layout: default
title: Home
nav_order: 1
description: "Just the Docs is a responsive Jekyll theme with built-in search that is easily customizable and hosted on GitHub Pages."
permalink: /
---

# Correlation Detective
{: .fs-9 }

Correlation Detective is Java library for fast and scalable multivariate correlation analysis. 
{: .fs-6 .fw-300 }

[Library](https://github.com/correlationdetective/library){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 }
[Get Paper](https://link.springer.com/article/10.1007/s00778-023-00815-y?utm_source=rct_congratemailt&utm_medium=email&utm_campaign=oa_20231011&utm_content=10.1007/s00778-023-00815-y){: .btn .fs-5 .mb-4 .mb-md-0 }

---

## What is CD? (2 min video)
<iframe width="560" height="315" src="https://www.youtube.com/embed/U7z4uyonixk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

#### Table of contents
- [How to install](#how-to-install)
- [What is a multivariate correlation?](#what-is-a-multivariate-correlation-mc)
- [Why are they relevant?](#why-are-they-relevant)
- [Why Correlation Detective?](#why-correlation-detective)
- [Demo](#demo)

## How to install
### Option 1: Install using Maven
1. Add the following dependency to your pom.xml file:

   ```xml
   <dependency>
       <groupId>io.github.correlationdetective</groupId>
       <artifactId>CorrelationDetective</artifactId>
       <version>1.0</version>
   </dependency>
   ```

### Option 2: Clone the Correlation Detective github repository
1. Clone the Correlation Detective repository to your local machine:

   ```bash
   git clone https://github.com/CorrelationDetective/library.git
    ```
2. Navigate to the project directory:

   ```bash
   cd library
   ```
3. Build the project using Maven:

   ```bash
    mvn clean install
    ```
  
---

## What is a multivariate correlation (MC)?
Strictly speaking, a multivariate correlation is any statistical relationship (whether causal or not) between three or more random variables (e.g. time-series/vectors). This concept is different from the more commonly used *bivariate/pairwise correlation* ([Wiki](https://en.wikipedia.org/wiki/Correlation)) which only considers two variables.

There are a multitude of multivariate correlation metrics that measure such relationships, the most straightforward being *Multi-Pearson*. This metric essentially measures the *Pearson correlation coefficient* ([Wiki](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient)) between (element-wise) aggregations of two sets of vectors.

**In words**, this boils down to for example asking the question *"How dependent is the stock price of BMW on the average stock price of Apple and Microsoft?"* (multivariate), where one would only consider the prices of single stocks when focusing on bivariate correlations. This example is visualized in the figure below. Do note that while this multivariate correlation is high, the pairwise correlations between these stocks are low. This shows that multivariate correlations are not a trivial extension to bivariate correlations, but are able to express strong latent relationships as well.

**Mathematically**, if we want to derive the multivariate correlation coefficient $$\rho$$ between vector sets $$\{A,B\}$$ and $$\{C\}$$ using averaging as an aggregation method, this boils down to computing;

$$ \rho_{(AB),C} = \rho(\frac{A+B}{2},C) = \frac{cov((A+B)/2,C)}{\sigma_{(A+B)/2}, \sigma_C}$$

<p style="text-align:center">
    <img src="https://user-images.githubusercontent.com/100126005/156187992-173a4361-4fc7-4c9b-b06f-987a2cb8381b.png" alt>
    <em>Visual representation of bivariate and multivariate correlations over stock price data</em>
</p>

Even though we use averaging as an aggregation method for these examples, Multi-Pearson supports effectively every element-wise aggregation method such as MAX, MIN, SUM, XOR, etc. This is important as the relevancy of aggregation method depend on the application domain.

Also note that these examples only consider the Multi-Pearson correlation metric, while there also exist plenty of research on other multivariate correlation metrics such as **Tripoles** or **Multipoles** ([Link](https://ieeexplore.ieee.org/document/8693798)).
<!-- - Total Correlation ([Wiki](https://en.wikipedia.org/wiki/Total_correlation)) -->
<!-- - Canonical Correlation Analysis ([Wiki](https://en.wikipedia.org/wiki/Canonical_correlation)) -->
<!-- - Tripoles/Multipoles ([Link](https://conservancy.umn.edu/bitstream/handle/11299/216019/18-003.pdf?sequence=1)) -->

--- 

## Why are they relevant?
Recent studies have repeatedly shown that multivariate correlations can capture patterns in data that could not have been found by only considering bivariate correlations.
By considering such correlations one can **gain new insights from data**, which help for better understanding (natural) phenomena.
That's why multivariate correlations have become a popular topic in research communities from a wide variety of scientific domains throughout the last years.

Some recent discoveries are:
1. **Neuroscience**
  - Analysis of *fMRI* data lead to the discovery that the brain's left middle frontal assimilates information from the right superior frontal and left inferior frontal regions while listening to audio ([Link](https://ieeexplore.ieee.org/document/8693798)). \\
  <img src="https://user-images.githubusercontent.com/100126005/156396694-734db45e-890e-4cae-b6d6-f418d73e5d1f.png" alt="brain_anno" width="60%">
  <!-- ![brain_anno](https://user-images.githubusercontent.com/100126005/156396694-734db45e-890e-4cae-b6d6-f418d73e5d1f.png) -->
2. **Climatology**
  - Analysis of *Air Pressure* data lead to the discovery of led to the characterization of a new weather phenomenon and to improved climate models. Precicely, that the air pressure over the West Siberian Plain is strongly negatively correlated to the aggregated pressure levels over Darwin, Australia and Tahiti ([Link](http://users.stat.umn.edu/~chatt019//Research/Papers/JClimate17301_Liessetal_C.pdf)).
  <img src="https://user-images.githubusercontent.com/100126005/156396699-d42b033d-d9d0-4c45-bf42-0f49d5309c0d.png" alt="map_anno" width="80%">
3. **Genomics/Medicine**
  - Researchers found through analysis of *gene* data that presence of multiple RASopathy genes contributed to an elevated risk of autism spectrum disorders (ASDs) due to a phenomenon called epistasis. This phenomenon involves the dependence of the effect of a gene mutation on the presence or absence of mutations in other genes. In other words, multiple genes interact with each other which impacts the expression of a disease, while each gene individually only has weak correlation with the disease trait ([Link](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5226683/)).
4. **Finance**
  - While part of ongoing research, multivariate correlation analysis of *stock price* data has found application in *portfolio diversification* (the act of creating a selection of stocks that minimizes risk) and *portfolio repair* (the act of finding one or more replacements of a stock in a portfolio such that it follows the old porfolio's performance as close as possible).

---

## Why Correlation Detective?
<br>
*"If MC analysis is so straightforward and valuable, why are we figuring it out just now?"*
<br>

Good question. Unfortunately, the problem with MC analysis is that it's very **computationally expensive**, meaning it takes a long time to finish. \\
This has to do with the following; 
1. MC analysis involves finding all interesting correlations in a dataset of vectors/time-series.
2. This means that one has to compute (or estimate) the correlations of all possible combinations of vectors in the dataset.
3. The total number of vector combinations in a dataset increases almost *exponentially* with the set size of such a combination.
4. Therefore, the computational effort of the analysis increases immensely if one wants to consider multivariate correlations besides the traditional bivariate correlations.

*Example:* a reasonable dataset of 1000 vectors includes around 500K unique combinations of 2 vectors. Computing the (Pearson) correlation for each combination would take around **1 second** on a strong laptop with a multithreaded algorithm. However, considering combinations of 3 vectors already involves iterating over 500 million combinations, which would take around **8 minutes**. Combinations of 4 vectors? Over one trillion combinations and an estimated computation time of over **28 hours**.

There exist other algorithms which bring these computation times down by at most one order of magnitude. However, they do not guarantee to find all interesting combinations and usually also impose constraints on the results (e.g. only consider combinations of 3 vectors that have high internal pairwise correlations).

In contrast, Correlation Detective is
1. Two orders of magnitude **faster** than baseline algorithms (see figure below for reference).
2. **Generic**; supports multiple query types, measures and *optional* constraints.
3. Has extensions that support query **approximation** and **streaming** data.

These factors make that CD now enables researchers and analysts to include MC analysis as a regular step in their workflow.

<p style="text-align:center">
  <table>
    <tr>
      <th># Variables in correlation</th>
      <th>Baseline</th>
      <th>CD</th>
    </tr>
    <tr>
      <td>2</td>
      <td>1.2 sec</td>
      <td>1.0 sec</td>
    </tr>
    <tr>
      <td>3</td>
      <td>8 min</td>
      <td>18 sec</td>
    </tr>
    <tr>
      <td>4</td>
      <td>28 h</td>
      <td>70 min</td>
    </tr>
    <tr>
      <td>5</td>
      <td>~239 days</td>
      <td>15 h</td>
    </tr>
  </table>
  <center><em>Computation times of MC analysis for a dataset of 1000 stock prices</em></center>
  <!-- <img src="https://user-images.githubusercontent.com/100126005/156346734-323b0029-e9cd-426f-a07b-5df260ca6f20.png" width="80%" alt><br> -->
</p>

---

# Demo
To provide an example of the output of CD, we run the streaming version of CD (named CDStream) on the NYSE Trade and Quote dataset ([Link](https://wrds-www.wharton.upenn.edu/pages/about/data-vendors/nyse-trade-and-quote-taq/)). This dataset contains intraday transactions data (trades and quotes) for all securities listed on the New York Stock Exchange (NYSE) and American Stock Exchange (AMEX), as well as Nasdaq National Market System (NMS) and SmallCap issues **with millisecond-level granularity**. 

We simulate a stream of this data using the provided timestamps and feed this datastream to CDStream. As per our configuration, the algorithm handles the arriving price updates in batches of one second, and updates the result set accordingly. In this case, the result set is comprised of all combinations of 3 vectors $$ a,b,c $$, such that the multivariate correlation $$ \rho_{a,AVG(b,c)} \geq 0.85 $$ over a sliding window of one hour (i.e. the prices throughout the latest hour). The figure below visualizes a subset of the output of CDStream through time.
<p style="text-align:center">
    <div width="100%" style="text-align:center">
    <img src="https://user-images.githubusercontent.com/100126005/160821647-d2813a16-bf29-4dc7-ad24-adebc7142bab.gif" alt="stock_animation">
    </div>
    <em>Animation of the result set (i.e. highly correlated triplets) when running CDStream on Trade and Quote dataset</em>
</p>

A you can see, CDStream is able to monitor the correlations of combinations in the result set as well as identify new combinations that enter the set. This feature is essential if one wants to **analyze complex temporal relations in datasets** (i.e. correlations that exist only for some time) and/or the effect that sudden events have on correlations. Example use cases include; 
- <u>Flash-trading</u> (where early discovery of irregularities in the market can help traders spot investment opportunities)
- <u>Weather sensor network</u> (where measurements must be monitored and analyzed for detection of anomalous events such as storms and floods)
- <u>Network monitoring system</u> (where usage information must be tracked to timely identify weak spots and DoS attacks)


### Demo request
Want to see a demo on your own (numerical) dataset? Contact us via [email](mailto:o.papapetrou@tue.nl?subject=Correlation Detective contact&body=Dear Correlation Detective staff). \\
Also take a look at our [mission statement](https://corrdetective.github.io/pages/about/).
