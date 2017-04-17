<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>The Judgement of Sir Thomas More</title>
            </head>
            <body>
                <xsl:apply-templates select="//body"/>
                <xsl:apply-templates select="//back"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="title">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="back/title">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    <xsl:template match="back/p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
</xsl:stylesheet>