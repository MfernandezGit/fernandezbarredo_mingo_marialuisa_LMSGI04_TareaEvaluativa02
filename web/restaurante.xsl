<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/reservaeventos">
   
    <html lang="es">
    
        <head>
            <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
            <meta charset="utf-8"/>
            <meta name="description" content="Página principal" />
            <title>titulo de la web</title>
        </head>
    
        <body>
            <header>
                <img src= "../img/logotipo.png" alt= "Reservas" />
                <a href="teatro.html">Teatro</a>
                <a href="restaurante.html">Restaurante</a>
                <a href="festival.html">Festival</a>
            </header>
            
			<main>
				<article>	
				<!-- Plantilla para los restaurantes -->
				<xsl:apply-templates select="restaurante" />
				</article>
			</main>
		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
		<!-- Usamos la plantilla -->
       <xsl:template match="restaurante">
	   <!-- Variable para el nombre del restaurante -->
	   <xsl:variable name="nombrerest"><xsl:value-of select="nombrerestaurante"/></xsl:variable>
	   <!-- Link a la página del restaurante -->
	   <h1>
			<a href="{informacion}"><xsl:value-of select="$nombrerest" /></a>, <xsl:value-of select="ciudad" /> 
		</h1>
		<!-- Plantilla para el menu -->
	   <xsl:apply-templates select="menu" />
	   </xsl:template>
		
		<!-- Usamos la plantilla del menu -->
	   <xsl:template match="menu">
		   <article class="restaurante">
			<h3>
				<xsl:value-of select="@tipo" /> 
			</h3>
			<!-- Plantilla para los platos -->
		   <xsl:apply-templates select="plato" />
		   </article>
	   	</xsl:template>
		
		<!-- Usamos la plantilla platos-->
	   <xsl:template match="plato">
			<p><xsl:value-of select="." /></p>
	   	</xsl:template>	   
 </xsl:stylesheet>
	   