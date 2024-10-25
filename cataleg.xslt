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
              <!-- Alternar emoji usando xsl:choose para filas pares e impares -->
              <td>
                <xsl:when test="price &lt; 10">🟢</xsl:when>
                <xsl:when test="price &gt; 10">🔴</xsl:when>
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
