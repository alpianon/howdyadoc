# Howdyadoc

This project stems from the need to **standardize and simplify the use of document editing toolchains based on plain text editors, markdown language and pandoc**. 

The aims of this project are:

1. to define standard pandoc/markdown toolchains for specific purposes, 

2. to provide installation packages to easily implement such toolchains, 

3. to document the "extended" markdown syntax that can be used in each toolchain/scope of use.  

> If you want to know why you might be better off using a text editor instead of a WYSIWYG editor to edit documents (even if you are not a geek), please read our [MANIFESTO](./MANIFESTO.md).

## 1. Define standard pandoc/markdown toolchains for specific purposes

The main aim of the project is to define **standard toolchains**

  - to **process markdown documents** through **pandoc** (and related filters and preprocessors) and
   
  - to **edit and preview markdown documents** that have to be processed through pandoc

**for specific purposes and scopes of use** (e.g. legal documents, academic publications, books, technical articles, etc.).

Such standard toolchains may include pandoc filters or preprocessors that **extend the original pandoc/markdown syntax**, but always sticking to a fundamental principle: **keep the syntax simple and layman-readable!** (otherwise it would be make sense to use more structured and better standardized languages like LateX).  

## 2. Provide packages to implement standard pandoc toolchains

Toolchains should be easy to implement and use (and also to keep updated over time with possible improvements and extensions). 

This can be achieved by providing simple installation packages (typically, one for document processing and one for document editing and preview) to **easily implement standard pandoc toolchains** with a single command that installs any dependencies and that works **on different platforms (Linux, OSX, Windows)** (as easy as `pip install --user howdyadoc` and `apm install howdyadoc-atom`)

## 3. Document the extended markdown syntax for each toolchain/scope of use

Combining different pandoc filters and preprocessors may allow you to do interesting things and to better structure your document, but such filter and preprocessors usually extend the original markdown syntax, and each of such filters and preprocessors has its own documentation - so information on usage of each toolchain is dispersed among different sources.

To overcome this problem, this projects aims to collect and document all extended functionalities and markdown syntax extensions in a single howto for each toolchain.
