# Hugo Source

Is the source files of my [Blog on Github](https://wzdlc1996.github.io).

## MathJax Adjust

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
