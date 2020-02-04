<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films">
        <html>
            <head>
                <title>
                    <xsl:text> Document html filmProvider </xsl:text>
                </title>
            </head>
            <body bgcolor="#FFFFFF">
                <xsl:template match="/realisateur">
                <xsl:for-each select="paragraphe">
                    <table width="75%" border="1">
                    <tr>
                        <td> <xsl:value-of select="@id_realisateur"/> </td>
                    </tr>

                </xsl:for-each>
            </body>