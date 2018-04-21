<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- l'element racine du xsl. numero du version et la declaration
de cet espace de noms (xmlns:xsl), ils doivent etre prefixees par xsl -->
<xsl:template match="article"> 
  <html lang="fr">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
	<body>

		<div class="main">
		
				<h1><xsl:value-of select="title"/></h1>
				
				<h4><i><xsl:value-of select="author"/></i></h4>
				
				<p><xsl:value-of select="para[1]"/></p>
				
				<h3><xsl:value-of select="section[1]"/></h3>
				
				<p><xsl:value-of select="para[2]"/></p>
				
				<h3><xsl:value-of select="section[2]"/></h3>
				
				 <xsl:for-each select="para">
				   
				   <xsl:if test="position()=3 or position()=4">
							<xsl:value-of select="." /><br />
							<p><xsl:text> </xsl:text> </p>
							 
                   </xsl:if>
		         </xsl:for-each>
				 
				 <h3><xsl:value-of select="section[3]"/></h3>
				 
					 <xsl:for-each select="para">
				   
				   <xsl:if test="position()=5 or position()=6 or position()=7">
							<xsl:value-of select="." /><br />
							<p><xsl:text> </xsl:text> </p> 
                   </xsl:if>
		         </xsl:for-each>
				 
				<h3><xsl:value-of select="section[4]"/></h3>
				
				 <xsl:for-each select="para">
				   
				   <xsl:if test="position()=8 or position()=9">
							<xsl:value-of select="." /><br />
							<p><xsl:text> </xsl:text> </p>
							 
                   </xsl:if>
		         </xsl:for-each>
		</div>		
		  
	</body>
</html>
</xsl:template>
</xsl:stylesheet>