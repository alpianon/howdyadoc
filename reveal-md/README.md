# reveal-md workflow

## Rationale

- use reveal-md to display, print (pdf) and convert to static html markdown presentations
- full markdown presentations, with no (or only little) html
- easily readable markdown source 
- setting theme and options by selecting a single template file (which also allows to set html metadata eg. for apple devices)

## Requirements

- node.js
- reveal-md (`sudo npm install -g reveal-md`)

## Usage

`reveal-md --preprocessor assets/js/frag-pp.js floss_legal_101.md -w`

or

`reveal-md --preprocessor assets/js/frag-pp.js ./ -w`


## Syntax

### fragments

To enhance source readability, we use a shorter comment tag (`<!--frag-->`), which is replaced by preprocessor with `&shy;<!-- .element: class="fragment" -->` in order to work also with lines with bold or italic text (see <https://github.com/hakimel/reveal.js/issues/1848#issuecomment-590111319>)

```
<!--frag--> Paragraph.

- <!--frag--> line
- <!--frag--> line with *italic* and **bold** elements
```

trick:
```
- <!--frag--> First you will see this **and after you will see this** <!--frag-->
```

### vertical separator

We use `----` as vertical separator for slides to enhance readability in html preview (it is displayed as a line)

## Styling

### html template

By using an [html template](assets/theme/array_white.html) and referring it in [YAML front matter](floss_legal_101.md), we can:

- set **additional html metatata** (that cannot be set in reveal.js or reveal-md options), like `	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">`
- set **different reveal.js and reveal-md options for each theme** (instead of setting them in reveal.json and reveal-md.json for *all* files and themes, or setting them in YAML front matter of *each* markdown file)
- (**TODO**) set custom css for printing to pdf (not sure it can be done via reveal-md CLI arguments)

## reveal.js files 

If you need to use reveal.js CSS files, you do not need to duplicate them: just reference them using their "absolute" path with respect to reveal.js "root" folder, eg.:

```
@import url(/lib/font/source-sans-pro/source-sans-pro.css);
```

Instead, if you need to reference files within your directory structure, use relative paths, eg.:

```
.slide-background {
  background-image: url(../img/logo_array.png); }
```



