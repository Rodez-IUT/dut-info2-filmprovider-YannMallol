<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/films">
        <html>
            <head>
                <title>Films</title>
            </head>
            <body>
                <h1>Films</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Titre</th>
                            <th>Résumé</th>
                            <th>Realisateur</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="film"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="film">
        <xsl:variable name="Id" select="@id_realisateur"/>
        <tr>
            <td><xsl:value-of select="titre"/></td>
            <td><xsl:value-of select="resume/text"/></td>
            <td><xsl:value-of select="//realisateur[ $Id= @id_realisateur]"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>