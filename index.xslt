<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>BLACKPINK</title>
				<link rel="preconnect" href="https://fonts.googleapis.com"/>
				<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true"/>
				<link href="https://fonts.googleapis.com/css2?family=Henny+Penny&amp;display=swap" rel="stylesheet"/>
				
				<style>
					body {
					margin: 0;
					padding: 0;
					}
					
					a.button {
					width: 16vw;
					background-color: #000000;
					border: none;
					color: white;
					padding: 15px 32px;
					text-align: center;
					text-decoration: none;
					display: inline-block;
					font-size: 16px;
					margin: 4px 2px;
					cursor: pointer;
					border-radius: 12px;
					}
					
					a.button:hover {
					background-color: #ffb3d9;
					}
					
					/* Styling for images and headers */
					.photo-item {
					margin: 2vw 2vw;
					display: flex;
					flex-direction: column;
					align-items: center;
					}
					
					.photo-item img {
					width: 20vw;
					height: 25vh;
					object-fit: cover;
					object-position: top;
					border-radius: 10px;
					}
					
					.photo-item h2 {
					text-align: center;
					font-size: 18px;
					}
					
					.photo-collect {
					display: flex;
					flex-wrap: wrap;
					justify-content: center;
					}
					h1 {
					font-family: "Henny Penny", system-ui;
					font-weight: 400;
					font-style: normal;
					}
					.image-container {
					position: fixed; /* Fix the image position to the viewport */
					top: 50%; /* Position the image at the vertical center */
					left: 50%; /* Position the image at the horizontal center */
					transform: translate(-50%, -50%); /* Adjust the image to truly center it */
					z-index: -100; /* Ensure the image stays on top */
					}
					img {
					max-width: 100%; /* Ensure the image doesn't overflow */
					height: auto; /* Maintain aspect ratio */
					}			
				</style>
			</head>
			<body>
				<div class="image-container">
					<img src="images/bg01.png" class="bg"></img>
				</div>
				<h1 align="center" 
					style="margin: 5vh 0; text-transform: uppercase;">
					BLACKPINK In Your Area
				</h1>
				<iframe style="width: 60vw; height: 70vh; margin-left: 20vw;" src="https://www.youtube.com/embed/IHNzOHi8sJs?si=njjHxRgyvKb5pSPQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen="true"></iframe>
				
				<!-- Display photo section with images and headers -->
				<div class="photo-collect">
					<xsl:for-each select="root/photo/bp">
						<div class="photo-item">
							<!-- Image -->
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="pic"/>
								</xsl:attribute>
							</img>
							<!-- Name as a Header -->
							<a class="button">
								<xsl:attribute name="href">
									<xsl:value-of select="hlink"/>
								</xsl:attribute>
								<xsl:value-of select="name"/>
							</a>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
