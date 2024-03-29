# Hugo Source

Is the source files of my [Blog on Github](https://wzdlc1996.github.io).

## Todo list

-  [x]  Math equation
-  [ ]  Code line number
-  [ ]  Neat posts cover

## MathJax Adjust

Now the theme is automatically support mathjax. One does not need any post-process!

This function is implemented by the automatically replace all equations with neat form in `.RawContent` by:

```
AllinOne/layouts/partials/escapeMathjaxEq.html

{{ $rawcont := .RawContent }}
{{ $rddcont := .Content }}
{{ $niceBlockEqs := findRE "[$][$][\\w\\W]+?[$][$]" .RawContent }}
{{ $badBlockEqs := findRE "[$][$][\\w\\W]+?[$][$]" $rddcont }}
{{ range $ind, $val := $niceBlockEqs }}
    {{ $rddcont = replace $rddcont (index $badBlockEqs $ind) $val }}
{{ end }}

{{ $rddcont = $rddcont | replaceRE "([^\\$])([$][^\\$]+?[$])([^\\$])" "$1 $2 $3" }}



{{ $niceInlineEqs := findRE "[^\\$][$][^\\$]+?[$][^\\$]" .RawContent }}
{{ $badInlineEqs := findRE " [$][^\\$]+?[$] " $rddcont }}
{{ range $ind, $val := $niceInlineEqs }}
    {{ $newval := replaceRE "([$][^\\$]+?[$])" " $1 " $val }}
    {{ $rddcont = replace $rddcont (index $badInlineEqs $ind) (substr $newval 1 -1) }}
{{ end }}

{{- $rddcont | safeHTML -}}
```

This replacement run automatically independent of the trigger in `config.toml`. For the special cases when one do not need math rendering, please set params `nomath: true` in the post heading, like

```
---
title: "Bluetooth Audio Issues"
date: 2018-11-15T13:13:29+08:00
draft: false
tags: ["os-setup", "manjaro"]
categories: ["Linux"]
toc: true
nomath: true
summary: "How to manager the Bluetooth earphones. Switch HSV to A2DP for the better performance."
---
```

<details>
<summary>previous solutions:</summary>
The [issue](https://gohugo.io/content-management/formats/#mathjax-with-hugo) has been solved after recent update of Hugo. But now it renders character `\\` as `\`. To resolve this, a new shortcode `mathjax` is defined:

1.  Inline formula should been stored as `$...$`.
2.  Block math environment should be written as:
    ```markdown
    {{< other-shortcodes >}}
      {{< mathjax >}}
      $$ formulas $$
      {{< /mathjax >}}
    {{< /other-shortcodes >}}
    ```

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
</details>

## Content Arrangement

There are three properties can be assigned for every post:

1.  `Category`: Is the main and basic classification for posts. It is a little like the classification of sub-folders in the `/content/` folder. Different posts about different subjects should be assigned different `category`, like _physics_ , _linux_ , _tools_ , and so on. And one post can only have one `category`
2.  `Series`: Not all posts should have the `series` property. Only those posts which have fine connection and structure of logic can be assigned the same `series` . Like a set of class notes and book reviews. A `series` of posts should show a more developed theory (about 100-year-developing) but not the work are still studied.
3.  `Tags`: Every posts should have its tags. They will form a description for it finely, but show its combination to other posts. One posts can have more than one tags. Every time to make a new posts, check whether there are some tags can be used or not. Do `NOT` make duplicate tags.

## Theme

You can get a much more detailed documentation about the theme at [orianna-zzo/AllinOne](https://github.com/orianna-zzo/AllinOne) , and the modified one for the theme used here at [wzdlc1996/AllinOne](https://github.com/wzdlc1996/AllinOne)
