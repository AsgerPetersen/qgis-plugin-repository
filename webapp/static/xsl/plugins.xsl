<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- xsl heavily based on xsl from official QGIS repo -->
<xsl:template match="plugins">

<html>
<head>
<title>Septima QGIS repository</title>
<!--link href="xsl.css" rel="stylesheet" type="text/css" /-->

<style>
body  {
   font-family:Verdana, Arial, Helvetica, sans-serif;
width: 45em;
 }

div.plugin {
 background-color:#6EBE43;
 clear:both;
 display:block;
 padding:0 0 0.5em;
 margin:1em;
 color:#fff;
}

.plugin a {
  color: #fff;
}

a {
  color: #000;
}

div.head {
  background-color:#1C773A;
  border-bottom-width:0;
  color:#fff;
  display:block;
  font-size:100%;
  font-weight:bold;
  margin:0;
  padding:0.3em 1em;
}
div.menu{
	display:block;
	text-align: left;
	font-size:100%;
	color: #000;
	}
div.description{
  display: block;
  float:none;
  margin:0;
  text-align: left;
  padding:0.2em 0.5em 0.4em;
  color: #fff;
  font-size:85%;
  font-weight:normal;
  font-style: italic;
 }
div.tags{
  padding:0 0 0 1em;
  font-size:85%;
  font-weight:normal;
}
div.download, div.author, div.branch{
  font-size: 80%;
  padding: 0em 0em 0em 1em;
 }
td.menu_panel {
 	width: 180px;
	font-size: 80%;
	}

</style>

</head>
<body>
<h1>Septima QGIS plugin repository</h1>
<p>Dette er et QGIS plugin repository for plugins udviklet af <a href="http://www.septima.dk" target="_blank">Septima</a>. Plugins 
herfra installeres lettest ved registrere repositoriet i QGIS. Bruger du QGIS's indbyggede plugin manager, vælger QGIS selv den
rette version af pluginet, og QGIS giver dig information, når der er en ny version af pluginet klar til download.</p>
<h3>Installation i QGIS version 1.8</h3>
<ol>
<li>Åbn Plugin Installeren (Klik "Plugins" -> "Fetch python plugins...")</li>
<li>Under fanebladet "Repositories" klikkes "Add"</li>
<li>Indtast et selvvalgt navn (feks Septima) og under URL indtastes http://qgis.septima.dk/plugins</li>
<li>Plugins fra dette repository vil nu være listet under fanebladet "Plugins"</li>
</ol>
<h3>Installation i QGIS version 2.0 (og nyere udgaver af 1.9)</h3>
<ol>
<li>Åbn Plugin Manageren ("Klik Plugins" -> "Manage and Install Plugins")</li>
<li>Vælg "Settings""</li>
<li>Klik "Add" under "Plugin Repositories""</li>
<li>Indtast et selvvalgt navn (feks Septima) og under URL indtastes http://qgis.septima.dk/plugins</li>
<li>I Plugin Manageren vil plugins fra dette repository nu være listet under "Get more"</li>
</ol>
<h2>Manuel installation af plugins</h2>
<p>Ønsker du af en eller anden årsag IKKE at bruge QGIS' indbyggede plugin manager, så kan de enkelte plugins downloades nedenfor.</p>
<table>
<tr>

<td valign="top" class="menu_panel">
Download:
<xsl:for-each select="/plugins/pyqgis_plugin">
<div class="menu">
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="download_url" />
 </xsl:attribute>
 <xsl:value-of select="@name" /> - <xsl:value-of select="@version" />
</xsl:element>
</div>
</xsl:for-each>
</td>
<td>
<xsl:for-each select="/plugins/pyqgis_plugin">
<div class="plugin">
<div class="head">
<!--
<xsl:element name="a">
<xsl:attribute name="href">
<xsl:value-of select="homepage" />
</xsl:attribute>
-->
<xsl:value-of select="@name" /> : <xsl:value-of select="@version" />
<!--
</xsl:element>
-->
</div>
<div class="description">
<xsl:value-of select="description" />
</div>
<div class="tags">
Tags:
<xsl:value-of select="tags" />
</div>
<div class="download">
Download:
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="download_url" />
 </xsl:attribute>
 <xsl:value-of select="file_name" />
</xsl:element>
</div>
<div class="author">
Author: <xsl:value-of select="author_name" />
</div>
<div class="author">
Version: <xsl:value-of select="version" />
</div>
<div class="branch">
Experimental: <xsl:value-of select="experimental" />
</div>
<div class="branch">
Deprecated: <xsl:value-of select="deprecated" />
</div>
<div class="author">
Minimum QGIS Version: <xsl:value-of select="qgis_minimum_version" />
</div>
<div class="author">
Maximum QGIS Version: <xsl:value-of select="qgis_maximum_version" />
</div>
<div class="author">
Home page:
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="homepage" />
 </xsl:attribute>
 <xsl:value-of select="homepage" />
</xsl:element>
</div>
<div class="author">
Tracker:
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="tracker" />
 </xsl:attribute>
 <xsl:value-of select="tracker" />
</xsl:element>
</div>
<div class="author">
Repository:
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="repository" />
 </xsl:attribute>
 <xsl:value-of select="repository" />
</xsl:element>
</div>


</div>
</xsl:for-each>
</td>
</tr>
</table>
</body>
</html>

</xsl:template>

</xsl:stylesheet>
