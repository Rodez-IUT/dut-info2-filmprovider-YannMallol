<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films">
        <html>
            <head>
                <title>
                    Document html filmProvider
                </title>
            </head>
            <body bgcolor="#FFFFFF">
                 <h1>Films</h1>
                <table>
                    <thead>
                        <tr>
                            <th> Titre </th>
                            <th> Résumé </th>
                        </tr>
                    </thead>
                        <xsl:apply-templates select="film" />

                </table>
            </body>
        </html>
</xsl:template>

    <xsl:template match="/films/film">

            <tr>
                <td> <xsl:value-of select="titre"/> </td>
                <td> <xsl:value-of select="resume"/> </td>
            </tr>

    </xsl:template>

</xsl:stylesheet>