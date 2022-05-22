<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><!--определяет что данный док это таблица стилей-->
<xsl:template match="/">

<body style="
                background-color: #253555;
                color: white;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                margin:auto;
                width: 1400px;
                ">

        <h2 style="text-align:center;">Знаменитые авторы</h2>

        <table border="1" style="border-collapse:collapse;">
            <tr style="text-weight:bold;">
                <th style="text-align:center">Автор</th>
                <th style="text-align:center">Год жизни</th>
                <th style="text-align:center">Количесво работ</th>
                <th style="text-align:center">Серия</th>
                <th style="text-align:center">Количество работ в серии</th>
                <th style="text-align:center">Описание серии</th>
                
            </tr>

            <xsl:for-each select="Artists/Artist">
            
          <xsl:sort select="numberOfWorks" data-type="number" order="descending"/> <!--сортировка по возрастанию по площади-->
                <tr>
                    <td style="text-align:center; padding: 10px;"><xsl:value-of select="name"/></td>
                    <td style="text-align:center; padding: 10px; "><xsl:value-of select="lifeYears"/></td>
                    <td style="text-align:center; padding: 10px; "><xsl:value-of select="numberOfWorks"/></td>
                    <td style="text-align:center; padding: 10px;" ><xsl:value-of select="SeriesName"/></td>
                    
                    <xsl:choose>

                        <xsl:when test="SeriesNumberOfWorks &gt; 50">
                            <td bgcolor="#111722" style="text-align:center; padding: 10px;" ><xsl:value-of select="SeriesNumberOfWorks" /></td>
                        </xsl:when>

                        <xsl:otherwise>   
                                <td style="text-align:center; padding: 10px;" ><xsl:value-of select="SeriesNumberOfWorks" /></td>
                        </xsl:otherwise>

                    </xsl:choose>
                    
                    <td style="text-align:center; padding: 10px;" ><xsl:value-of select="SeriesDescription"/></td>
  
                </tr>

            </xsl:for-each>
        </table>
    </body>

</xsl:template>
</xsl:stylesheet>