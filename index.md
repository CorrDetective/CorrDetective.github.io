---
layout: default
title: Home
nav_order: 1
description: "Just the Docs is a responsive Jekyll theme with built-in search that is easily customizable and hosted on GitHub Pages."
permalink: /
---

# Correlation Detective
{: .fs-9 }

Correlation Detective is a fast and scalable family of algorithms for finding interesting multivariate correlations in a dataset. 
{: .fs-6 .fw-300 }

[View it on GitHub](https://github.com/correlationdetective/public){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 }
[Get Paper](https://raw.githubusercontent.com/CorrelationDetective/public/main/Technical_Report.pdf){: .btn .fs-5 .mb-4 .mb-md-0 }

---

## What is CD? (2 min video)
<iframe width="560" height="315" src="https://www.youtube.com/embed/U7z4uyonixk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

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

Note that while we use averaging as an aggregation method for these examples, Multi-Pearson supports effectively every element-wise aggregation method such as MAX, MIN, SUM, XOR, etc.

Also note that these examples only consider the Multi-Pearson correlation metric, while there also exist plenty of research on other multivariate correlation metrics such as:
- Total Correlation ([Wiki](https://en.wikipedia.org/wiki/Total_correlation))
- Canonical Correlation Analysis ([Wiki](https://en.wikipedia.org/wiki/Canonical_correlation))
- Tripoles/Multipoles ([Link](https://conservancy.umn.edu/bitstream/handle/11299/216019/18-003.pdf?sequence=1))

--- 

## Why are they relevant?
Recent studies have repeatedly shown that multivariate correlations can capture patterns in data that could not have been found by only considering bivariate correlations.
Consequently, by considering such correlations one can **gain new insights from data**, which help for better understanding (natural) phenomena.
That's why multivariate correlations have become a popular topic in research communities from a wide variety of scientific domains throughout the last years.

Some recent discoveries are:
1. **Neuroscience**
  - Analysis of *fMRI* data lead to the discovery that the brain's left middle frontal assimilates information from the right superior frontal and left inferior frontal regions while listening to audio ([Link](https://conservancy.umn.edu/bitstream/handle/11299/216019/18-003.pdf?sequence=1)). \\
  <img src="https://user-images.githubusercontent.com/100126005/156396694-734db45e-890e-4cae-b6d6-f418d73e5d1f.png" alt="brain_anno" width="60%">
  <!-- ![brain_anno](https://user-images.githubusercontent.com/100126005/156396694-734db45e-890e-4cae-b6d6-f418d73e5d1f.png) -->
2. **Climatology**
  - Analysis of *Air Pressure* data lead to the discovery of led to the characterization of a new weather phenomenon and to improved climate models. Precicely, that the air pressure over the West Siberian Plain is strongly negatively correlated to the aggregated pressure levels over Darwin, Australia and Tahiti ([Link](http://users.stat.umn.edu/~chatt019//Research/Papers/JClimate17301_Liessetal_C.pdf)).
  <img src="https://user-images.githubusercontent.com/100126005/156396699-d42b033d-d9d0-4c45-bf42-0f49d5309c0d.png" alt="map_anno" width="80%">
3. **Genomics/Medicine**
  - Researchers found through analysis of *gene* data that presence of multiple RASopathy genes contributed to an elevated risk of autism spectrum disorders (ASDs) due to a phenomenon called epistasis. This phenomenon involves the dependence of the effect of a gene mutation on the presence or absence of mutations in other genes. In other words, multiple genes interact with each other which impacts the expression of a disease, while each gene individually only has weak correlation with the disease trait ([Link](https://watermark.silverchair.com/genetics0277.pdf?token=AQECAHi208BE49Ooan9kkhW_Ercy7Dm3ZL_9Cf3qfKAc485ysgAAAvgwggL0BgkqhkiG9w0BBwagggLlMIIC4QIBADCCAtoGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMp9AlPV6RbDzvWWwPAgEQgIICq5VyDr1FHsXVbwEkJS0OMrpRtB1iX4f35uqgbujRldy7cMVNlKhF76T9A3OjjjITkrylUSMKXJRC2DXsDXu11OQkndAv78t5A9DqgLffELnyqxLqdhz_VFE1E03sdacI-3o1JP2S7jaeCKWEOAXtU798TIfUPEbhIyfz-55XAJvwtak_NyPg41elCkbxO0mUGeyMBfITZ5UiUurh9m8S-RCccYl1Wuw-O2m-n0G94UNJvt4JEU8hRsKwLbGZrAs1HkSERDw9aoynOf1gA9sFpE5jwPgMVoAAf5SEZPz_CqsDi5R2WS5K-mto0WfiVjNUZjNz186Jychc6Nna47Y5Mf6fDsNTTKypr7hb7NQC2J0oWA2mGEwOFrvN4I5vH4zmlxN-BYUEcp4nOJ9lOvPFNxe8FgksBpo1MXOEemT6iK5KkrsuxZidhu1b-bGXRNckFn6Gycf7WVOuMdhp-7OuYysucGN454Ietqw_TIYAPFR26qkQQDAZ-9khz9LQgyq2ThFktCzJpOZCcX_-KlReG73RrQFNep3ggr0T44QdloBYOuHf4udnwwEJ-GIUokm5fC2Tis8LXcN8QxUofMrrPQ3wN6Jqh16FzBUe5PsYet9u8qj75mBMGv9qm_MGPqJjeHmakPbBzzf5U2tWPLUWnHE9IfviKfhZEcNELFBBNMdscHsUqbClQrmZ-TMg-KMLIZFidPpX3ypvG03A6UjI7hUNfVlJwCcPmMiijxO6GWi1kPbA9jkRPqkNBKMRWHJSMa2AygJtrgued_PfkGj61UhXtvFKzCf85p6akbzx9CSJy2ZW8BJXck7CRt5rYzbyE3U0XIBkcN9fIAL2LiCVQ7krBz4xVjy4oa5qSMsXSgLXMFJgeIXaLa2xWbV2wACBTiiQRks34Cqm41CC)).
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

In contrast, Correlation Detective is ...
1. Two orders of magnitude **faster** than baseline algorithms (see figure below for reference)
2. **Generic**; supports multiple query types, measures and *optional* constraints
3. Has extensions that support query **approximation** and **streaming** data

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
Want to see a demo on your own (numerical) dataset? Contact us via [email](mailto:o.papapetrou@tue.nl?subject=Correlation Detective contact&body=Dear Correlation Detective staff). \\
Also take a look at our [mission statement](https://corrdetective.github.io/pages/about/)

<!-- ## How does CD work?
#### Coming soon -->



<!-- ## Getting started

### Dependencies

Just the Docs is built for [Jekyll](https://jekyllrb.com), a static site generator. View the [quick start guide](https://jekyllrb.com/docs/) for more information. Just the Docs requires no special plugins and can run on GitHub Pages' standard Jekyll compiler. The [Jekyll SEO Tag plugin](https://github.com/jekyll/jekyll-seo-tag) is included by default (no need to run any special installation) to inject SEO and open graph metadata on docs pages. For information on how to configure SEO and open graph metadata visit the [Jekyll SEO Tag usage guide](https://jekyll.github.io/jekyll-seo-tag/usage/).

### Quick start: Use as a GitHub Pages remote theme

1. Add Just the Docs to your Jekyll site's `_config.yml` as a [remote theme](https://blog.github.com/2017-11-29-use-any-theme-with-github-pages/)
```yaml
remote_theme: pmarsceill/just-the-docs
```
<small>You must have GitHub Pages enabled on your repo, one or more Markdown files, and a `_config.yml` file. [See an example repository](https://github.com/pmarsceill/jtd-remote)</small>

### Local installation: Use the gem-based theme

1. Install the Ruby Gem
```bash
$ gem install just-the-docs
```
```yaml
# .. or add it to your your Jekyll site’s Gemfile
gem "just-the-docs"
```
2. Add Just the Docs to your Jekyll site’s `_config.yml`
```yaml
theme: "just-the-docs"
```
3. _Optional:_ Initialize search data (creates `search-data.json`)
```bash
$ bundle exec just-the-docs rake search:init
```
3. Run you local Jekyll server
```bash
$ jekyll serve
```
```bash
# .. or if you're using a Gemfile (bundler)
$ bundle exec jekyll serve
```
4. Point your web browser to [http://localhost:4000](http://localhost:4000)

If you're hosting your site on GitHub Pages, [set up GitHub Pages and Jekyll locally](https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll) so that you can more easily work in your development environment.

### Configure Just the Docs

- [See configuration options]({{ site.baseurl }}{% link docs/configuration.md %})

---

## About the project

Just the Docs is &copy; 2017-{{ "now" | date: "%Y" }} by [Patrick Marsceill](http://patrickmarsceill.com).

### License

Just the Docs is distributed by an [MIT license](https://github.com/pmarsceill/just-the-docs/tree/master/LICENSE.txt).

### Contributing

When contributing to this repository, please first discuss the change you wish to make via issue,
email, or any other method with the owners of this repository before making a change. Read more about becoming a contributor in [our GitHub repo](https://github.com/pmarsceill/just-the-docs#contributing).

#### Thank you to the contributors of Just the Docs!

<ul class="list-style-none">
{% for contributor in site.github.contributors %}
  <li class="d-inline-block mr-1">
     <a href="{{ contributor.html_url }}"><img src="{{ contributor.avatar_url }}" width="32" height="32" alt="{{ contributor.login }}"/></a>
  </li>
{% endfor %}
</ul>

### Code of Conduct

Just the Docs is committed to fostering a welcoming community.

[View our Code of Conduct](https://github.com/pmarsceill/just-the-docs/tree/master/CODE_OF_CONDUCT.md) on our GitHub repository. -->
