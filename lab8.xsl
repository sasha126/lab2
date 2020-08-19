<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
xmlns:xlink="http://www.w3.org/1999/xlink"
>   
   <xsl:template match = "/"> 
		
      <html> 
         <body> 
            <h2>Missing Persons</h2> 
				
            <table border = "1"> 
               <tr bgcolor = "#bce9f9"> 
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
                  
                  </tr> 
               </xsl:for-each> 
					
            </table> 
            <h2>Latest Case</h2>
            <table border = "1"> 
               <tr bgcolor = "#bce9f9"> 
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
				
               <xsl:for-each select="/PERSONS/PERSON[last()]"> 
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
                  
                  </tr> 
               </xsl:for-each> 
					
            </table> 

            <h2>Missing Persons less than 30 years of age</h2>
            <table border = "1"> 
               <tr bgcolor = "#bce9f9"> 
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
				
               <xsl:for-each select="/PERSONS/PERSON[age &lt; 30]"> 
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
                  
                  </tr> 
               </xsl:for-each> 
					
            </table> 

            <h2>Missing Persons last seen in Nuvem</h2>
            <table border = "1"> 
               <tr bgcolor = "#bce9f9"> 
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
				
               <xsl:for-each select="/PERSONS/PERSON[starts-with(lastseen,'Nuvem')]"> 
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
                  
                  </tr> 
               </xsl:for-each> 
					
            </table> 

            <h2>Missing Persons having age greater than average</h2>
            <table border = "1"> 
               <tr bgcolor = "#bce9f9"> 
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
				
               <xsl:for-each select="/PERSONS/PERSON[age &gt; avg(/PERSONS/PERSON/age)]"> 
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
                  
                  </tr> 
               </xsl:for-each> 
					
            </table> 
            
<svg viewBox="0 0 160 40" xmlns="http://www.w3.org/2000/svg">
  <a xlink:href="https://citizen.goapolice.gov.in/web/guest/missing-person"><text x="10" y="45">Learn More</text></a>
</svg>
         </body> 
      </html> 
   </xsl:template>  
</xsl:stylesheet>