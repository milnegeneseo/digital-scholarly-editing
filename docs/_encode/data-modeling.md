## Data Modeling and TEI Customization/Schemas

## Modeling Apples
           
*Data modeling* involves creating models of real-world events and things. The goal of the data modeler is to reconcile the messiness of reality with the clear, deliberate, rule-based nature of representations of reality. One leading humanities scholar, Julia Flanders, has called data modeling creating structure for data. This allows the modeled data to be read, like a book, both by humans and by data-processing machines, such as your computer.

Data modeling isn't a new process. In fact, Thoreau was accustomed to several different kinds of data modeling. For subsistence, Thoreau worked as a surveyor, carefully modeling data to describe the topography of spaces in the Concord, Massachusetts area. Early in *Walden*, he provides readers with his initial budget for his subsistence. As a model of the food he intended to eat and the money he intended to spend, it served his purposes – and can be easily written out by hand. Some of his other data modeling attempts are more complex, involving him in delicate, experimental, creative choices. A key example is his final unfinished major work, *Wild Apples*. To write this work, Thoreau collected qualitative (verbal) and quantative (numeric) data about the indigenous edible plant species he has encountered personally, in some cases over years of observation. He explores different ways to describe these species:. He employs scientific (Linnaean) and common (English) names as well as terms drawn from Continental European and Native American traditions. He quotes and cites naturalists ranging from the ancient Roman Pliny the Elder through scientists of his own era. He documents where and when he encountered particular indigenous fruits, often in very specific values. He describes their habitats and how they look, feel, taste, and smell. At one point, he insists that you don't really know an indigenous huckleberry sufficiently unless you know how to forage for it and have personally tasted it. All this information is data, but the surviving draft material that comprises *Wild Fruits* goes beyond merely recording it. Instead, Thoreau wrote up individual entries to represent different fruits. Combining the genres of the encyclopedia entry and the Montaigne-style personal reflective essay, he represents his collected data in the way he found most true to his perception of it.

Finally, the first modern editor of *Wild Fruits*, the late Thoreau scholar Bradley Dean, modeled the data in the *Wild Fruits* manuscript evidence by compiling an edition, a handsome hardbound book published by W.W. Norton in 2000 as *Wild Fruits: Thoreau's Rediscovered Last Manuscript*. Dean added some scientific illustrations, which depict many of the plants that Thoreau describes. This introduces data that was not originally part of Thoreau's manuscript. Instead, it's part of the *paratext*, the material that frames, contextualizes, and interprets Thoreau's words. 


This brings us to data modeling specifically for *digital* editions of literary texts, such as the editions in progress in the Digital Thoreau community. The creators of a digital edition of a humanities text must make a model of that text that shows its most important features. This means it is important to determine what those featares are. To answer that question, the editor must ask who wants or needs the projected model (edition), and for what purpose(s). Does the editor wish to share the text with advanced scholars who are already familiar with some form of it? With undergraduate students encountering it for the first time and relating it to other texts of the same place, time, genre, or theme? With pleasure-readers, who need to read it alongside information that explains its more obscure but vital contexts? With a machine, such as a computer program that will compare it with many other texts in order to make a valid generalization about that body of literature that a human reader could never live long enough to discover? Like portrait painting, data modeling is a science, rooted in observation, but it is also an art.


In this module, we will apply the science and art of data modeling to the ongoing work of the Digital Thoreau. Consider one page of Thoreau's writing: the first significantly written-up verso (front of the page) of the earliest manuscript of *Walden*, now in the collection of the Huntington Library and known as manuscript A. What features of this document require encoding? Remember: think about the various publics that form the target audience of the Digital Thoreau, the objectives of the *Walden* manuscript project, and what that audience needs from this project. 

- For whom did Thoreau write this page? What do you know about their vocations, class, gender, and race, for instance? Their everyday experience? How can you tell? Did Thoreau write this material for more than one intended audience, at different points in the manuscript or at once?
- What was his purpose in writing this page, or any line or fragment in it? He wavers between claiming it is a "book" and a "lecture." How is the purpose for a voluntary public lecture in pre-Civil War Concord, Massachusetts perhaps different from the purpose of a book?
- In what order did he write the ideas on this page? What formal features of his writing help you to understand this chronology?
- Can you see any document features created by a contributor other than Thoreau? When and why might someone other than Thoreau have marked up this page?

