<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tei="http://www.tei-c.org/ns/1.0"
	xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" omit-xml-declaration= "yes" indent="yes"/>
<xsl:template match="/">

    <html>
            <head>
            <title>F. De Saussure - Progetto di Codifica dei Testi</title>
            <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of>
            <link href="stylemorfologia.css" rel="stylesheet" type="text/css"/>
			 <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
            </head>
			
            <body>
                <header>
				 <nav class="navMenu">
					<a href = "#intro">Intro</a>
					<a href = "#pagina18">Pagina 18</a>
					<a href = "#pagina19">Pagina 19</a>
					<a href = "#glossario">Glossario</a>
					<a href = "#bibliografia">Bibliografia</a>
				</nav>
				</header>
                
				<div class="container" id="intro">
					 <h1 id="introduzione">INFORMAZIONI E STORIA</h1>
					 <div id="box1">
					 <xsl:value-of select="//tei:history"></xsl:value-of>
					 <p>È possibile consultare il manoscritto codificato presso l'archivio online dell'<xsl:value-of select="//tei:publicationStmt/tei:publisher"></xsl:value-of>.</p>
					  <p><b>Manoscritto ad opera di:</b></p>
						<p><xsl:value-of select="//tei:titleStmt//tei:author"></xsl:value-of></p>
						 <p><b>Fruizione:</b></p>
						 <p><xsl:value-of select="//tei:publicationStmt/tei:availability"></xsl:value-of></p>
						 <p><b>Acquisito:</b></p>
						 <p><xsl:value-of select="//tei:repository"></xsl:value-of></p>
						 <p><b>Lingua:</b></p>
						 <p><xsl:value-of select="//tei:textLang"></xsl:value-of></p>
					  </div>
                </div>

                <div class="container">
					<h1 id="materiale">MATERIALE E SUPPORTO</h1>
					 <div id="box2">
					   <p><b>Materiale:</b></p>
					  <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"></xsl:value-of></p>
					   <p><b>Numero di fogli:</b></p>
					  <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent"></xsl:value-of></p>
					   <p><b>Caratteri:</b></p>
					  <p><xsl:value-of select="//tei:typeDesc"></xsl:value-of></p>
					   <p><b>Lunghezza:</b></p>
					  <p><xsl:value-of select="//tei:layoutDesc"></xsl:value-of></p>
					   <p><b>Scrittura:</b></p>
					  <p><xsl:value-of select="//tei:physDesc/tei:handDesc"></xsl:value-of></p>
					   <p><b>Condizioni:</b></p>
					  <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"></xsl:value-of></p>
					</div>
				</div>

                <div id="pagina18">
                   <h1 id="pag18">PAGINA 18</h1> 
                        <div class="boxTrascrizione"> 
							<div class="img-wrapper">
								<xsl:element name="img">
									<xsl:attribute name="src">
										<xsl:value-of select="//tei:graphic[@xml:id='Pag18']/@url"/>
									</xsl:attribute>
									<xsl:attribute name="id">frontepag18</xsl:attribute>
								</xsl:element>
							</div>
							<div class="box-trascrizione1">
								<div class="trascrizione">
									<xsl:apply-templates select="//tei:text//tei:div[@n = '18']/tei:ab"/>
								</div>  
							</div> 
								<div class='box-legenda'>
                                <h2 id="legenda">LEGENDA</h2>
                                   <p id="red">Termine </p>
                                   <p id="purple">Abbreviazioni </p>
                                   <p id="green">Cancellazioni </p>
                                   <p id="fucsia">Correzioni </p>
                                   <p id="blue">Parole straniere </p>
								</div>	
								<div class="box-btn">
								<h2 class="bntTitoloLeg">VISUALLIZA</h2>
								<p class="rowBtn"><button type="button" class="btnTerm" onclick="showTerm()">Mostra</button><button type="button" class="btnHide btnHideTerm" onclick="hideTerm()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnAbbr" onclick="showAbbr()">Mostra</button><button type="button" class="btnHide btnHideAbbr" onclick="hideAbbr()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnDel" onclick="showDel()">Mostra</button><button type="button" class="btnHide btnHideDel" onclick="hideDel()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnCorr" onclick="showCorr()">Mostra</button><button type="button" class="btnHide btnHideCorr" onclick="hideCorr()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnParStra" onclick="showParStra()">Mostra</button><button type="button" class="btnHide btnHideParStra" onclick="hideParStra()">Nascondi</button></p>
								</div>							
						</div>
						<h1 id="trad1">Traduzione in italiano</h1> 
						<div class="box-traduzione">
							<p class='text-traduzione'><xsl:value-of select="//tei:text//tei:div[@n = '1']"></xsl:value-of></p>
                        </div>
                    
                </div>
				
				 <div id="pagina19" class="box-pag19">
                   <h1 id="pag19">PAGINA 19</h1> 
                        <div class="boxTrascrizione"> 
							<div class="img-wrapper">
								<xsl:element name="img">
									<xsl:attribute name="src">
										<xsl:value-of select="//tei:graphic[@xml:id='Pag19']/@url"/>
									</xsl:attribute>
									<xsl:attribute name="id">frontepag18</xsl:attribute>
								</xsl:element>
							</div>
							
							<div class="box-trascrizione2">
								<div class="trascrizione">
									<xsl:apply-templates select="//tei:text//tei:div[@n = '19']/tei:ab"/>
								</div>  
							</div>  
							<div class='box-legenda'>
                                <h2 id="legenda">LEGENDA</h2>
                                   <p id="red">Termine </p>
                                   <p id="purple">Abbreviazioni </p>
                                   <p id="green">Cancellazioni </p>
                                   <p id="fucsia">Correzioni </p>
                                   <p id="blue">Parole straniere </p>
								</div>	
								<div class="box-btn">
								<h2 class="bntTitoloLeg">VISUALLIZA</h2>
								<p class="rowBtn"><button type="button" class="btnTerm" onclick="showTerm()">Mostra</button><button type="button" class="btnHide btnHideTerm" onclick="hideTerm()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnAbbr" onclick="showAbbr()">Mostra</button><button type="button" class="btnHide btnHideAbbr" onclick="hideAbbr()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnDel" onclick="showDel()">Mostra</button><button type="button" class="btnHide btnHideDel" onclick="hideDel()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnCorr" onclick="showCorr()">Mostra</button><button type="button" class="btnHide btnHideCorr" onclick="hideCorr()">Nascondi</button></p>
								<p class="rowBtn"><button type="button" class="btnParStra" onclick="showParStra()">Mostra</button><button type="button" class="btnHide btnHideParStra" onclick="hideParStra()">Nascondi</button></p>
								</div>			
						</div>
						<h1 id="trad2">Traduzione in italiano</h1> 
						<div class="box-traduzione">
							<p class='text-traduzione'><xsl:value-of select="//tei:text//tei:div[@n = '2']"></xsl:value-of></p>
                        </div>
                </div>
				
                <div id="glossario" class="box-Glossario">
                     <h1 id="gloss">GLOSSARIO</h1> 
					 <div id= "box3" class="glossario">
					   <xsl:apply-templates select="//tei:list"/>
					 </div>
                </div>

                <div class="box-Bibliografia" id="bibliografia">
                      <h1 id="blib">BIBLIOGRAFIA</h1> 
					  <div id= "box4">
					  <xsl:apply-templates select="//tei:listBibl"/>
					 </div>
                </div>

                <div class="box-Riferimenti">
					 <h1 id="rif">RIFERIMENTI</h1> 
					<div id= "box5">
                    <xsl:apply-templates select="//tei:editionStmt"/>
                    <p><b>Traduzione effettuata da:</b></p> <p><xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id='EF']"></xsl:value-of></p>
					</div>
				</div>
            </body>
            <script type="text/javascript" src="morfologia.js"></script>
        </html>
    </xsl:template>
	
	<!-- Collocazione-->
	<xsl:template match="tei:settingDesc">
		<p><xsl:value-of select="current()/tei:setting/tei:name"></xsl:value-of></p>
	</xsl:template>
	
	<!-- Caratteri bold-->
	<xsl:template match="tei:hi[@rend = 'bold']">
    <b>
		<xsl:apply-templates />
    </b>
    </xsl:template>
	
	<!--Suddivisione righe-->
	<xsl:template match="//tei:text/tei:body/tei:div/tei:ab/tei:lb">
		<xsl:for-each select="current()">
		<xsl:element name="ol">
		</xsl:element>
		</xsl:for-each>
	</xsl:template>
	
	
	<!--Elementi terminologici--> 
	<xsl:template match="//tei:term"> 
		<span class="elemTerm">
		 <xsl:value-of select="."/></span>
	 </xsl:template> 
	
	<!--Elementi cancellati-->
	<xsl:template match="//tei:del">
		<xsl:element name="span">
			 <xsl:attribute name="class">del</xsl:attribute> 
			 <xsl:apply-templates />
		 </xsl:element> 
    </xsl:template>
	
	<!--Elementi cancellati incomprensibili -->
	<xsl:template match="//tei:gap">
		<xsl:element name="span">
			 <xsl:attribute name="class">gap</xsl:attribute> 
			 ?????? 
		 </xsl:element> 
    </xsl:template>
	
	<!--Correzioni-->
		<xsl:template match="tei:choice">
			<xsl:element name="span">
				<xsl:attribute name="class">choice</xsl:attribute>
				<xsl:element name="span">
					<xsl:attribute name="class">sic</xsl:attribute>
					<xsl:value-of select="tei:sic" />
				</xsl:element>
				<xsl:element name="span">
					<xsl:attribute name="class">corr</xsl:attribute>
					<xsl:value-of select="tei:corr" />
				</xsl:element>
			</xsl:element>
		</xsl:template>
		
	<!--Abbreviazioni-->
		<xsl:template match="tei:abbr">
			<span class="abbreviazioni">
			<xsl:value-of select="."/>
			</span>
		</xsl:template>
		
		<!--Espansioni-->
		<xsl:template match="tei:expan">
			<span class="espansioni">
			<xsl:value-of select="."/>
			</span>
		</xsl:template>
	
	
    <!-- Parole straniere -->
    <xsl:template match="//tei:foreign">
        <span class="paroleStraniere">
        <xsl:value-of select="."/></span>
    </xsl:template>


	<!-- Glottonimo -->
	<xsl:template match="tei:lang">
		<span class="glottonimo">
		<xsl:element name="span">
			<xsl:attribute name="class">lang</xsl:attribute>
			<xsl:apply-templates />
		</xsl:element></span>
	</xsl:template>
			
	<!--Bibliografia-->
	<xsl:template match="tei:listBibl">
    <xsl:for-each select="current()/tei:bibl">
      <xsl:element name="p">
        <xsl:for-each select="current()//tei:author">
          <xsl:element name="span">
              <b><xsl:for-each select="current()//tei:forename">
                <xsl:apply-templates />
              </xsl:for-each></b>
              <xsl:text> </xsl:text>
               <b><xsl:for-each select="current()//tei:surname">
              	<xsl:apply-templates />
              </xsl:for-each></b>
            </xsl:element>
          <xsl:text>, </xsl:text>
        </xsl:for-each>

        <xsl:element name="span">
          <xsl:element name="i">
            <xsl:for-each select="current()//tei:title">
              <xsl:apply-templates />
              <xsl:text>, </xsl:text>
            </xsl:for-each>
          </xsl:element>
        </xsl:element>

        <xsl:element name="span">
          <xsl:for-each select="current()//tei:pubPlace">
            <xsl:apply-templates />
            <xsl:text>- </xsl:text>
          </xsl:for-each>
        </xsl:element>

        <xsl:element name="span">
          <xsl:apply-templates select="current()//tei:date" />
          <xsl:text>. </xsl:text>
        </xsl:element>

		</xsl:element>
	</xsl:for-each>
	</xsl:template>
	
	<!--Riferimenti-->
	<xsl:template match="tei:editionStmt">
		<p><b><xsl:value-of select="current()/tei:edition"></xsl:value-of></b></p>
		<p><b>Progetto a cura di:</b></p> <p><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='ML']"></xsl:value-of> e <xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='CY']"></xsl:value-of></p>
		<p><b>Coordinato da:</b></p> <p><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='AMDG']"></xsl:value-of></p>
	</xsl:template>
		
</xsl:stylesheet>