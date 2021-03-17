<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Ejercicio 4 Notas</title>
        <style type="text/css">
            
    </head>
    <body>
        <!--div style="float:left;position:absolute;width:100%;"!-->
        <div align="center">
        <h1>Calificaciones de la convocatoria de Junio</h1>
        
        <table border="1" align="center">
            
                <tr bgcolor="#003AFF">
					<th colspan="3">Datos</th>
					<th colspan="4">Notas</th>
				</tr>
            <tr bgcolor="#003AFF">
            
                
                <th>nombre</th>
                <th>apellidos</th>
                <th>matricula</th>
            
            
                
                <th>cuestionarios</th>
                <th>tareas</th>
                <th>examen</th>
                <th>final</th>
            </tr>
        
            

            <xsl:for-each select="notas/alumno">
            <tr>
            <xsl:choose>
            
            <xsl:when test="final &gt; 9.0">

            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="cuestionarios"/></td>
            <td><xsl:value-of select="tareas"/></td>
            <td><xsl:value-of select="examen"/></td>
            <td bgcolor="#0513FB"><xsl:value-of select="final"/></td>
                    
                </xsl:when>
                <xsl:when test="final &gt; 7.0">

            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="cuestionarios"/></td>
            <td><xsl:value-of select="tareas"/></td>
            <td><xsl:value-of select="examen"/></td>
            <td bgcolor="#00FFFF"><xsl:value-of select="final"/></td>
                    
                </xsl:when>

                <xsl:when test="final &gt; 6.0">

            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="cuestionarios"/></td>
            <td><xsl:value-of select="tareas"/></td>
            <td><xsl:value-of select="examen"/></td>
            <td bgcolor="#1A2123"><xsl:value-of select="final"/></td>
                    
                </xsl:when>

                <xsl:when test="final &gt; 5.0">

            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="cuestionarios"/></td>
            <td><xsl:value-of select="tareas"/></td>
            <td><xsl:value-of select="examen"/></td>
            <td bgcolor="#FF7900"><xsl:value-of select="final"/></td>
                    
                </xsl:when>

                    <xsl:otherwise>
                        
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="cuestionarios"/></td>
            <td><xsl:value-of select="tareas"/></td>
            <td><xsl:value-of select="examen"/></td>
            <td bgcolor="#FF0000"><xsl:value-of select="final"/></td>
                        
                    </xsl:otherwise>
                </xsl:choose>
        </tr>
        <!--tr bgcolor="#D6D1D1">
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="cuestionarios"/></td>
            <td><xsl:value-of select="tareas"/></td>
            <td><xsl:value-of select="examen"/></td>
            <td><xsl:value-of select="final"/></td>
        </tr!-->

    </xsl:for-each>
    
        </table>
        </div>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>