<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Tief unter dem Schnee</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
          </tr>
          <xsl:for-each select="root/images/image/block/paragraph/character">
            <tr>
              <xsl:choose>
                <xsl:when test="@attr >= 2">
                  <td bgcolor="red">
                    <xsl:value-of select="@value"/>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="@value"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
