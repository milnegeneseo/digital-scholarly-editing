---
layout: page
title: "Introduction to text encoding"
description: some description
page-order: 800
---

The module on scholarly editing introduced the concept of *metareading* as a type of reading that makes claims about a text *as* text. Although not the same as *close reading*, which focuses on generating interpretations of a text through attention to patterns (of words, imagery, narrative elements, character, etc.), metareading certainly requires close attention to detail. And because declarations about a text as text require judgment and are always subject to debate, metareading is, in its own way, interpretive.

We’ve also seen that metareading and close reading are not only similar but frequently intertwined. Especially in the case of fluid-text editing, everything we say about the text as text has potential consequences for how we interpret its meaning.

## Metareading and metalanguages

There are many different ways to make declarative statements about a text. We can take a page from the manuscript of *Walden* and write a paragraph or an essay describing what we believe to be happening on the page. We can also use a tool such as TimelineJS to take a more visual approach, putting images of the manuscript beside a running description of Thoreau’s revisions.

For the digital humanist, the most flexible, comprehensive, thorough, and useful way to make statements about a text is to make these statements right inside the text (or, in some cases, adjacent to it) using a language specially designed for the purpose.

Terms for describing the parts of texts and the types of words used in them have been around for a long time. Books typically have *titles*, and these often appear on a *title page*. Longer books are frequently divided into *chapters*; chapters generally begin with *chapter titles* and may contain *chapter headings* and *subheadings*. Poems typically consist of *lines* which are frequently divided into *stanzas*. Dramas are divided into *acts* in which dialog is spoken by *speakers*. And so on. We learn such terms so early on in our literary education that we rarely give them a moment’s thought. Much less do we think of them as constituting a specialized technical vocabulary, a *metalanguage* for describing the language that books are made of or the physcial parts of those books. But that’s exactly what they are.

The digital humanist’s metalanguage draws heavily on the one you’re already familiar with. To demonstrate this, let’s take a look at how a digital humanist might describe a short poem by the British Romantic poet William Blake. First, here’s the poem itself:

> **The Shepherd**
> 
> How sweet is the Shepherd’s sweet lot!  
> From the morn to the evening he strays;  
> He shall follow his sheep all the day,  
> And his tongue shall be filled with praise.
> 
> For he hears the lamb’s innocent call,  
> And he hears the ewe’s tender reply;  
> He is watchful while they are in peace,  
> For they know when their Shepherd is nigh.

Now let’s take a look at how a digital humanist might describe the poem in a specialized metalanguage:

    <title>The Shepherd</title>
    <lg type="stanza">
    <l>How sweet is the Shepherd's sweet lot! </l>
    <l>From the morn to the evening he strays; </l>
    <l>He shall follow his sheep all the day, </l>
    <l>And his tongue shall be filled with praise. </l>
    </lg>
    <lg type="stanza">
    <l>For he hears the lamb's innocent call, </l>
    <l>And he hears the ewe's tender reply; </l>
    <l>He is watchful while they are in peace, </l>
    <l>For they know when their Shepherd is nigh. </l>
    </lg>

The metalanguage used in this example is called TEI. TEI stands for “Text Encoding Initiative,” a name used for both the collaborative scholarly effort that gave rise to this metalanguage and the metalanguage itself. You can learn more (a lot more!) about TEI on the [website for the TEI Consortium](https://tei-c.org).

## More about TEI

TEI (the metalanguage) is an example of XML, which stands for “eXtensible Markup Language.” The first thing that may strike you about TEI is its similarity to HTML: Hypertext Markup Language. HTML, too, is a metalanguage, but a metalanguage that serves a somewhat different purpose. HTML enables a web browser (such as Chrome, Firefox, or Safari) to deliver a properly formatted document to your device screen. TEI, for the most part, has no concern with formatting. As already mentioned, its main purpose is to *make statements about a text*.

Let's look again at our encoding of the Blake poem:

    <title>The Shepherd</title>
    <lg type="stanza">
    <l>How sweet is the Shepherd's sweet lot! </l>
    <l>From the morn to the evening he strays; </l>
    <l>He shall follow his sheep all the day, </l>
    <l>And his tongue shall be filled with praise. </l>
    </lg>
    <lg type="stanza">
    <l>For he hears the lamb's innocent call, </l>
    <l>And he hears the ewe's tender reply; </l>
    <l>He is watchful while they are in peace, </l>
    <l>For they know when their Shepherd is nigh. </l>
    </lg>

The statements in the example above shouldn’t be hard to understand. Some of what’s inside the angle brackets (`< >`) comes from our ordinary vocabulary for talking about texts: *title*, *stanza*. The rest is easy enough to guess the meaning of: each `<l>` and `</l>` pair surrounds a *line* of poetry. The lines come in two *line groups*, each group demarcated with an opening `<lg>` tag and a closing `</lg>` tag. The line groups we’re used to encountering in poetry have a variety of names; *stanza* is only one of these. The `<lg>` *element*, as it’s called in TEI, can be modified depending on the kind of group using an *attribute* named `type` which can be filled in with any number of *values* that name the particular type of group. Other possible values for the *type* attribute when used inside the `<lg>` element include `"free"` for groups of unrhymed lines and `"quatrain"` for groups of four lines.

It’s worth noting that the TEI markup in our Blake example does more than describe the parts of the poem; it’s also a way of capturing some aspects of the poem’s *structure*. The un-marked-up version contains its own signals about this structure, using conventions so familiar to us that we hardly think about them. We know that “The Shepherd” is the poem’s title because it appears above the rest of the text, in boldface. We recognize each line of poetry *as a line of poetry* because it begins on a new line of the page (or screen) with a capital letter. (Compare this use of capital letters to their use in prose, where, after a period, they signal the beginning of a new sentence.) We recognize a stanza as a stanza because of the blank lines between them. (In some prose texts, blank lines are used to separate paragraphs. In others, paragraph beginnings are signalled by indenting the first line of the paragraph, with or without a space above.)

If all of this sounds obvious — well, that’s the point. It’s obvious only because in learning to read, you learned not only how to make sense of words but how to interpret a secondary language of sorts, a language of visual display designed to communicate information about textual structures. Understanding those structures helps you understand how you should think about the words and construct larger meanings from them. The title operates as a kind of short summary of everything that follows. A line of poetry becomes a unit of meaning that we’re invited to consider in its own right as well as in relation to the whole poem. Ditto for a stanza.

One use of TEI is to translate this familiar language of visual display into a language of symbols.

But to what end? What’s gained by doing this? We’ll consider those questions on the next page.