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
        by a scaled-down IIIF URL. Coordinate data was originally supplied by the oXygen Image Mapping editor. 
        The $reductionFactor variable represents the percentage reduction applied to 
    the IIIF image to work with it in the Image Mapping tool. Change it as needed to adjust for a different resolution.-->

    <xsl:variable name="reductionFactor" as="xs:integer" select="10"/>
    <xsl:function name="ebb:IIIF-regions" as="xs:string">
       <xsl:param name="ulx" as="xs:integer"/>
        <xsl:param name="uly" as="xs:integer"/>
        <xsl:param name="lrx" as="xs:integer"/>
        <xsl:param name="lry" as="xs:integer"/>
       
        <xsl:variable name="x" select="$ulx * $reductionFactor"/>
        <xsl:variable name="y" select="$uly * $reductionFactor"/>
        <xsl:variable name="w" select="($lrx - $ulx) * $reductionFactor"/>
        <xsl:variable name="h" select="($lry - $uly) * $reductionFactor"/>
        <xsl:value-of select="string-join(($x, $y, $w, $h), ',')"/>
    </xsl:function> 
    <xsl:template match="zone[@ulx]">
    <zone>
        <xsl:for-each select="(@ulx, @uly, @lrx, @lry)">
            <xsl:attribute name="{current()/name()}">
                <xsl:sequence select=". * $reductionFactor"/>
            </xsl:attribute>
        </xsl:for-each>
     <xsl:attribute name="facs">
         <xsl:variable name="IIIF-URI">
       <xsl:value-of select="preceding::graphic[1]/@url"/>
         </xsl:variable>
         <xsl:variable name="IIIF-region" select="ebb:IIIF-regions(@ulx, @uly, @lrx, @lry)" />
           <xsl:sequence select="replace($IIIF-URI, '(\d+/)full', concat('$1', $IIIF-region))"/> 
              </xsl:attribute>
    </zone>
    </xsl:template>
</xsl:stylesheet>