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
