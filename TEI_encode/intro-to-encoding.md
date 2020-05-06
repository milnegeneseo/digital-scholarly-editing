The module on scholarly editing introduced the concept of *metareading* as a type of reading that makes claims about a text *as* text. Although not the same as *close reading*, which focuses on generating interpretations of a text through attention to patterns (of words, imagery, narrative elements, character, etc.), metareading certainly requires close attention to detail. And because declarations about a text as text require judgment and are always subject to debate, metareading is, in its own way, interpretive.

We’ve also seen that metareading and close reading are not only similar but frequently intertwined. Especially in the case of fluid-text editing, everything we say about the text as text has potential consequences for how we interpret its meaning.

### Metareading and metalanguages

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
