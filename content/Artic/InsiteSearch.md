---
title: "Setup an In-Site Search"
date: 2018-12-09T14:56:40+08:00
draft: false
tags: ["front-end","development"]
series: ["hugo"]
categories: ["tools"]
toc: true
---

# Introduction

`Hugo` is a static website constructor, based on `GO`. In this article we will realize a search tools for the posts in your blog. It is well introduced in the official doc: [[hugo doc][1]]. Here we use the commercial search service: `Algolia` [[Algolia site][2]] .

Algolia has a free plan for personal use, which provides 10,000 records and 100,000 indexing operations per month. But it is enough for those personal website to use.

This article follows the post of Yangming's Blog [[Hugo&Algolia][3]] .

# Sign up to Algolia

It is allowed to sign up to Algolia with the authorization of Github or Google accounts. And by defauld, Algolia will construct an app to us. For new user there is a 14-day-free-trial with much more records and permitted operations. One can get to learned during these two weeks.

The direct interface for the user of Algolia is its `Dashboard` [[Dashboard][4]]. And in the indices page we can find how many indices have been used.

Algolia provides three ways to add records: manual, upload `JSON` file, and API. Here we will use the third way: `API` to add our records.

# Tool: hugo-algolia

To upload the records of the posts, we need to construct the `JSON` file to describe the content data. There is a open-source tool `hugo-algolia` to handle this easily. The github-site is : [[Github site][5]].

> This tool is used to generate and send indices from Hugo static sites for use with Algolia

And it supports YAML, JSON, and TOML front matter.

The installation is easy to do with `npm`:

```shell
npm install hugo-algolia
```

remember to let it executable with `chmod +x`

And one can simply use it with TOML front file to generate the JSON file:

```shell
hugo-algolia --config ./config.toml
```

It will generate a JSON file in the `$hugoroot/public` folder, in which all posts in `$hugoroot/content` will be listed.

One can also use the `-s` flag to send them to Algolia. However this tool can not read the `appID` and `key` in `TOML` file, we can make some hack on it. A temporal adjustment is edit the file `$node_modules_prefix/lib/node_modules/hugo-algolia/lib/index.js`, rewrite the function `HugoAlgolia.prototype.setCredentials` :

```js
//$node_modules_prefix/lib/node_modules/hugo-algolia/lib/index.js

HugoAlgolia.prototype.setCredentials = function() {
/*
   Original code, one can find that it called the module "matter" to handle the
   YAML file. Now YAML can handle the TOML too with the same usage, but the
   author of hugo-algolia has not correct it yet.

   const configMeta = matter.read(self.pathToCredentials);
   const creds = configMeta.data.algolia;

   if (creds) {
     self.algoliaCredentials = {
       indexName: creds.index,
       key: write_key && write_key !== undefined ? write_key : creds.key,
       appID: creds.appID
     };
     self.localIndexName = creds.index;
   }
*/
/*
   Here we directly write the "index", "key", and "appID" here so that them can
   be send to Algolia correctly.

*/
   self.algoliaCredentials = {
       indexName: "Your Index Name",
       key: "Administrator's Key",
       appID: "The Application ID"
     };
     self.localIndexName = "Your Index Name";
 };
```

With the adjustment, we can use the command:

```shell
hugo-algolia -s --config ./config.toml
```

at hugo root folder to generate the JSON indices file and send them to Algolia.

After this process we can find them under the `indices` page in the dashboard.

# Front-end Setup

Now we have submitted posts we want to Algolia. Then we need to make a front-end UI to use it. It is different for different hugo themes. Here we use a simple one:

we will add a little icon which is a `<a>` element actually, and when one click on it, there will be a `modal` subpage by the `bootstrap 4` library. And there will be a input dialog in it. Then we can use it to search the posts.

We need to add the `bootstrap 4` in the site, and because of the dependence, we need also add the `jquery` lib. Edit the `$themepath/layouts/partials/head.html` file:

```html
<!--$themepath/layouts/partials/head.html-->
<!--Bootstrap-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
```
One need to remove the origin `bootstrap css` importation if exists.

Then we can make the front-end ui:

First we need to add a file like `$themepath/layouts/partials/search.html`:

