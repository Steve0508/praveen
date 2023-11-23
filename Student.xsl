<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
<body>
<h2 ALIGN="CENTER">Student details</h2>
<table border="5" ALIGN="CENTER">
<tr bgcolor="gray">
<th>Name</th>
<th>Class</th>
<th>Mark</th>
</tr>
<xsl:for-each select="student/details">
<xsl:sort select="name"/>
<tr>
 





</tr>
 
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="class"/></td>
<td><xsl:value-of select="mark"/></td>
 
</xsl:for-each>
</table>
</body>
</html>
		
	</xsl:template>
</xsl:stylesheet>