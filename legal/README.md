# hodyadoc-legal

Toolchain for legal documents (contracts, legal reports, etc.)
It may be suitable also for academic documents.

## Requirements

Any modern linux distribution; perl, pandoc, pandoc-crossref, mustache (any CLI implementation of mustache should work)

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

`howdyadoc-legal-convert MARKDOWN_FILE OUTPUT_FILE [REFERENCE_DOC]`

Output file type is determined by its extension (.odt, .docx or .html)

Comments are converted only in docx

## Convert to HTML snippets

While HTML does not require a template, a template is provided in [/templates](templates/html-snippet-template.html). If passed as third argument, it creates the target HTML file without metadata, easier to be included elsewhere.

## TODO

- convert to pdf (via libreoffice)
- add support for win/mac
- write better documentation :)
