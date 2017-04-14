<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <table>
            <xsl:apply-templates select="//text"/>
        </table>
    </xsl:template>
    <xsl:template match="text">
        <xsl:variable name="title" select="@xml:id"/>
        <xsl:variable name="adjective" select="//w[@subtype = 'adjective']"/>
        <xsl:for-each select="$adjective">
            <xsl:sort select="."/>
            <tr>
                <td>
                    <xsl:value-of select="$title"/>
                </td>
                <td>
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
