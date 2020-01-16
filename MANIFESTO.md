## Manifesto

This project is born to streamline the use of certain tools for creating, manipulating and converting documents based on non-WISWYG writing tools. We believe that writing is akin to programming and can use the same tools. However, unlike programming, writing should not suffer from the steep learning curve that programming requires. We therefore selected **Markdown** and **Pandoc** as the building blocks of a text-based, nimble, extensible, powerful toolchain to create text in a way as close as possible to software coding, but without the hassle of knowing complex syntax, rules, environment, quirks of a programming language.

Added bounus, writing in plain text makes it possible to use git, currently the most powerful collaborative editing and development platform ever developed. Git can be used locally as well as interacting with different online platforms like GitHub, Gitlab, BitBucket etcetera. Git makes is (somewhat) easy to branch out any project to make a variant, write changes and submit the result to the original project without messing up everything.

We move from legal writing. Contracts, in fact, are very close to software: they have naming convention, pointers, routines, rules, variables, even libraries of pre-boiled elements. They change with time, they adapt, they co-exist in different versions, sometimes requiring backports from one version to another. That's where we started.

But that comes to a price, and that price is complexity and obsolescence. With this project we strive to reduce complexity, to reduce fragmentation and to make it possible to have a solid building environment to produce nice, solid, time-resilient, extensible, versatile, good-looking, powerful, adaptable, manageable documents in different formats with a very few command line instructions. And everything Free and Open Source.

### Why not to use standard WYSIWYG editors (MS Word, Libreoffice, Pages, etc.)?

Because for certain scopes of use, it is fundamental to focus on text content and structure and not on formatting, and keep the two things separated. Formatting is often confusing: it must flow from content (different formatting signals different parts of the text) and has its own semantic and structure. Frequently, formatting is using just to please the eye.

Because WYSIWYG editors usually mess around with ordered lists, numbered sections, revisions, etc., especially when the same document has to be edited with different versions of the same editor or with different editors (e.g. MS Word and Libreoffice).

Because the same document may need to be published in different formats and contexts (website, review, etc.), and conversions made by WYSIWYG editors are usually inefficient, disordered, cumbersome and require nearly impossible manual adjustments - while it would be better to have a single source document with content and structure, without any formatting, that can be compiled into any format and be given any rational formatting based on structure and not on impromptu inspiration.

Because certain kinds of documents must be always easily accessible and readable over time with any simple text editor (and not tied to a format fully supported only by specific versions of a specific WYSIWYG editor).

### Why Markdown?

Because even if it has not a single, universally accepted standard syntax, all of its syntax variants/flavors are simple and layman-readable even as source, consisting mostly of text and intuitive formatting elements (like one empty line to separate paragraphs, one, two, three dashes to mark hierarchical headings, stars for simple and strong emphasis).

Because even a geeky, non-layman gal/guy, when reading and writing a text, is better off if she/he can concentrate only on content and structure and not on the syntax itself (which would be hard if the syntax is complex and "noisy").

Because, even if with some variants, Markdown is a *de facto* standard for documentation and other texts.

### Why Pandoc?

Because it powerful and easily extensible, it supports many formats and standards, and works on different platforms.
