<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
  <head>
		<title>Scubastore Products</title>
			<style>
				h1,h2 {
          padding:20px;
					text-align: center;
				}
        body {
          background-color: goldenrod;
          }
				table {
          background-color:black;
					margin: 100px auto;
          width: 80%;
          font-size: 30px;
				}

        th:nth-child{
          background-color: #white;
        }
          
				tr:nth-child(even) {
					background-color: #cca44c;
				}
				  
				tr:nth-child(odd) {
					background-color: #cca44c;
				}

        td, th {
          text-align: center;
        }
			</style>
	</head>      
      <body>
	  
        <h1>Scubastore</h1>
        <h2>Products</h2>
		<table border="3">
          <tr bgcolor="#556B2F">
            <th>Product Type</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Colour</th>
          </tr>
		  
          <xsl:for-each select="product/details">
            <xsl:sort select="price" order="descending"/>
            <tr>
              <td><xsl:value-of select="producttype"/></td>
              <td><xsl:value-of select="productname"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="colour"/></td>
			        <!--<td><xsl:value-of select="producttype"/></td>
              <td><xsl:value-of select="productname"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="colour"/></td>-->
            </tr>
			
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>