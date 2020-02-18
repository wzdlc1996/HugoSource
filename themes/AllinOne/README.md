# AllinOne

Hugo theme - AllinOne.

[Demo](https://wzdlc1996.github.io)

Forked from [orianna-zzo/AllinOne](https://github.com/orianna-zzo/AllinOne) Thanks the author!

## Features

* Responsive full image carousel (Responsive text layout on it should be improved)
* Suited for blogging and personal webpages with static profile image (avatar) and website image (faviconfile)
* Smooth scroll && hierarchical TOC Scrollspy for content (h1~h4)
* Syntax highlighting with highlightjs
* Katex for Latex
* Google Analytics
* Font Awesome 3.1.0
* Built-in Tags, Series and Categories && show recomendations of the section in the sidebar
* Built-in pagination for sections
* Previous/Next post button
* Post card list with summary (with/without an intro picture) && Series card list in the sidebar
* In site search engine
* Mathjax for mathematical input

Most features are optional and can be individually enabled/disabled in your `config.toml`.

## Table of Contents

* [Quick Start](#quick-start)
* [Usage](#usage)
  * [Configuration](#configuration)
  * [Carousel Picture](#carousel-picture)
  * [Post Intro Picture](#post-intro-picture)
  * [Post Summary](#post-summary)
  * [Series Intro Picture](#series-intro-picture)
  * [In Site Search](#in-site-search)
* [License](#license)
* [Thanks](#thanks)

## Quick Start

From the root of your Hugo site, clone the theme into `themes/AllinOne` by running:

```sh
# Clone theme into the themes/AllinOne directory
$ git clone https://github.com/wzdlc1996/AllinOne.git themes/AllinOne
```

## Usage

### Configuration

Please see the sample [`config.toml`](https://github.com/orianna-zzo/AllinOne/blob/master/exampleSite/config.toml). The theme is built on Hugo v0.46.

If you use this as a theme of your project website (not the root directory),make sure not to use a forward slash `/` in the beginning of a `PATH` in your `config.toml`, `img` in your post head and `url` in your data direcotory, because Hugo will turn it into a relative URL and the `absURL` function will have no effect.

### Carousel Picture

Set two params in `config.toml`, `slidesDirPath` and `slidesDirPathURL`.

`slidesDirPath` sets the directory path for hugo server to search. `slidesDirPathURL` sets the rel url for the images.

Here are simple examples for quick start.

```toml
# if you want to use images in the theme (defult in the theme)
slidesDirPath    = "themes/AllinOne/static/img/header-slides"
slidesDirPathURL = "img/header-slides"

# if you want to use images in static/img/header-slides
slidesDirPath  = "static/img/header-slides"
slidesDirPathURL = "img/header-slides"
```

### Post Intro Picture

List the image path in the `YAML` head of the post. For example:

```YAML
---
date: "2018-08-13T00:14:19+08:00"
publishdate: "2018-08-13+08:00"
lastmod: "2018-08-13+08:00"
draft: false
title: "This is an example"
tags: ["css", "blog"]
series: ["Example"]
categories: ["Sci"]
img: "images/blog/2018-08/test5.jpg"
toc: true
summary: "This is an example of adding an intro picture to the post. "
---

```

### Post Summary

There are three ways to add summary to each post.
* [Hugo-defined Summary Split](https://gohugo.io/content-management/summaries/)

  By default, Hugo automatically takes the first 70 words of your content as its summary and stores it into the `.Summary` page variable for use. It is much easier with no additional work, but it might not the one you want.

  If Chinese/Japanese/Korean (CJK) languages are in the content, set `hasCJKLanguage` as `true` in the `config.toml`, so that Hugo could auto detect CJK languages to make `.Summary` and `.WordCount` behave correctly. [See here](https://gohugo.io/getting-started/configuration)

  The length of text to show in a `.Summary` could be set as `summaryLength` in `config.toml`. [See here](https://gohugo.io/getting-started/configuration/)

* [User-defined Summary Split](https://gohugo.io/content-management/summaries/)

  Alternatively, you may add the \<!--more--\> summary divider where you want to split the article. Content that comes before the summary divider will be used as that content’s summary and stored in the `.Summary` page variable with all HTML formatting intact. The only extra work is add the \<!--more--\> summary divider.

* User-defined Summary

  You may want a specific summary for the post other than the front sentences of the content. In this case, you could but summary in the yaml head of the post with the param name `summary`.

### Series Intro Picture

By default, the series recommendation card list in the sidebar use `themes/AllinOne/static/img/default.png` as intro picture. You can set `name`, `img`, and `summary` in `data/series.toml`. `name` of the series should be in lower capitals. If the series cannot be found in `series.toml`, `default.png` will be used.

Here is an example of `data/series.toml`:

```TOML
[[series]]
name = "review repo"
img = "images/blog/2018-08/test3.jpg"
summary = "This is the place I write reviews"

[[series]]
name = "blog diary"
img = "images/blog/2018-08/test5.jpg"
summary = "How I build up my personal website"
```

### In Site Search

I add the in site search function to this theme. The configuration is posted on my personal site: [wzdlc1996/gitpage](https://wzdlc1996.github.io/artic/insitesearch/) .

The function is realized with the commercial search method `Algolia`.

The preview:

![in-site-search](https://wzdlc1996.github.io/imgs/artics/InsiteSearch_1.png)

### Mathjax Support

Mathjax is recommended here:

For the known [issue](https://gohugo.io/content-management/formats/#mathjax-with-hugo) about the the different handling about character `_` in markdown and MathJax, we use the same solution in that article. In the content files, one need to do some adjustment like:

1. inline formula should been stored in <code>\`\$...\$\`</code> , while block math environment should been stored in <code>\<div\>\$\$...\$\$\</div\></code>

2. Some preview plugin(markdown preview enhanced) in Atom may render the formulas hold in `$...$` and `$$...$$`,
   where we assume that there is a space between inline formula's `$` and context. And a `\n` (break) at the beginning and end of the block formula. Which may looks like:
   ```markdown
   This is a inline formula: $E=mc^2$ and this is a block one:

   $$\int_{\Sigma} \nabla \times \bm{f}\cdot \text{d}\bm{x} = \int_{\partial \Sigma} \bm{f}\cdot \text{d}\bm{x}$$
   ```
   the adjustment above will let the render engine not work. One can use the regular-expression and replace at last as:
    1. From markdown to adjusted content files:
       Inline: `[^\$](\$[^\$ ])` to <code>\`\$1</code> and `([^\$]\$) ` to <code>\$1\`</code>
       Block: `^(\$\$)` to `<div>$1` and `(\$\$)$` to `$1</div>`

    2. From adjusted content files to markdown _(where do *NOT* need reg-exp)_ :
       Inline: <code>\`\$</code> to `$` or `\(` (depend on plugin-config) and <code>\$\`</code> to `$` or `\)`
       Block: `<div>$$` to `$$` and `$$</div>` to `$$`

    After this procedure you should have it like:
    ```markdown
    This is a inline formula: `$E=mc^2$` and this is a block one:

    <div>$$\int_{\Sigma} \nabla \times \bm{f}\cdot \text{d}\bm{x} = \int_{\partial \Sigma} \bm{f}\cdot \text{d}\bm{x}$$</div>
    ```
    And cannot be normally previewed at [markdown preview plus](https://atom.io/packages/markdown-preview-plus)


## License

Licensed under the MIT License. See the [LICENSE](https://github.com/orianna-zzo/AllinOne/blob/master/LICENSE) file for more details.

## Thanks

Thanks to the following projects I learned from:

* Hugo theme [cocoa](https://github.com/nishanths/cocoa-hugo-theme)
* Material design for Bootstrap4 [mdb](https://mdbootstrap.com/)
* github/orianna-zzo/AllinOne [orianna-zzo/AllinOne](https://github.com/orianna-zzo/AllinOne)
* Yangming's Blog for in site search [Yangming's Blog](https://www.qikqiak.com/post/hugo-integrated-algolia-search/)
