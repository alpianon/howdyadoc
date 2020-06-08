---
title: Introduction to intellectual property
template: assets/theme/array_white.html
css: assets/theme/custom_poli.css
preprocessor: assets/js/frag-image.js
verticalSeparator: ^----
laguage: en
---
# Ip and licensing of scientific software

![](assets/img/politecnico.png)<!-- .element: style="border-width:0; box-shadow: none; height: 2.2em; float: left; margin-right: 1em;" --> Politecnico di Milano -- Course on Advanced Programming for scientific studies  

by Carlo Piana   Array https://array.eu   

Milano, June 2020


---

## The wording "Intellectual Property" is a misnomer

- <!--frag semi-fade-out index 1 --> It is a **collective name** for a plethora of different subjects
- <!--frag fade-in-then-semi-out index 1 --> These subjects are held together by a very few common traits
  - exclusionary rights (or *negative* rights)
  - a law establishing them (require a legal framework)
- <!--frag--> They don't exist in nature

---

## A quick list

- copyright
- patents (family)
- trademarks
- trade secrets
- database rights

---

## Quelle petite Différence

![](assets/img/giraffes.svg)

---

# How do they differ?

- Conditions to obtain them
- Territorial scope
- Scope of protection
- Duration

---

# Conditions to obtain them

----

## copyright

- Berne convention
- Fixation
- **automatic**
- No further requirements
- *Gratis*

----

## Patents, Trademarks

- Application
- Examination by an office
- Public grant
- Pay a fee

----

## Trade secrets

- keep something... secret
- keep it protected

----

## Database sui generis rights

- automatic
- relevant investment in collecting, organizing, presenting data

---

# Territorial scope

- copyright, trade secrets: **worldwide** <!--frag-->
- patents, trademarks: **state-by-state** <!--frag-->
- database rights: **EU only** <!--frag-->

---

# Scope of protection

- copyright: **Original creation** <!--frag-->
- patents (inventions): **new way to resolve a technical problem** <!--frag-->
- trademarks: **distinctiveness (product, service, brand)** <!--frag-->
- database rights: **dataset, substantial part** <!--frag-->
- trade secrets: **secrecy of valuable information** <!--frag-->

---
# Duration


- Copyright: **Life + 70 years** <!--frag-->
- patents (inventions): **~20 years from first claimed priority** <!--frag-->
- trademarks: **forever until renewed** <!--frag-->
- trade secrets: **forever until secret** <!--frag-->
- database rights: **15 years from last substantial investment** <!--frag-->

---

# Protection of software

---

## What is relevant (for scientific software and software at large?)

- Copyright (code, as a literary works)
- Patents (ways of using code to resolve "technical problems")
- Trade secrets (source vs. object/obfuscated)
- Trademark ("product")
- Database rights (residual)

---

## Patent vs. copyright

What do they cover:

- patents cover the idea, copyright the form of expression
- copyright does not cover facts, data
- patents do not cover software as such @fa[laugh-squint fa-2x fa-red fragment]

---

## Patent vs. copyright

How do you infringe:

- patent: stumble in one claim
  - even if innocent, unbeknonwst to you
- copyright: you must copy
  - assessment: probabilistic
- don't forget moral rights

---

## Copyright on distributed code

- no license, conditions = "all rights reserved"
- EULA
- sell all rights
- public license, open source

---

# Open Source (Free Software)

---

## What is open Source

In a nutshell, a set of public licenses that grant *everybody* some liberties:

- use the software
- study and change the software
- distribute copies of the software
- distribute modified versions of the software

<!--frag-->Well, that's "Free Software" and those are the [4 liberties](https://www.gnu.org/philosophy/free-sw.html)...

---

## The OSD

Open source is technically software licensed under conditions of a license that complies with the **Open source definition**, stewarded by the Open Source Initiative <https://opensource.org>

But that only tells a part of the story.

----

## The whole story

Open source is about how the software  

- <!--frag-->is created
- <!--frag-->is distributed
- <!--frag-->is maintained
- <!--frag-->can be used, modified, studied
- <!--frag-->...

---

## Inbound vs Outbound Licensing, derivative software

Nobody writes software from scratch!

