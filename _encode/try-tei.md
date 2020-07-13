---
layout: page
title: "Try TEI"
description: some description
page-order: 850
---

Encoding textual variants of a fluid text using the method described on the previous page is difficult work. We won’t attempt it here. Instead we'll try to encode some of the changes we might see on a single manuscript page from just one of the draft versions of *Walden*. To do this, we’ll need to employ just a handful of elements. You've seen these before, and you may have already guessed their purpose.

## The \<del\> element

The `<del>` element is used to indicate deleted text. For example, to represent a bit of writing on a manuscript page where the author originally wrote

> She bought the apples on Wednesday, April 16.

but then drew a line through the word “Wednesday” we would write:

    <p>She bought the apples on <del>Wednesday</del>, April 16.</p>

## The \<add\> element

Let’s say the author didn’t just delete (or, to use the technical editorial term, *cancel*) “Wednesday” but also inserted “Thursday” above or beside the canceled text. We would represent that change this way:

    <p>She bought the apples on <del>Wednesday</del> <add>Thursday</add>, April 16.</p>

Notice that our markup doesn’t try to represent *how* the canceled text was canceled. If “Wednesday” had been canceled with a squiggly line or heavy cross-hatching, our encoding wouldn’t change. Similarly, the `<add>` element doesn’t tell us by itself whether the inserted text was added above, below, or beside the canceled text, or off in a margin somewhere connected by a long line.

TEI gives us ways to capture that kind of information about manuscript text, but we’re not going to get into those here.

Notice too that insertions that take place inside deletions, and deletions that take place inside insertions, can be captured through nested elements. For example:

``` 
 <p>I should not presume to talk so much about myself and my affairs as I shall in this <del>lecture</del> <del><add>book</add></del> <del><add>work</add></del> <add>book</add> ...</p>
```

Here, our markup says, in effect: On the page, “lecture” is canceled, “book” is inserted and then canceled, “work” is inserted and then canceled, and “book” is again inserted.

Finally, notice that our markup won’t tell a browser how to display these changes on a web page. Remember that XML is metalanguage for *making declarations about a text as text*, not a formatting language. To display the changes some particular way in a browser (with strike-throughs, different colors, etc.), we would have to first *transform* our XML into HTML (accompanied, perhaps, by some CSS).
