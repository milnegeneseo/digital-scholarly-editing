---
layout: page
title: "Machines that read"
description: some description
page-order: 820
---

What’s the value in describing texts so that machines can read our descriptions? A full answer to that question would take up a lot of — pages? screens? (take your pick) — but here’s a partial one. For one thing, a machine-readable description enables a computer program to *display* the marked-up text in multiple ways. We’re not locked into any one way of displaying the text. The program simply needs to understand our metalanguage — TEI in this case — and follow whatever instructions we’ve given it for *transforming* the contents into a display-oriented metalanguage that a browser will understand, such as HTML.

For another thing, in adding all this descriptive markup to a text, we make it possible for a computer program to traverse the document systematically looking for certain tags, and to pull out particular tags for analysis.

We can appreciate both these advantages by looking back at the fluid text of *Walden*.

Head over to the [“Solitude” chapter of *Walden: A Fluid-Text Edition*](http://digitalthoreau.org/walden/fluid/text/05.html) and click the “New Version” button (upper left) until it turns gray. Scroll to the right, and you should see a panel for each of the seven manuscript drafts of *Walden*. The leftmost panel, showing “Princeton\_Ed” in the dropdown at the top, is the published text of *Walden* (1854) as edited by J. Lyndon Shanley for the Princeton University Press. As you move rightward, each panel shows a draft version from A to G. The inserted and deleted text in these panels indicates changes Thoreau made within a given version. If you mouse over the “n” next to the chapter title or over any of the paragraph numbers, you’ll see notes pop up that provide additional information.

Now head over to the [GitHub repository that houses the TEI files for the 18 chapters of *Walden*](https://github.com/milnegeneseo/fluid_text/tree/master/tei). Click on the file `05.xml` to see the contents of the file that contains all the information about “Solitude” that’s being represented in the fluid-text edition.

Download this file to your computer. You can do this by right-clicking the "Raw" button and saving the file to your computer. Alternatively, you can open a terminal window, `cd` to the location where you'd like to save the file, and type the following at the prompt:

    curl https://raw.githubusercontent.com/milnegeneseo/fluid_text/master/tei/05.xml > 05.xml

Now go to where you saved the file — whatever method you chose — and open it in VS Code. Next, open it in a browser such as Firefox, Chrome, Safari, or Edge. You won’t see the panels or the pop-ups or any of the features included in the fluid-text edition. All you’ll see is the same XML/TEI code.

Scroll through the code — on GitHub, in VS Code, or in your browser window - until you get to the first paragraph of “Solitude.”

Now take a moment to complete an assignment in which you try to identify what some of the different TEI tags are saying about the paragraph.