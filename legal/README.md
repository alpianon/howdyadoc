# hodyadoc-legal

Toolchain for legal documents (contracts, legal reports, etc.)
It may be suitable also for academic documents.

## Requirements

Any modern linux distribution; perl, pandoc, pandoc-crossref, mustache (any CLI implementation of mustache should work: in Ubuntu Linux `ruby-mustache` works brilliantly)

Please make sure you have a recent version of pandoc (preferably > 2.10), as Ubuntu LTS installs a much older one.

Please install all requirements before proceeding to the next steps. Pandoc-crossref **is not shipped** with pandoc on most distributions.  You can install it via (a newer version might be available, please check and adapt)

```bash
wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.8.1/pandoc-crossref-Linux.tar.xz

tar -xJf pandoc-crossref-Linux.tar.xz

sudo mv pandoc-crossref /usr/local/bin

```

## Installation

```
cp pandoc-lua-filters/* ~/.pandoc/filters/
sudo cp scripts/* /usr/local/bin/
```

## Usage

### Preview in atom (with markdown-preview-enhanced package)

Just put `howdyadoc-legal-preview` as pandoc path in markdown-preview-enhanced settings.

Any pandoc option set by markdown-preview-enhanced will be ignored.

Even with complex documents, preview is usually generated in less than 1 or 2 secs on a decent PC or laptop, so **you can activate live preview** in markdown-preview-enhanced.

It should work also with other markdown preview packages (and with other editors, too).

## Convert to odt/docx/HTML

The script takes three arguments:

- the markdown file
- the output file
- (optional) the reference document (docx or odt template)

`howdyadoc-legal-convert MARKDOWN_FILE OUTPUT_FILE [REFERENCE_DOC]`

Output file type is determined by its extension (.odt, .docx or .html)

## Inline Comments

Markdown comments (`<!-- like this -->`) are **converted** into side comments, both in docx and in odt.

You can put your own name as the author by including it between brackets (`<!-- (myname) like this -->`)

## Center-aligned and right-aligned text

Using pandoc fenced divs, you can use the following sintax to render a center-aligned or right-aligned text both in odt/docx conversion and in html preview

```markdown
::: right
\                                                  this text is right-aligned
:::

::: center
\                                 centered!
:::
```
but to make it work with docx/odt you need to define "center" and "right" custom styles in your reference file. Moreover, to make it work with odt, you need at least pandoc v2.10, which supports custom styles also in odt.

Note that center/right-aligning the text in the markdown source is optional (just for better readability); if you want to do that, you *must* begin each line with `\`.

## Page Break

Thanks to a third party filter [pagebreak.lua](https://github.com/pandoc/lua-filters/tree/master/pagebreak), you can use this simple syntax to include a pagebreak in your documents:

```

\pagebreak

```
This works out of the box in docx, while to make it work with odt you must create a reference ODT file with a named paragraph style called 'Pagebreak' and define it as having no extra space before or after but set it to have a pagebreak after it (see https://help.libreoffice.org/Writer/Text_Flow).


## Convert to HTML snippets

While HTML does not require a template, a template is provided in [/templates](templates/html-snippet-template.html). If passed as third argument, it creates the target HTML file without metadata, easier to be included elsewhere.

## TODO

- add support for win/mac
- write better documentation :)
