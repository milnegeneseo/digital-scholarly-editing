<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:ebb="https://newtfire.org"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/> 
    <!--2020-04-30 ebb: This stylesheet processes zone coordinate data that defines regions of an image supplied by working with 
        by a scaled-down IIIF URL fashioned in this format (where pct:10 indicates a 10% reduction in this case.
        https://cdm16003.contentdm.oclc.org/digital/iiif/p16003coll16/232/full/pct:10/0/default.jpg
        Coordinate data was supplied for the source TEI document by using the oXygen TEI Facsimile Plugin, 
        which automatically supplies x and y coordinates for the top left and bottom right corners of a rectangular region. 
        
        The $reductionFactor variable below represents the percentage reduction applied to 
    the IIIF image to work with it in the Image Mapping tool. Change it as needed to adjust for a different resolution.-->

    <xsl:variable name="reductionFactor" as="xs:integer" select="10"/>
    <xsl:function name="ebb:IIIF-regions" as="xs:string">
       <xsl:param name="ulx" as="xs:integer"/>
        <xsl:param name="uly" as="xs:integer"/>
        <xsl:param name="lrx" as="xs:integer"/>
        <xsl:param name="lry" as="xs:integer"/>
       
        <xsl:variable name="x" as="xs:integer" select="$ulx * $reductionFactor"/>
        <xsl:variable name="y" as="xs:integer" select="$uly * $reductionFactor"/>
        <xsl:variable name="w" as="xs:integer" select="($lrx - $ulx) * $reductionFactor"/>
        <xsl:variable name="h" as="xs:integer" select="($lry - $uly) * $reductionFactor"/>
        <xsl:value-of select="string-join(($x, $y, $w, $h), ',')"/>
    </xsl:function> 
    <xsl:template match="zone[@ulx]">
        <xsl:element name="{local-name()}" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:for-each select="(@ulx, @uly, @lrx, @lry)">
            <xsl:attribute name="{current()/name()}">
                <xsl:value-of select=". * $reductionFactor"/>
            </xsl:attribute>
        </xsl:for-each>
     <xsl:attribute name="facs">
         <xsl:variable name="IIIF-URI">
       <xsl:value-of select="preceding::graphic[1]/@url"/>
         </xsl:variable>
         <xsl:variable name="IIIF-region" as="xs:string" select="ebb:IIIF-regions(@ulx, @uly, @lrx, @lry)" />
           <xsl:value-of select="replace($IIIF-URI, '(\d+/)full', concat('$1', $IIIF-region))"/> 
              </xsl:attribute>
    </xsl:element>
    </xsl:template>
</xsl:stylesheet>
