<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <style type="text/css">

      body{
        margin:0;
        padding: 0;
    }
    
    table{
        padding: 10px;
        border: 4px solid black;
        border-collapse: collapse;
        background-color: rgb(240, 240, 240);
        margin: 0 ;
    }
    td{
        padding-left: 6vw;
        padding-right: 6vw;
    }
    p{
    	color: black;
    }
    a{
    	color: black;
    }
  </style>
    </head>

    <body >
      <img width="100%" height="100pv" margin="0px"  >
        <xsl:attribute name="src">
          <xsl:value-of select="horari/@header"/>
        </xsl:attribute>
      </img> 
      <table >
        <tr>
          <xsl:for-each select="horari/setmana/dia">
            <td class="table1">
              
                  <xsl:value-of select="@nom"/>
              
            </td>
          </xsl:for-each>
        </tr>


        <xsl:for-each select="horari/setmana/dia[1]/modul">
        <xsl:variable name="i" select="position()"/>
        <tr>
          <xsl:for-each select="/horari/setmana/dia">
            <xsl:variable name="color" select="/horari/colors/color[@codi=current()/modul[$i]/codi]"/>
            <td style="background-color: {$color}">
              <xsl:value-of select="concat(modul[$i]/codi, ' ', modul[$i]/nom)"/>
            </td>
          </xsl:for-each>   
        </tr>
      </xsl:for-each>





      </table>

      <p style="text-align:center">

      <h2>
        <xsl:value-of select="horari/links/@nom" />
    
      </h2>


      <xsl:for-each select="horari/links/link">
        <xsl:sort select="nom"/>
        <p>
        <a>
          <xsl:attribute name="href">
          <xsl:value-of select="url"/>
          </xsl:attribute>
          <xsl:value-of select="nom"/>

        </a>
      </p>
        </xsl:for-each>


      </p>





    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
