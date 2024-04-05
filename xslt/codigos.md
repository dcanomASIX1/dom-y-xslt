# XSL
```xsl
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="fitxer.xsl"?>
```

# Template
```xslt

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform ">
<xsl:template match="/">
<html>
<body>
<h2>My CD Collection </h2>
<table>
<tr>
<th>Title</th>
<th>Artist</th>
</tr>
<tr>
<td>.</td>
<td>.</td>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet >

```

# Value Of
```xslt

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform ">
<xsl:template match="/">
<html>
<body>
<h2>My CD Collection </h2>
<table>
<tr>
<th>Title</th>
<th>Artist</th>
</tr>
<tr>
<td><xsl:value-of select="catalog/cd/title"/></td>
<td><xsl:value-of select="catalog/cd/artist"/></td>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet >

```

# For each
``` xslt

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform ">
<xsl:template match="/">
<html>
<body>
<h2>My CD Collection </h2>
<table>
<tr>
<th>Title</th>
<th>Artist</th>
</tr>
<xsl:for-each select="catalog/cd">
<tr>
<td><xsl:value-of select="title"/></td>
<td><xsl:value-of select="artist"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet >

```

```xslt

<xsl:for-each select="catalog/cd[artist='Bob Dylan']">
...
</xsl:for-each>

```


