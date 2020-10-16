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

`reveal-md --preprocessor assets/js/frag-image.js floss_legal_101.md -w`

or

`reveal-md --preprocessor assets/js/frag-image.js ./ -w`

The same parameters can be passed to the processor via the `YAML` statements, including an additional [custom CSS] like this:

```yaml
---
template: assets/theme/array_white.html
css: assets/theme/custom_poli.css
preprocessor: assets/js/frag-image.js
---
```

## Syntax

### fragments

To enhance source readability, we use a shorter comment tag (`<!--frag [further classes] [index] [0-9]-->`), which is replaced by preprocessor with `&shy;<!-- .element: class="fragment" -->` in order to work also with lines with bold or italic text (see <https://github.com/hakimel/reveal.js/issues/1848#issuecomment-590111319>)

In their simplest form, the fragment appear without further ado in the order they appear.

```
<!--frag--> Paragraph.

- <!--frag--> line
- <!--frag--> line with *italic* and **bold** elements
```

trick:
```
- <!--frag--> First you will see this **and after you will see this** <!--frag-->
```

Fragments **support classes** like:

```
<!--frag fade-in-then-semi-out-->
```

Available fragment subclasses in revealjs are:

```
visible
grow
shrink
zoom-in
fade-out
semi-fade-out
strike
fade-up
fade-down
fade-right
fade-left
current-visible
fade-in-then-semi-out
fade-in-then-out
highlight-blue <!-- blue, red, green variants  -->
highlight-bold <!-- entity gets the highlight according to the accent of the theme  -->

```
Other can be created in the template (see how we have with highlight-bold).

You can also **alter the order** of fragments by adding the optional parameter "index" followed by a number from 0 to 9 as the last argument.

So you can have

```
- <!--frag index 2 --> Some text appearing after
- <!--frag index 1 --> Some text appearing earlier

```
Mind that index must *always be the last parameter*

### Custom CSS

You can pass additional CSS that will go after the ones referenced in the template, for instance, to add an additional logo in a different position.

This is a working example with a second logo and a footer with copyright:

```CSS
.slide-background {
    background-image: url(../img/logo_array.png),
  url(../img/logoEURAC.png);

  background-size:
  12.5%,
  8%;}

div.reveal::after {content: "©2020 Carlo Piana - Array -  some rights reserved";
  display: block;
  font-size: 0.4em !important;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
  margin-left: auto;
  margin-right: auto;
  font-family: unset;
  font-style: unset;
  color: #733;
}

```

### vertical separator

We use `----` as vertical separator for slides to enhance readability in html preview (it is displayed as a line)

### background images

You can replace the standard background with a full screen image. There's a snippet also for that. Just put as the first line after the slide marker:

```
---
<!-- bkg image.jpg -->

```
Where `image.jpg` is in assets/img

### Image-only slides

If your content *is* the image, you can also put it (so it remains visible in the "preview") as the only content of the slide with `+` like this:

```
---
+image.jpg
```

(works with jpg, webp, png, svg)

### Font Awesome

Revealjs uses [Font Awesome](https://fontawesome.com/) icons for special characters. [GitPitch](https://gitpitch.com/) uses a convention like @fa[arguments class1 class2]. We have used the same convention to make them available. Note that `fragment` is a class that can be added, and the icon will be made a fragment item.

We also have fa-red and fa-green as CSS classes to change color.

Some examples:

```markdown
@fa[arrow-right]
@fa[check fa-green]
@fa[copyright fa-flip-horizontal]
@fa[copyright fa-spin fa-red]
@fa[exclamation-triangle fa-red]
@fa[exclamation-triangle fa-red fragment]
@fa[globe fa-strong]
@fa[question-circle]

```
Will render like:

![](images/2020/04/font-awesome-examples.png)

Some Font Awesome symbols have a "regular" (non solid) variant invoked with "far". Therefore the same syntax would work with `@far[arguments class]` as well, if the variant exists.

### Link to slides

Linking to slides is very easy

Just insert a comment with only `id` and a name like:

```
<!-- id something -->
```

And you can link to that slide by just using the standard hyperlink of Markdown, like:

```
See this [slide](#/something)
```


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

## Printing handouts

PDF can be generated on the fly without relying on a browser. Currently, `reveal-md` fails the install of `puppeteer`, a required component that can be installed by hand

```shell
sudo npm install -g puppeteer --unsafe-perm=true
```

*(warning: "unsafe-perm" looks bad, but anyway...)*

The command line is

```shell
reveal-md --preprocessor assets/js/frag-image.js \
namefile.md --print namefile.pdf [--print-size arguments] 
```
