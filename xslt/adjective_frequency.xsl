<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes"/>
    <xsl:key name="k" match="adj" use="."/>

    <xsl:template match="/*">
        <xsl:apply-templates select="adj[generate-id() = generate-id(key('k', .))]"/>
    </xsl:template>
    <xsl:template match="adj">
        <xsl:value-of select="concat(., ' ', count(key('k', .)))"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>
</xsl:stylesheet>
