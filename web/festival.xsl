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
                <a href="teatro.xml">Teatro</a>
                <a href="restaurante.xml">Restaurante</a>
                <a href="festival.xml">Festival</a>
            </header>
            
            <section class="festival">
                <h1>Festivales de rock</h1>
                <table>
                    <tr>
						<th>FESTIVAL</th>
                        <th>CONCIERTO</th>
                        <th>FECHA</th>
                        <th>HORA</th>
                        <th>LUGAR</th>
                    </tr>
					
					<!-- Aplicar plantilla para los conciertos -->
					<xsl:apply-templates select="festival/conciertos" />
					
                </table>			
            </section>
			<footer>
                <address>&#169; 2020 desarrollado por info@birt.eus</address>
			</footer>
        </body>
    </html>
</xsl:template>


<xsl:template match="concierto">
<!-- Varible para seleccionar el tipo de musica -->
<xsl:variable name="grupot" select="grupo/@tipomusica" />

<xsl:if test = "$grupot='rock'">
	<tr>
		<td><xsl:value-of select='../../nombrefesti' /></td>
		<td><xsl:value-of select='grupo' /></td>
		<td><xsl:value-of select='fecha' /></td>
		<td><xsl:value-of select='hora' /></td>
		<td><xsl:value-of select='../../lugar' /></td>
	</tr>
</xsl:if>

</xsl:template>
</xsl:stylesheet>