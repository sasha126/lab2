<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">   
   <xsl:template match = "/"> 
		
      <html> 
         <body> 
            <h2>Missing Persons</h2> 
				
            <table border = "1"> 
               <tr bgcolor = "#eeeeee"> 
                  <th>ID</th>
                  <th>First Name</th> 
                  <th>Last Name</th> 
                  <th>DoB</th>
                  <th>Age</th>  
                  <th>Sex</th> 
                  <th>Height</th> 
                  <th>Weight</th> 
                  <th>Hair Colour</th>
                  <th>Eye Colour</th>
                  <th>Phone number</th>
                  <th>Last Seen</th>
               </tr> 
				
               <xsl:for-each select="PERSONS/PERSON"> 
                  <tr> 
                     <td> 
                        <xsl:value-of select = "@id"/> 
                     </td> 
						
                     <td><xsl:value-of select = "firstname"/></td> 
                     <td><xsl:value-of select = "lastname"/></td> 
                     <td><xsl:value-of select = "dob"/></td> 
                     <td><xsl:value-of select = "age"/></td> 
                     <td><xsl:value-of select = "sex"/></td> 
                     <td><xsl:value-of select = "height"/></td> 
                     <td><xsl:value-of select = "weight"/></td> 
                     <td><xsl:value-of select = "hair"/></td> 
                     <td><xsl:value-of select = "eyes"/></td> 
                     <td><xsl:value-of select = "phone"/></td> 
                     <td><xsl:value-of select = "lastseen"/></td> 
						   <td><xsl:value-of select="contact"/></td>
                  </tr> 
               </xsl:for-each> 
					
            </table> 
            
         </body> 
      </html> 
   </xsl:template>  
</xsl:stylesheet>