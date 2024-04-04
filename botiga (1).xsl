<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <script src="https://kit.fontawesome.com/3e4c1a6931.js" crossorigin="anonymous"></script>
        <style>
          .color2009 {
            background-color: lightblue;
          } 
        </style>
      </head>
      <body>
        <h2>Exercici de la botiga</h2>
        <table border="1">
          <tr>
            <th>Titol</th>
            <th>Director</th>
            <th>Preu</th>
            <th>Indicador preu</th>
            <th>Any</th>
            <th>Idioma</th>
          </tr>
          <xsl:for-each select="botiga/bluray">
            <tr>
              <td>
                <a>
                  <xsl:attribute name="href">
                    https://www.imdb.com/find?q=<xsl:value-of select="titol" />
                  </xsl:attribute>
                  <xsl:value-of select="titol" />
                </a>

                <!-- VERSIÓ ALTERNATIVA FENT SERVIR {}: https://stackoverflow.com/a/22106562 -->
                <!-- <a href="https://www.imdb.com/find?q={titol}">
                  <xsl:value-of select="titol" />
                </a> -->
              </td>
              <td>
                <xsl:value-of select="director" />
              </td>
              <td>
                <xsl:value-of select="preu" />
              </td>
              <td>
                <xsl:choose>
                  <xsl:when test="preu &gt; 15">
                    <i class="fa-solid fa-money-bills"></i>
                  </xsl:when>
                  <xsl:otherwise>
                    <i class="fa-solid fa-money-bill"></i>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
                <xsl:choose>
                  <xsl:when test="any = 2009">
                    <td class="color2009">
                      <xsl:value-of select="any" />
                    </td>

                    <!-- VERSIÓ ALTERNATIVA SENSE FER SERVIR UNA CLASSE CSS -->
                    <!-- <td style="background-color: lightblue">
                      <xsl:value-of select="any" />
                    </td> -->

                  </xsl:when>
                  <xsl:otherwise>
                    <td>
                      <xsl:value-of select="any" />
                    </td>
                  </xsl:otherwise>
                </xsl:choose>
                
                <!-- VERSIÓ ALTERNATIVA ON LI POSES UNA CLASSE A TOTS ELS TDs AMB ANY -->
                <!-- <td>
                  <xsl:attribute name="class">
                    color<xsl:value-of select="any" />
                  </xsl:attribute>
                  <xsl:value-of select="any" />
                </td> -->


                <!-- VERSIÓ ALTERNATIVA FENT SERVIR {}: https://stackoverflow.com/a/22106562 -->
                <!-- <td class="color{any}">
                  <xsl:value-of select="any" />
                </td> -->

              <td>
                <!-- SI POSES UN SALT DE LINIA DESPRÈS DE .jpeg NO ES MOSTRARÀ BÉ!! -->
                <img width="20px">
                  <xsl:attribute name="src">img/<xsl:value-of select="titol/@idioma" />.jpeg</xsl:attribute>
                </img>

                <!-- VERSIÓ ALTERNATIVA FENT SERVIR {}: https://stackoverflow.com/a/22106562 -->
                <!-- <img src="img/{titol/@idioma}.jpeg"></img> -->
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>