<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html> 
      <body>
        <h2>My CD Collection</h2>
        <table border="1">
          <tr bgcolor="red">
            <th style="text-align:left">Color</th> <!-- Nueva columna para el emoji -->
            <th style="text-align:left">Title</th>
            <th style="text-align:left">Artist</th>
            <th style="text-align:left">Country</th>
            <th style="text-align:left">Price</th>
          </tr>
          <xsl:for-each select="catalog/cd[price &lt; 10]">
            <xsl:sort select="artist"/>
            <tr>
              <td>
                <xsl:if test="position() mod 2 = 1">
                  <xsl:text>&#128308;</xsl:text> <!-- Emoji 🔴 para filas impares -->
                </xsl:if>
                <xsl:if test="position() mod 2 = 0">
                  <xsl:text>&#128994;</xsl:text> <!-- Emoji 🟢 para filas pares -->
                </xsl:if>
              </td>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="artist"/></td>
              <td><xsl:value-of select="country"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
