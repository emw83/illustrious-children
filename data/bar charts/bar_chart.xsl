<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="xInterval" select="80"/>
    <xsl:variable name="width" select="$xInterval - 15"/>
    <xsl:variable name="maxHeight" select="-200"/>
    <xsl:variable name="max" select="max(//w)"/>
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
            <g transform="translate(10, 250)">
                <line x1="0" y1="0" x2="{count(//w)*$xInterval}" y2="0" stroke="black"
                    stroke-width="2"/>
                <line x1="0" y1="0" x2="0" y2="{$maxHeight - 10}" stroke="black"
                    stroke-width="2"/>
                
                <xsl:for-each select="1 to 10">
                    <line x1="-3" x2="3" y1="{current()*$maxHeight*.1}" y2="{current()*$maxHeight*.1}" stroke="black"
                        stroke-width="1"/>
                </xsl:for-each>
                
                <xsl:for-each select="//w">
                    <xsl:variable name="pos" select="position()"/>
                    <xsl:variable name="height" select="-(current() div $max) * $maxHeight"/>
                    <rect x="{(position()-1)*$xInterval}" y="-{$height}" width="{$width}"
                        height="{$height}" fill="#C02942" stroke="black"
                        stroke-width="1"/>
                    <text x="{(position()-1)*$xInterval + ($width div 2)}" y="15"
                        text-anchor="middle"><xsl:value-of select="@adj"/></text>
                </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>
