---
layout: page
title: From metareading to markup
---

In the previous module, we described digital scholarly editing as an approach to scholarly editing that treats texts and their contents as *data* worthy of scholarly attention, and that leverages the power of computers to work with this data so as to facilitate new scholarly insights. We pointed out that this approach is simultaneously old and new: old because we can think of *data* as just another word for *things*, and because reading with an eye toward texts-as-things and things-in-texts — what we've called *metareading* — has a very long history; new because when you describe these things in a language that computers can understand, new scholarly insights and products become possible.

We said that the use of a standardized, machine-readable language to describe texts-as-things and things-in-texts is known as *text-encoding*. There are a variety of such languages, often referred to generically as *markup languages*.

Like metareading, text-encoding and markup languages actually have a long pre-digital history. But let's start by jumping right into some text encoded in digital-era, computer-readable markup. The history will be easier to understand and appreciate if we work backwards from the present.

Consider this poem by British romantic poet William Blake.

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

Now, here's one way that we might encode Blake's poem in the computer-readable markup language *XML* (which stands for *eXtensible Markup Language*):

```
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
```
This encoding makes descriptive statements about some pretty basic features of Blake's poem. It identifies the two words *The Shepherd* as a thing within the thing that is the poem — that is, as a relevant bit of data — by surrounding the words with `<title>` and `</title>`. The bit of data thus identified is — no surprise here — the poem's title.

In XML, `<title>` is what's known as an *element*. The element consists of two *tags*, an *opening tag* (`<title>`) and a *closing tag* (`</title>`).  

The `<title>` element is the most transparent in our example, but the meaning of the others shouldn't be hard to guess. The element `<l>` is used to identify each string of words as one of the poem's lines, making each line a data point. The element `<lg>` is used twice to identify two groups of lines. Poetry can have various types of line groups; the markup here identifies each group as a particular type — a *stanza* — creating two additional data points. (Elements can have *attributes* inside them; `type` is one example. And an attribute needs a *value*, typically identified using the formula `="some value or other"`.)

Is this markup telling you anything you didn't already know about Blake's poem? Of course not. But let's stop for a moment to consider why. Why do you already know that *The Shepherd* is the poem's title? Why do you know where one line of the poem begins and another ends? Why do you know that the poem has two stanzas?

The reason is that you're already a skilled reader of the informal markup to be found everywhere in texts, the markup that predates computer markup by centuries. This markup announces itself not through elements, attributes, and values but through typographical conventions and layout. A title appears at the head of a work (usually), with the first letter of each word capitalized (commonly). Putting a string of text on a new line (even if space remains on the previous one) and starting the first word of the new line with a capital letter, marks a new line in the poem (usually). Putting a blank space between lines of poetry is one common way to demarcate stanzas.

Informal markup isn't limited to poems. In prose, we know we're on to a new paragraph because a blank line (or an indentation from the margin, or both) tells us so. We know we're on to a new sentence because of periods and capital letters. We know where one word ends and another begins because of the spaces between them.

Why would anyone bother with all the fuss of highly formalized elements, attributes, and values to say what can be said more simply and quietly with lines, spaces, punctuation, and initial capitals?

There are a few reasons. One, already mentioned, is that computers can read a markup language like XML extremely well. They don't do so well with informal markup. If we want to use the power of computers to *do* things with the data we identify in our texts — count the number of stanzas in a large collection of poems, for example, or generate a list of titles — we need to identify our data with precision. Another is that the data we're interested in may not present itself so clearly as in our example. Especially when marking up manuscripts, we're frequently looking to say things about our data that aren't obvious at all. By encoding what we have to say about complex textual objects and their contents in a precise and systematic language like XML, we effectively build *models* of them, making them easier to understand and discuss. 

To see this more clearly, let's turn to the manuscript of Henry David Thoreau's *Walden*.