<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html> 
    <body>
      <h2>My CD Collection</h2>
      <table border="1">
        <tr bgcolor="red">
          <th style="text-align:left">Title</th>
          <th style="text-align:left">Artist</th>
          <th style="text-align:left">Country</th>
          <th style="text-align:left">Price</th>
          <th style="text-align:left">Color</th>
        </tr>
        <xsl:apply-templates select="catalog/cd"/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="cd">
  <tr>
    <td><xsl:value-of select="title"/></td>
    <td><xsl:value-of select="artist"/></td>
    <td><xsl:value-of select="country"/></td>
    <td><xsl:value-of select="price"/></td>
    <td style="text-align:center">
      <xsl:choose>
        <xsl:when test="price &lt; 10">
          🟢
        </xsl:when>
        <xsl:when test="price &gt; 10">
          🔴
        </xsl:when>
      </xsl:choose>
    </td>
  </tr>
</xsl:template>

</xsl:stylesheet>