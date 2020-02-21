# hodyadoc-legal

Toolchain for legal documents (contracts, legal reports, etc.)
It may be suitable also for academic documents.

## Requirements

Any modern linux distribution; perl, pandoc, pandoc-crossref, mustache (any CLI implementation of mustache should work)

Please make sure you have a recent version of pandoc (> 1.7, preferably > 2.0), as Ubuntu LTS installs a much older one.

Please install all requirements before proceeding to the next steps. Pandoc-crossref **is not shipped** with pandoc on most distributions.  You can install it via

```bash
wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.4.1a/linux-pandoc_2_7_3.tar.gz

tar -xf linux-pandoc_2_7_3.tar.gz

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

## Convert to odt/docx

`howdyadoc-legal-convert MARKDOWN_FILE OUTPUT_FILE [REFERENCE_DOC]`

Output file type is determined by its extension (.odt or .docx)

Comments are converted only in docx

## TODO

- convert to pdf (via libreoffice)
- convert to html snippet
- add support for win/mac
- write better documentation :)
