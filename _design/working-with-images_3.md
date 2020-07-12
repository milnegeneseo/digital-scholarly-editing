# Including images in your design

\[Explain how images might fit into a design.\]

## What is IIIF?

\[Explain the standard and its uses.\]

## Including IIIF images in your edition 

Information on the syntax for calling images via the IIIF API may be found [here](https://iiif.io/api/image/2.1/#uri-syntax).

The basic template is as follows:

`{scheme}://{server}{/prefix}/{identifier}/{region}/{size}/{rotation}/{quality}.{format}`

For the *Walden* MS images, therefore, the following URI will bring up p. 1 of *Walden* Version A. In our Google sheets file manifest, the xml:id for this image is `hm924v1n8`. 

`https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/full/full/0/default.jpg`

(In the same row of the sheet, in the column labeled "Huntington," the URI `https://cdm16003.contentdm.oclc.org/digital/collection/p16003coll16/id/8` points to the page on the Huntington site where the image will be found accompanied by metadata and where a user can zoom and pan within the image. Don't confuse this URI with the one that points to the image itself.)

In the URI above for the image itself, the first `full` indicates the `{region}` and the second `full` indicates the `{size}`. So calling

`https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/full/pct:10/0/default.jpg`

will bring in the full page at 10% of its size, thus:

![Page 1 of A at 10%](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/full/pct:10/0/default.jpg)

## Displaying a page region

To display a region of the image other than `full`, you can specify the coordinates of the region using absolute pixel values by replacing `full` with `x,y,w,h` where `x` = the number of pixels from the 0 position of the horizontal axis, `y` = the number of pixels from the 0 position of the vertical axis, `w` = the width of the region in pixels and `h` = the height of the region in pixels. (Note that the `x,y` coordinates `0,0` represent the upper *left* corner of the image, and that the upper left corner of the *image* is not the same as the upper left corner of the manuscript page, since the gray margin surrounding the page is part of the image.)

So to display the bracketed and canceled passage on this page at 30% of its full size, we would want to call `https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/1150,6200,7000,2000/pct:30/0/default.jpg`, thus:

![Page region](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/1130,6200,7000,2000/pct:30/0/default.jpg)

However, the image that GitHub displays in the page is actually smaller than 30% and not large enough for close inspection. We can solve this problem by linking the embedded image to the URI, so that clicking on the embedded image takes a user to the URI itself. 

The markdown syntax for referencing an image is

`![Alt text](http://path/to/file)`

The syntax for linking to a URI is

`[Linked text](http://path/to/file)`

We can combine these like so:

`[![Alt text](http://path/to/file)](http://path/to/file)`

The inner set of brackets (`[]`) surrounds the alt text for the image, while the outer set surrounds both alt text and image URI. The outer set is followed by the same URI, now used as the reference for the link.

The link-with-image-reference for our selected region, then, is typed thus:

`[![Page region](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/1130,6200,7000,2000/pct:30/0/default.jpg)](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/1130,6200,7000,2000/pct:30/0/default.jpg)`

When rendered in the page, it looks like this. Click the image to follow the link.

[![Page region](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/1130,6200,7000,2000/pct:30/0/default.jpg)](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/8/1130,6200,7000,2000/pct:30/0/default.jpg)


Determining the right coordinates for a region takes some finagling. If you download the image and open it in an image-viewing application such as Apple's Preview, you should be able to get approximate coordinates. You can then pop the URI-with-coordinates into your browser's location bar and, by repeatedly adjusting them and refreshing the browser, ascertain that you're capturing the desired region.

## Rotating images

To rotate an image region, replace the `0` with the desired rotation (e.g., `90` for 90 degrees).

For example, the URI `https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/434/800,737,1450,5870/pct:30/90/default.jpg` will bring up the region with coordinates `800,737,1450,5870` on p. 1 of the B-C Version (xml:id hm924v3n434 in the Google sheet manifest) rotated 90 degrees at 30%, making it easier to read what Thoreau has written vertically in the left margin:

[![Page region rotated 90 degrees](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/434/800,737,1430,5870/pct:30/90/default.jpg)](https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/434/800,737,1430,5870/pct:30/90/default.jpg)