```html
<!--$themepath/layouts/partials/search.html-->

<div class="aa-input-container" id="aa-input-container">
    <input type="search" id="aa-search-input" class="aa-input-search" placeholder="Search for titles or URIs..." name="search" autocomplete="off" />
    <svg class="aa-input-icon" viewBox="654 -372 1664 1664">
        <path d="M1806,332c0-123.3-43.8-228.8-131.5-316.5C1586.8-72.2,1481.3-116,1358-116s-228.8,43.8-316.5,131.5  C953.8,103.2,910,208.7,910,332s43.8,228.8,131.5,316.5C1129.2,736.2,1234.7,780,1358,780s228.8-43.8,316.5-131.5  C1762.2,560.8,1806,455.3,1806,332z M2318,1164c0,34.7-12.7,64.7-38,90s-55.3,38-90,38c-36,0-66-12.7-90-38l-343-342  c-119.3,82.7-252.3,124-399,124c-95.3,0-186.5-18.5-273.5-55.5s-162-87-225-150s-113-138-150-225S654,427.3,654,332  s18.5-186.5,55.5-273.5s87-162,150-225s138-113,225-150S1262.7-372,1358-372s186.5,18.5,273.5,55.5s162,87,225,150s113,138,150,225  S2062,236.7,2062,332c0,146.7-41.3,279.7-124,399l343,343C2305.7,1098.7,2318,1128.7,2318,1164z" />
    </svg>
</div>
<script src="{{ "https://res.cloudinary.com/jimmysong/raw/upload/rootsongjc-hugo/algoliasearch.min.js" | absURL }}"></script>
<script src="{{ "https://res.cloudinary.com/jimmysong/raw/upload/rootsongjc-hugo/autocomplete.min.js" | absURL }}"></script>
<script>
/*here you need to write your appID and apiKey(not administrator key!)*/
var client = algoliasearch("Application ID", "API Key");
var index = client.initIndex('Your Index Name');
autocomplete('#aa-search-input',
{ hint: false}, {
    source: autocomplete.sources.hits(index, {hitsPerPage: 8}),
    displayKey: 'name',
    templates: {
        suggestion: function(suggestion) {
            console.log(suggestion);
            /*here the link format might be need to correct according to your site */
            return '<span>' + '<a href="/' + suggestion.uri.toLowerCase() + '/">' +
            suggestion._highlightResult.title.value + '</a></span>';
        }
    }
});
</script>
```

Where the `svg` element is a little magnifier icon.

Then we need to make a entry. For `AllinOne` theme: [[AllinOne homepage][6]] , we will set it on the left of `navbar`. Edit the file `$themepath/layouts/partials/site-navbar.html` , add this `<a>` element at the end of the `<div>` in the label `<nav>` , before the last `</div>` notation.

```html
<!--$themepath/layouts/partials/site-navbar.html-->
<a data-toggle="modal" data-target="#modalSearch" style="outline: none;">
  <svg class="aa-input-butn" viewBox="654 -372 1664 1664">
  <path d="M1806,332c0-123.3-43.8-228.8-131.5-316.5C1586.8-72.2,1481.3-116,1358-116s-228.8,43.8-316.5,131.5  C953.8,103.2,910,208.7,910,332s43.8,228.8,131.5,316.5C1129.2,736.2,1234.7,780,1358,780s228.8-43.8,316.5-131.5  C1762.2,560.8,1806,455.3,1806,332z M2318,1164c0,34.7-12.7,64.7-38,90s-55.3,38-90,38c-36,0-66-12.7-90-38l-343-342  c-119.3,82.7-252.3,124-399,124c-95.3,0-186.5-18.5-273.5-55.5s-162-87-225-150s-113-138-150-225S654,427.3,654,332  s18.5-186.5,55.5-273.5s87-162,150-225s138-113,225-150S1262.7-372,1358-372s186.5,18.5,273.5,55.5s162,87,225,150s113,138,150,225  S2062,236.7,2062,332c0,146.7-41.3,279.7-124,399l343,343C2305.7,1098.7,2318,1128.7,2318,1164z" />
  </svg>
</a>
```

And add the following `<div>` after the `<nav>` :

```html
<!--$themepath/layouts/partials/site-navbar.html-->
<!-- Modal -->
<div class="modal fade" id="modalSearch" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Search</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        {{ partial "search.html" . }}
      </div>
    </div>
  </div>
</div>
```