- <!--frag--> You take some code
- <!--frag--> That code has its own conditions
- <!--frag--> Conditions of software you are reusing is called **inbound**
- <!--frag--> Conditions of software you are *distributing* is called **outbound**
- <!--frag--> If software contains substantial fragments of other software, it is a **derivative**.
- <!--frag--> Derivative software needs permission from the original(s)

---

# Why is it important to know?

A license can be very simple and just permit whatever to whomever. But with most licenses, **permission** is granted only *provided that* you comply with **conditions**


- <!--frag--> **If** condition is complied with, **then** you can {modify, distribute original or modified software}
- <!--frag-->  **If** condition **is not** complied with, **then** you cannot {modify, distribute original or modified software}


----

## Is this "copyleft"?

No, copyleft is a *subclass* of  Free Software conditions.

- <!--frag--> Conditions impact on **outbound** software, and outbound license
- <!--frag--> One condition is **"inbound license == outbound license"**
- <!--frag--> Depending on the scope of this condition (just the library, the file or the entire derivative), we have **"strong"** or **"weak copyleft"**

---

## A Clash of Licenses

The more conditions and the stricter, the more likely you have **incompatibilities**: there is no state in which you can comply with both.

---

# We call it **"compliance"** <!--frag-->

---

# Text and data mining, open data

---

## New directive on Copyright

- yet to be implemented in many states (including Italy)
- deals also with software and data mining
- but not quite sufficient

----

## Definition

Article 2
<div class="normativa" >
(2) 'text and data mining' means any automated analytical technique aimed at analysing text and data in digital form in order to <strong>generate information</strong> which includes but is not limited to patterns, trends and correlations;</div>

----
## The issue

Whereas
<div class="normativa" >
(11) The <strong>legal uncertainty</strong> concerning text and data mining should be addressed by providing for a <strong>mandatory exception</strong> for <strong>universities</strong> and other <strong>research organisations</strong>, as well as for <strong>cultural heritage institutions</strong>, to the exclusive right of reproduction and to the right to prevent extraction from a database.</div>

----

## Compulsory exception for scientific research

Art. 3 -  Text and data mining for the purposes of **scientific research**

<div class="normativa" >
1.   Member States shall provide for an exception to the rights provided for in Article 5(a) and Article 7(1) of Directive 96/9/EC, Article 2 of Directive 2001/29/EC, and Article 15(1) of this Directive for <strong>reproductions and extractions</strong> made by research organisations and cultural heritage institutions in order to carry out, for the purposes of scientific research, text and data mining of works or other subject matter to which they have lawful access.</div>

----

## Non compulsory exception for all others

Article 4 - Exception or limitation for text and data mining
<div class="normativa" >
3.   The exception or limitation provided for in paragraph 1 shall apply on condition that the use of works and other subject matter referred to in that paragraph <strong>has not been expressly reserved</strong> by their rightholders in an appropriate manner, such as machine-readable means in the case of content made publicly available online.</div>


---

## Open data

Open data is an increasing mantra for public and private entities alike. "Open" Means:

- accessible
- machine-readable / parseable (standards)
- under rights that allow for extraction and reuse
- see guidelines on open data for PA
  - Commission communication 2014/C – 240/01
  - Italian guidelines (2017)

----

## 2 models

- licenses (mainly Creative Commons BY, starting from 4.0, ODBL, IODBL, CLD --Linux Foundation)
- "waiver" (mainly CC-0)
- <!--frag-->please avoid share alike

---

## Where to find out more

![book piana](assets/img/book_piana.jpg) <!-- .element: class="center-img" -->


---
<!-- bkg thanks.jpg-->

## Thank you!

<div class="bottom" style="position: relative; bottom: -10em;">


[![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)<!-- .element: style="border-width:0" -->][CC-by-sa]

This work is licensed under a [Creative Commons - Attribution - ShareAlike][CC-by-sa]

Presentation made using [Reveal.js][81aa3153] and a [Markdown][81aa3154] workflow with [reveal-md](https://github.com/webpro/reveal-md)

</div>

  [CC-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
  [81aa3153]: https://revealjs.com/ "Reveal"
  [81aa3154]: https://daringfireball.net/projects/markdown/syntax
