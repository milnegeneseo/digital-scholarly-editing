---
layout: page
title: TEI and literature
---

How important are XML encoding in general, and TEI encoding in particular, to literary study in the digital age? Here are just a few of the many digital humanities projects that use some version of XML, including TEI.

  - [The William Blake Archive](http://www.blakearchive.org)
  - [Rossetti Archive](http://www.rossettiarchive.org/)
  - [The Walt Whitman Archive](https://whitmanarchive.org/)
  - [The Mark Twain Project](https://www.marktwainproject.org)
  - [Shelley-Godwin Archive](http://shelleygodwinarchive.org/)
  - [Emily Dickinson’s Correspondences](https://rotunda.upress.virginia.edu/edc/default.xqy)
  - [The Frankenstein Variorum](https://www.researchsoftware.co.il/frankenstein-variorum/)
  - [The Melville Electronic Library](https://melville.electroniclibrary.org/)
  - [Digital Mitford](https://digitalmitford.org/)
  - [The Seward Family Digital Archive](https://sewardproject.org/)

## Understanding TEI markup

In this class, we’re not going to try to become experts in the use of TEI, but we do want to understand it well enough to appreciate how it works.

### Structure of a basic TEI file

Here’s what a basic TEI file looks like. The bits in the code below that look like this —

`<!-- Some text or other here. -->`

— are comments. They serve no functional purpose in the file and are only there to help explain the different parts of the document. You’ll find comments like these in many XML and HTML documents, by the way, since comments are a useful way for encoders to document, for themselves and others, what they’re attempting to accomplish with their markup.

    <!-- XML declaration and other information about the encoding. -->
    
    <?xml version="1.0" encoding="UTF-8"?>
    <?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
    <?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml"
        schematypens="http://purl.oclc.org/dsdl/schematron"?>
    
    <!-- The opening tag for root element, TEI -->
    
    <TEI xmlns="http://www.tei-c.org/ns/1.0">
    
    <!-- The teiHeader element, which contains elements with information about both the TEI file and the document being encoded in it. -->
    
      <teiHeader>
          <fileDesc>
             <titleStmt>
                <title>Title</title>
             </titleStmt>
             <publicationStmt>
                <p>Publication Information</p>
             </publicationStmt>
             <sourceDesc>
                <p>Information about the source</p>
             </sourceDesc>
          </fileDesc>
      </teiHeader>
    
      <!-- The text element, which contains the encoded document. -->
    
      <text>
          <body>
             <p>Some text here.</p>
          </body>
      </text>
    
    <!-- The closing tag of the root element, TEI -->
    
    </TEI>

You can [download a copy of this file here](https://canvas.geneseo.edu/courses/17027/files/996990/download?wrap=1 "basic_tei_file.xml") to open on your own computer in VS Code.

As you can see from the comments, a valid TEI file has the following main components:

  - The XML declaration and other information about the encoding
  - The root element TEI (enclosed between `<TEI>` and `</TEI>`), which contains
      - The TEI header (enclosed between `<teiHeader>` and `</teiHeader>`)
      - The TEI text (enclosed between `<text>` and `</text>`)

That’s it\! In the sample file, you see other elements nested inside the TEI header and the TEI text, respectively (for example, `<body>` is nested within `<text>`). But basically, the file has a two-part structure — (1) declaration and (2) `<TEI>` — with `<TEI>` containing its own two sub-parts, `<teiHeader>` and `<text>`.

### The TEI header

What kind of information goes in the TEI header? Mainly, information about the encoding project and the document being encoded. Take a look at the TEI file for the “Solitude” chapter of the fluid-text *Walden* that you downloaded earlier. Then look at some other examples from the teach-yourself-TEI website [TEI by Example](https://teibyexample.org/examples/TBED02v00.htm).

### TEI text

What goes in TEI text? This depends entirely on the textual content to be encoded and the decisions that an encoder or team of encoders have made about which features of the text are worth encoding for the purpose of their project.

Again, you can get a feel for some of the different approaches one can take to encoding by looking at the TEI by Example website. There you’ll find examples of

  - [Poems](https://teibyexample.org/examples/TBED04v00.htm)
  - [Prose](https://teibyexample.org/examples/TBED03v00.htm)
  - [Drama](https://teibyexample.org/examples/TBED05v00.htm)

Particularly relevant to our focus on fluid texts in ENGL 340 are the examples of [critical editing](https://teibyexample.org/examples/TBED07v00.htm), all of which encode some text that exists in more than one version. These examples use a special set of elements to mark up the variants between a “base” or reference version of the text and one or more “witnesses” or differences from the base.

  - The `<app>` element introduces a place of variance from the base.
  - The `<lem>` element contains the text as it appears in the base or reference version.
  - The `<rdg>` element indicates how the text reads in one or more of the witnesses.

Within the opening `<rdg>` tag, you’ll find the attribute `wit`, whose value (`wit = "something"`) will be an identifier for one or more of the versions.

After you’ve looked over these examples, look at the following files to see how they use the same set of TEI elements.

  - [Any file encoding a chapter of the fluid-text *Walden*](https://github.com/milnegeneseo/fluid_text/tree/master/tei)
  - [The file encoding the variants of the Gettysburg Address](https://www.geneseo.edu/~schacht/fluid_gettysburg/samples/gettysburg.xml) that you read in the previous module using [The Versioning Machine](https://www.geneseo.edu/~schacht/fluid_gettysburg/samples/gettysburg.html)
  - [The file encoding the variants of Emily Dickinson’s “Faith is a Fine Invention”](http://v-machine.org/samples/faith.xml) that you read in the previous module using [The Versioning Machine](http://v-machine.org/samples/faith.html)