You need also add a `CSS` file in which to assign the style of these elements:

{{%fold "CSS file"%}}

```CSS
/*#themepath/static/css/search.css*/
@import 'https://fonts.googleapis.com/css?family=Montserrat:400,700';
.aa-input-container {
  display: inline-block;
  position: relative;
  width: 100%;
}
.aa-input-container span,.aa-input-container input {
    width: inherit;
}
.aa-input-search {
  width: 300px;
  padding: 12px 28px 12px 12px;
  border: 2px solid #e4e4e4;
  border-radius: 4px;
  -webkit-transition: .2s;
  transition: .2s;
  font-family: "Montserrat", sans-serif;
  box-shadow: 4px 4px 0 rgba(241, 241, 241, 0.35);
  font-size: 11px;
  box-sizing: border-box;
  color: #333;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}
.aa-input-search::-webkit-search-decoration, .aa-input-search::-webkit-search-cancel-button, .aa-input-search::-webkit-search-results-button, .aa-input-search::-webkit-search-results-decoration {
    display: none;
}
.aa-input-search:focus {
    outline: 0;
    border-color: #3a96cf;
    box-shadow: 4px 4px 0 rgba(58, 150, 207, 0.1);
}
.aa-input-icon {
  height: 16px;
  width: 16px;
  position: absolute;
  top: 50%;
  right: 16px;
  -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
  fill: #e4e4e4;
}
.aa-input-butn {
  height: 16px;
  width: 16px;
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
  fill: #e4e4e4;
}
.aa-hint {
  color: #e4e4e4;
}
.aa-dropdown-menu {
  background-color: #fff;
  border: 2px solid rgba(228, 228, 228, 0.6);
  border-top-width: 1px;
  font-family: "Montserrat", sans-serif;
  width: 300px;
  margin-top: 10px;
  box-shadow: 4px 4px 0 rgba(241, 241, 241, 0.35);
  font-size: 11px;
  border-radius: 4px;
  box-sizing: border-box;
}
.aa-suggestion {
  padding: 12px;
  border-top: 1px solid rgba(228, 228, 228, 0.6);
  cursor: pointer;
  -webkit-transition: .2s;
  transition: .2s;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}
.aa-suggestion:hover, .aa-suggestion.aa-cursor {
    background-color: rgba(241, 241, 241, 0.35);
}
.aa-suggestion > span:first-child {
    color: #333;
}
.aa-suggestion > span:last-child {
    text-transform: uppercase;
    color: #a9a9a9;
}
.aa-suggestion > span:first-child em, .aa-suggestion > span:last-child em {
  font-weight: 700;
  font-style: normal;
  background-color: rgba(58, 150, 207, 0.1);
  padding: 2px 0 2px 2px;
}
```

{{%/fold%}}

And add it to the `$themepath/layouts/partials/head.html` to let it contain the css file:

```html
<!--$themepath/layouts/partials/head.html-->
<!--Search-->
<link rel="stylesheet" href="{{ "css/search.css" | absURL }}" />
```

There might be a little bug of the bootstrap modal, which let the `padding-right` of `body` increase at each time to use the modal. To correct this, we can add a line to the `$themepath/static/css/main.css` :

```CSS
body {
  padding-right: 0px !important;
}
```

# Result

After all, we will have a search icon in the left of the navigation bar. It will be looked like:

{{% center %}}<img name="preview" src="/imgs/artics/InsiteSearch_1.png"/>{{% /center %}}

# Reference:

1.  [Hugo official doc](https://gohugo.io/tools/search/)
2.  [Algolia official page](https://www.algolia.com/)
3.  [Yangming's Blog](https://www.qikqiak.com/post/hugo-integrated-algolia-search/)
4.  [Algolia Dashboard](https://www.algolia.com/dashboard)
5.  [Github/10Dimensional/hugo-algolia](https://github.com/10Dimensional/hugo-algolia)
6.  [Github/orianna-zzo/AllinOne](https://github.com/orianna-zzo/AllinOne)




[1]:https://gohugo.io/tools/search/
[2]:https://www.algolia.com/
[3]:https://www.qikqiak.com/post/hugo-integrated-algolia-search/
[4]:https://www.algolia.com/dashboard
[5]:https://github.com/10Dimensional/hugo-algolia
[6]:https://github.com/orianna-zzo/AllinOne
