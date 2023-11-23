<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="/">
<html>
  	<head>
                  <title>HelloWorld.xsl (transformed)</title>
        	 </head>
             	<body>
<p><xsl:value-of select="child::message" /></p>
</body>
</html>
</xsl:template>
</xsl:transform>
