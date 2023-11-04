<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <style>
                table {
                    
                    width: 100%;
                }
                td {
                    border-radius: 10px;
                    color: white;
                    text-align: right;
                }
                th {
                    background-color: red;
                    border-radius: 10px;
                    color: white;
                }
                tr:nth-child(even) {
                    background-color: MediumSeaGreen;
                }
            </style>
            <body bgcolor="grey">
                
                <table>
                    <tr>
                        <th>Anno</th>
                        <th>Provincia</th>
                        <th>Comune</th>
                        <th>Area</th>
                        <th>Data</th>
                        <th>Idfeature</th>
                    </tr>
                    
                    <xsl:for-each select="italia/areaIncendiata" order-by="provincia">
                
                        <tr>
                            <td><xsl:value-of select="anno"/></td>
                            <td><xsl:value-of select="classe"/></td>
                            <td><xsl:value-of select="provincia"/></td>
                            <td><xsl:value-of select="comune"/></td>
                            <td><xsl:value-of select="area"/></td>
                            <td><xsl:value-of select="data"/></td>
                            <td><xsl:value-of select="idfeature"/></td>
                        </tr>

                    </xsl:for-each>
                </table>

            </body>


        </html>

    </xsl:template>

</xsl:stylesheet>