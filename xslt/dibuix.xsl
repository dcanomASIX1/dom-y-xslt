<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <style>
        svg {
          border: 1px solid black;
        }
      </style>
    </head>
    <body>
      <svg width="{dibuix/canvas/amplada}" height="{dibuix/canvas/alçada}" xmlns="http://www.w3.org/2000/svg">
        <xsl:for-each select="dibuix/figures/figura">
          <xsl:choose>
            <xsl:when test="@tipus = 'rectangle'">
              <rect x="{posicio/x}" y="{posicio/y}" width="{dimensions/amplada}" height="{dimensions/alçada}" fill="{@color}" stroke="{/dibuix/borde}">
                <xsl:attribute name="stroke">
                <xsl:value-of select="/dibuix/borde/stroke"/>
                </xsl:attribute>

            </rect> 
            </xsl:when>
            <xsl:when test="@tipus = 'cercle'">
                <svg  xmlns="http://www.w3.org/2000/svg">
                    <circle id="cercle" r="{dimensions/r}" cx="{dimensions/cx}" cy="{dimensions/cy}" fill="{@color}" />
                </svg>
            </xsl:when>
            <xsl:when test="@tipus = 'elipse'">
                <svg  xmlns="http://www.w3.org/2000/svg">
                    <ellipse rx="{dimensions/rx}" ry="{dimensions/ry}" cx="{dimensions/cx}" cy="{dimensions/cy}" fill="{@color}" />
                </svg>
            </xsl:when>
            <xsl:when test="@tipus = 'text'">
                <svg xmlns="http://www.w3.org/2000/svg">
                    <text x="{posicio/x}" y="{posicio/x}" dx="{dimensions/dx}" dy="{dimensions/dy}" fill="red">I love SVG!</text>
                  </svg>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
      </svg>
      <input type="button" value="Change Radius"  onclick="changeRadius()" />
      <script>
        function changeRadius() {
            var svgs = document.getElementsByTagName("svg");
            for (var i = 0; i &lt; svgs.length; i++) {
              var svgChildren = svgs[i].children;
              for (var j = 0; j &lt; svgChildren.length; j++) {
                svgChildren[j].setAttribute("fill", "blue");
              }
            }
        }
        </script>
        


    </body>
  </html>
</xsl:template>

</xsl:stylesheet>