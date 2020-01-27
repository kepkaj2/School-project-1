<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
     <html>
<head>
          <title>
            Bakalářská práce
          </title>
          <link rel="stylesheet" media="all" href="cssbak.css" type="text/css" />
        </head>
        
        <h1 class="h1.custom">Informace k BP

</h1>
<hr>
</hr>
  
  <body>
  <h2>Literatura</h2>
  <table border="4">
    <tr bgcolor="#0099FF">
      <th>Autor</th>
      <th>Rok</th>
       <th>Vydavatel</th>
      <th>Iban</th>
    </tr>
    <xsl:for-each select="semestralka/literatura">
    <tr>
      <td><xsl:value-of select="autor"/></td>
      <td><xsl:value-of select="rok"/></td>
      <td><xsl:value-of select="vydavatel"/></td>
      <td><xsl:value-of select="iban"/></td>
    </tr>  
    </xsl:for-each>
     </table>
   
    <h2>Generace</h2>
  <table border="4">
    <tr bgcolor="#0099FF">
      <th>Generace</th>
      <th>Rok</th>
       <th>Informace</th>
           </tr>
    <xsl:for-each select="semestralka/generace">
    <tr>
      <td><xsl:value-of select="typgenerace"/></td>
      <td><xsl:value-of select="od-do"/></td>
      <td><xsl:value-of select="informace"/></td>
      </tr>  
    </xsl:for-each>
       
  </table>
  
    <h2>Výběr zaměstnanců</h2>
  <table border="4">
    <tr bgcolor="#0099FF">
      <th>Metoda</th>
      <th>Výhoda</th>
       <th>Nevýhoda</th>
      
    </tr>
    <xsl:for-each select="semestralka/metody">
    <tr>
      <td><xsl:value-of select="výběr"/></td>
      <td><xsl:value-of select="výhoda"/></td>
      <td><xsl:value-of select="nevýhoda"/></td>
      </tr>  
    </xsl:for-each>
  
   </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 