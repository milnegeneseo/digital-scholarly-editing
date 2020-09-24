---
layout: page
title: From metareading to markup
---

In the previous module, we described digital scholarly editing as an approach to scholarly editing that treats texts and their contents as *data* worthy of scholarly attention, and that leverages the power of computers to work with this data so as to facilitate new scholarly insights. We pointed out that this approach is simultaneously old and new: old because we can think of *data* as just another word for *things*, and because reading with an eye toward texts-as-things and things-in-texts — what we've called *metareading* — has a very long history; new because when you describe these things in a language that computers can understand, new scholarly insights and products become possible.

We said that the use of a standardized, machine-readable language to describe texts-as-things and things-in-texts is known as *text-encoding*. There are a variety of such languages, often referred to generically as *markup languages*.

Like metareading, text-encoding and markup languages actually have a long pre-digital history. But we can see this most easily by jumping right into some text encoded in digital-era, computer-readable markup.

Consider this poem by British romantic poet William Blake

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

Here's one way that we might encode Blake's poem in computer-readable markup:

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



<!-- known generically as *markup*. HTML ("Hyptertext Markup Language") is one. XML ("eXtensible Markup Language") is another. As its name suggests, XML's great virtue is that it can be stretched to accommodate new uses. In fact, XML is a general-purpose markup language that can itself be used to create markup languages by defining the terms of those languages.

XML is the preferred markup language for digital scholarly editions because it gives editors the ability to describe texts and their contents employing widely used terms in combination with highly particular ones invented to suit the needs of an individual project. Even these project-specific terms will be readable by a computer because XML gives editors the ability to point, in their marked-up files, to a lexicon of sorts where the terms have been defined. -->