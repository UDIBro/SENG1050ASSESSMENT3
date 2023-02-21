<?xml version="1.0" encoding="utf-8"?>


<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>


<xsl:template match="//car">
	<html>
	<body>
		<h1>
		
			<xsl:value-of select="carModel" />
		</h1>
		
		<hr />	
		
		<p><xsl:value-of select="description" /></p>
		

		
		<img alt="Picture not found">
			<xsl:attribute name="src">
				<xsl:value-of 
					select="imageUrl"/>
			</xsl:attribute>
		</img>


		<p><a href='{manufactererPromo}'>
			<xsl:value-of select="manufactererPromo" />
		</a></p>
		
		


		<table border="1">
			<tr>
				<th style="text-align:left">Cost</th>
				<th style="text-align:left">Make</th>
				
				<th style="text-align:left">Safety Rating</th>
				
				<th style="text-align:left">Weather Coat</th>
				<th style="text-align:left">Leather Interior</th>
				<th style="text-align:left">Backseat Cd Player</th>
				
				<th style="text-align:left">Coupon Code</th>
				<th style="text-align:left">Reccommend Environment</th>
				<th style="text-align:left">Passenger Limit</th>
			</tr>
			
			<tr>

				<td><xsl:value-of select="cost" /></td>
				<td><xsl:value-of select="make" /></td>
				
				<td><xsl:value-of select="safetyRating" /></td>
				
				<td><xsl:value-of select="extras/weatherCoat" /></td>
				<td><xsl:value-of select="extras/leatherInterior" /></td>
				<td><xsl:value-of select="extras/backSeatCdPlayer" /></td>
				
				<td><xsl:value-of select="couponCode" /></td>
				
				<td><xsl:value-of select="information/reccommendEnvironment" /></td>
				<td><xsl:value-of select="information/passengerLimit" /></td>
				
			</tr>
		</table>
		
		<hr />		
		
	</body>
	</html>

</xsl:template>


</xsl:stylesheet>