Once you have answered these questions, it's a good idea to write up a short abstract of your responses. If you do this for a reasonable sampling of available images from the "A" manuscript, you will be able to model the manuscript's data. In other words, make your data modeling plan *deliberate*, and you will create a coherent model; a clear, engaging, and useful digital edition.

## Customization

As you might already know from other Digital Thoreau modules, one way to model data derived from humanities texts involves TEI markup. The TEI Guidelines contain many "modules" of information, which, in discrete numbered chapters of the TEI Guidelines. tell the reader how to represent various genres, features, and phenomena.  The range of TEI modules is truly vast. Do you want to make a model - an edition - of a poem? There's a module for that. What about a transcription of an oral history? There's a module for that, too. Finally, there's a module that explains how to use the TEI to describe a manuscript, like the manuscripts by which, version by version, Thoreau created *Walden*.

Each module contains many *elements,* which in turn may be characterized by defined *attributes*. These attributes can take a potentially limitless range of *values*. (Don't know what *elements, attributes, *and *values *are? See our module introducing TEI markup. Then come back here, please.) "Let us make distinctions and call things by their right names," Thoreau demands in *Wild Fruits*. The customizable nature of TEI markup allows encoders of humanities texts to fulfill that goal.

That said, we do not want it to be possible for editors of the Digital Thoreau to be able to mark up the text using all of the available modules, elements, and attributes, so we ought to limit them. How can we make such limitation a machine process, which lingers in the background of your encoding experience, nudging you to consider certain (say) elements but not others? A *TEI customization* is just such a limitation. 

We describe – write – bring into being! – our customization in a *schema*: a plan for the formal representation of the elements and attributes you should expect in your document. 

To explain our schema to ourselves and others, human and machine, we need a blueprint, just as architects need a blueprint to explain the plan for a building. One form of blueprint is the *One Document \[that\] Does it All (ODD)*. This is the ONE RING of TEI schemae (except it will not make you greedy, homicidal, or ill). More on the ODD later. 

One way to think about *how* a customization limits the TEI is to compare creating an edition in the TEI involves an imaginary bagel shop. Let us say this is *your* bagel shop. You have a very broad selection of toppings. You *could* make the following menu items... 

***Everything Bagel***. The traditional Everything Bagel, made with all the toppings available at our shop. You know: sesame seeds, poppy seeds, onion, garlic, grated cheese, Jalapeno peppers, raisins, cinnamon, blueberries, cranberries, sea salt, Cream of Wheat, M&amp;Ms, spinach, pumpkin pie spice, Vegemite, chocolate chips, ghost pepper, and (at Thoreau's request) groundnut and huckleberry. If you do not want all these toppings, you can just pick some of them off. 

***Self-reliance Bagel***. No toppings. If you want some toppings, take this bagel home and add them all yourself. You should be ashamed to ask anyone else to do it for you. 

... but *should* you organize a bagel shop this way? Why or why not? Come up with some sensible bagel customization rules.

Let us apply the rules that you have just devised to TEI customization.

***Everything Bagel***: The *maximal TEI schema*, or the customization that isn't: all TEI markup usable. You can pare it down to serve your project's needs. 

***Self-reliance Bagel***: TEI Bare. Does what it says on the tin. The minimum that you need to create a coherent, useful TEI document.

***Sesame Bagel***:TEI Lite. Works for 99 percent of the projects attempted by 99 percent of TEI users. The remaining minority of coders won't want it, and will be very frustrated by it. 

Other established, generally recognizable bagel topping combinations (cinnamon and raisin, for instance): TEI manuscript description, jTEI article, etc.

Now, let's start devising a customization for the Digital Thoreau's encoding of a documentary edition of the *Walden* manuscript A. You can do this alone or with project partners. Either way, start by looking at A, one digitized image at a time. For each image, answer the questions we've already associated with data modeling and critical editing. These include: 

- What is this object? What kinds of data does it contain? Who might need a model of this data? For what purpose? So which features of it would you encode? Which TEI modules will help you to model this data for the audience and purpose you have identified?
- Which TEI modules will help you to model this data for the audience and purpose you have identified? Look up those modules in the TEI Guidelines. Pay particular attention to the examples; snippets of code that show you common contexts in which elements, attributes, and values appear. 

Once you have some answers, totaling a *qualitative* response to this data-modeling challenge, you will be ready to generate a schema: the document that you can interpolate into your digital edition to make the TEI model the data that you need to make visible. 

## One Document Does it All

Go to the Roma JS website. Once there, you will return to the consideration of Bagel Shop Problems: you can build your schema up, down, from another customization... play with the options, aiming to describe most accurately and clearly the manuscript page assigned to your group. 

From the first menu, select an existing ODD to customize. First, decide which one. Do you want to start with nothing and build up? With everything and delete modules, elements, and attributes? Is there an existing ODD that's almost right and just needs a few tweaks? 

Choices to make: 

a. *Title* of customization. You'll need one that you can remember, particularly if you're going to create several customizations and then try them out.  
b. *Identifier* for filenames. 
c. *Namespace* 
d. A *pattern* defines attribute values which are expressed as a regular expressions.
e. *Language* of elements and attributes. The default is set to English. For the *Digital Thoreau, *English makes the most sense, but that's certainly not true of all projects.
f. *Documentation language*. Again, it probably makes the most sense to provide documentation of the schema in English.
g. *Author*. The default, which you're expected to alter, is "Sebastian Rahtz." If you don't know who the late [Prof. Rahtz](https://en.wikipedia.org/wiki/Sebastian_Rahtz) was, it's not too late to learn. Spare a thought, please, for this [Margaret Fuller](https://www.biography.com/writer/margaret-fuller) of the TEI community. Then, after your thought, change his name to your own. If two or more authors are collaborating on a customization, list your names with Oxford commas and the word "and." 

Choose your *elements* (required). You may also customize *attribute classes, model classes*, and *datatypes*, but at this level of familiarity with TEI markup, you will probably want to leave all those categories as is. 

Now, it is time to save your schema and to generate an ODD file and <hi>documentation*. The documentation, in HTML, TEI, or (not a good idea) Word, is a human-readable explanation of your schema, covering all the content that you chose to include in it. You will want to share this documentation will all data modelers who must use your schema and, ultimately, with the TEI community and your public reading audience. 

First, click the down arrow at the top right.

Then, save it as a RelaxNG Schema. Once you have generated your ODD, you can use the lower half of the same menu to generate your documentation.

Save the schema and documentation someplace secure. Then, save each as a local copy, so that you can complete the final unit of this module: "Using your Schema to Validate XML."

## From Schema to Community

Now, you're ready to use this schema to *validate* your encoding of the manuscript page... and other pages, too. In oXygen Editor, the proprietary software that it is most advisable to use to write TEI documents if you have the means to access it, it's easy to plug your schema into your project and let it shape your encoding. This "plugging in" is called *associating the schema*. First, create a new XML document. In this document, you will encode the features of one or more manuscript pages<!--or should it be folios?--> of the *Walden* manuscript(s). You can associate your schema by typing information about it into this document, manually, but oXygen will also form the associative statement for you. Just go to the top horizontal menu and clicl "Document," then "Schema," and finally "associate schema." The instructions that follow are fairly self-explanatory. Within the "Associate Schema" box, click the file folder icon to the right of the "URL" field. Choose "browse for local copy" and select the schema that you downloaded from Roma. Click "OK." Now, your XML document begins (nearly) by commanding your machine to *validate* (check) your markup against the schema you have created. You can test this with an experiment: try to add an element or attribute that is *excluded* from your customization. The green square validator will turn red and you will be told that's not allowed. The rules will be further clarified by the schema's documentation generated by Roma. As additional transcriptionist-encoders join the great endeavor of the *Digital Thoreau*, a shared schema will help us to create not only a critical edition, but an editorial community. Once we associate our schema with our individual documents, we will be able collaboratively to represent the manuscript text and features that we discover in the *Walden* manuscripts in a consistent, and, ideally, most appropriate, helpful, and engaging way. 