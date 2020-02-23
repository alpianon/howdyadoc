# reveal-md workflow

## rationale

- use reveal-md to display, print (pdf) and convert to static html markdown presentations
- full markdown presentations, with no (or only little) html
- easily readable markdown source 
- setting theme and options by selecting a single template file (which also allows to set html metadata eg. for apple devices)

## requirements

- node.js
- reveal-md (`sudo npm install -g reveal-md`)

## syntax

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

### Vertical separator

We use `----` as vertical separator to enhance readability in html preview

## Usage

`reveal-md --preprocessor assets/js/frag-pp.js floss_legal_101.md -w`

or

`reveal-md --preprocessor assets/js/frag-pp.js ./ -w`
