<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"> 
    <html>
      <head>
        <title><xsl:value-of select="bp/title"/></title>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true"/>
        <link href="https://fonts.googleapis.com/css2?family=Henny+Penny&amp;display=swap" rel="stylesheet"/>
        <style>
          body{
          margin: 0;
          padding: 0;
          min-height: 100vh;
          display: flex;
          flex-direction: column;
          }
          .ytsong {
          display: flex;                 
          flex-wrap: wrap;               
          }
          iframe {
          width: 30vw;             
          height: 315px;            
          margin-left: 2.5vw;
          margin-bottom: 2.5vw;
          }
          a.button {
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
          position: relative;
          }
          
          a.button:hover {
          background-color: #ffb3d9;
          }
          
          h1 {
          font-family: "Henny Penny", system-ui;
          font-weight: 400;
          font-style: normal;
          }
          .image-container {
          position: fixed;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          z-index: -100;
          }
          img {
          max-width: 100%;
          height: auto;
          }
          .bottom {
          margin-top: auto;
          width: 100%;
          text-align: center;
          }
        </style>
        
        
      </head>
      <body>
        <div class="image-container">
          <img src="images/bg01.png" class="bg"></img>
        </div>
        <h1 align="center">
          <xsl:value-of select="bp/slogan"/>
        </h1>
        <div class="ytsong">
          <xsl:for-each select="bp/songsrc"> 
            <iframe width="560" height="315">
              <xsl:attribute name="src">
                <xsl:value-of select="."/>
              </xsl:attribute>
              title="YouTube video player" frameborder="0" 
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
              referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
            </iframe>
          </xsl:for-each>
        </div> 
        <div class="bottom">
          <a class="button" style="width:100%;" href="index.xml">Back to HOME</a>
        </div>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
