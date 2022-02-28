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
 <!-- [View it on GitHub](https://github.com/pmarsceill/just-the-docs){: .btn .fs-5 .mb-4 .mb-md-0 } -->

---

## What is CD?
<iframe width="560" height="315" src="https://www.youtube.com/embed/U7z4uyonixk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## What is a multivariate correlation?
Strictly speaking, a multivariate correlation is any statistical relationship (whether causal or not) between **three or more** random variables or multivariate data. This concept is different from the more commonly used *bivariate correlation* ([Wiki](https://en.wikipedia.org/wiki/Correlation)) which only considers two variables. 

There are a multitude of multivariate correlation metrics that measure such relationships, the most straightforward being **Multi-Pearson**. This metric essentially measures the *Pearson correlation coefficient* ([Wiki](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient)) between aggregations of two sets of variables.

***In words***, this boils down to for example asking the question *"How dependent is the sale of ice cream in Spain on the average temperate between Madrid and Barcelona"* (multivariate), where one would only consider the temperature of single locations when focusing on bivariate correlations.

***Mathematically***, if we want to derive the multivariate correlation coefficient $$\rho$$ between variable sets $$\{A\}$$ and $$\{B,C\}$$ using averaging as an aggregation method, this boils down to computing;

$$ \rho_{A,(BC)} = \rho(A,\frac{B+C}{2}) = \frac{cov(A, (B+C)/2)}{\sigma_A, \sigma_{(B+C)/2}}$$

[Figure]

Note that these examples only consider the Multi-Pearson correlation metric, while there also exist plenty of research on other multivariate correlation metrics such as:
- **Total Correlation** ([Wiki](https://en.wikipedia.org/wiki/Total_correlation))
- **Canonical Correlation Analysis** ([Wiki](https://en.wikipedia.org/wiki/Canonical_correlation))
- **Tripoles/Multipoles** ([Paper](https://conservancy.umn.edu/bitstream/handle/11299/216019/18-003.pdf?sequence=1))

## Why are they relevant? (use cases)
  - Finance
  - Genomics
  - Neuroscience
  - Meteology  

## Why CD?
  - Two orders of magnitude faster
  - Generic, supports multiple query types, measures and constraints
  - Has extensions that support query approximation and streaming data

## How does CD work?
  - ...

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
