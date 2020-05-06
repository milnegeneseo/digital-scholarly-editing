## TEI for data analysis

If you still have the file `05.xml` on your computer, open it up and have a look at this bit of marked-up text, beginning around line 87. (If you don’t still have it, [revisit it on GitHub](https://github.com/milnegeneseo/fluid_text/blob/master/tei/05.xml)):

    <p n="1" change="#wc_0a">
        <note type="header" resp="#clapper">
            <ab type="string">Solitude 1 written: A; rewritten: B , D.</ab>
                <ab type="parsed">
                    <seg type="chapterNum">5</seg>
                    <seg type="chapterTitle">Solitude</seg>
                    <seg type="paragraph">1</seg>
                    <seg type="written">A</seg>
                    <seg type="rewritten">B, D</seg>

Each paragraph of *Walden* in the fluid-text edition is marked up with descriptive information like this. An important part of that information, enclosed in the `<seg>` element, is the version history for the paragraph. We see here that the first paragraph of *Walden* was originally written in version A, then rewritten in both versions B and D.

Because this information about each paragraph of each *Walden* chapter is encoded in TEI and therefore machine-readable, a computer program can be used to run through the TEI file for each chapter, pull out the information, and make it available for analysis.

Now head over to the page [“Written and Re-Written in *Walden*”](https://digitalthoreau.org/written-and-re-written/) on the fluid-text site. The table there was built using the information extracted from the TEI files about the version history of each *Walden* paragraph or paragraph segment. (The encoding divides many of the paragraphs of *Walden* into “segments” because there are portions of paragraphs that have their own revision histories. Whole portions of paragraphs get dropped from some versions or added in others, or they get written and re-written within a single version. Segments are labeled with number-letter combinations such as “4b”.)

You can use the column headings in the table to sort the information about paragraph revision-histories by clicking on the column headers. For example, clicking on the “Written” heading will organize the information by version, so you can see at a glance all the paragraphs or paragraph segments first written in version A.

Once we’ve extracted the revision-history data from the TEI files, we can also visualize it in other ways. Taking that same data and putting it in a spreadsheet yields the perspective offered in numbers and two different charts on the page [“The Growth of *Walden*”](https://digitalthoreau.org/the-growth-of-walden/).

Go to the “next page” to offer some thoughts on what these visualizations reveal about the evolution of *Walden*.
