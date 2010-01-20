<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
	exclude-result-prefixes="xhtml i18n"
	version="1.0">
	
	<xsl:import href="params.xsl"/>
	<xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" encoding="utf-8"/>
	<xsl:variable name="url" select="$queryinfo/query/url"/>
	
	<xsl:template match="/">
		<html lang="{$lang}" xml:lang="{$lang}">
			<head>
				<title>
					<xsl:call-template name="page_head_title"/>
				</title>
			
				<xsl:call-template name="html_head_css"/>
			</head>
			<body class="yui-skin-sam">
				<xsl:call-template name="page_body"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="page_head_title">
		Liip AG - liip.to
	</xsl:template>
	
	<xsl:template name="html_head_css">
		<link rel="shortcut icon" href="{$webrootStatic}images/favicon.ico" type="image/x-icon" />

<!--
	    <link rel="stylesheet" type="text/css" href="{$webroot_yui}datatable/assets/skins/sam/datatable.css" /> 
-->
		<link rel="stylesheet" type="text/css" href="{$webroot_yui}reset-fonts-grids/reset-fonts-grids.css" />
		<link rel="stylesheet" type="text/css" href="{$webroot_yui}base/base.css" />
		<link rel="stylesheet" type="text/css" href="{$webrootStatic}css/default.css" media="screen" />
	<!--	<link rel="stylesheet" type="text/css" href="{$webroot_yui}/tabview/assets/skins/sam/tabview.css" />
		<link rel="stylesheet" type="text/css" href="{$webroot_yui}/fonts/fonts-min.css" />	
-->
	

	</xsl:template>
	
	<xsl:template name="page_body">
		<div id="doc4" class="yui-t5">
			<xsl:call-template name="html_body_header"/>
			<xsl:call-template name="html_body_content"/>
			<xsl:call-template name="html_body_footer"/>
		</div>
        <xsl:call-template name="page_bottom_javascript"/>
	</xsl:template>
	
	<xsl:template name="html_body_header">
		<div id="hd">
		    <a id="root-link" href="{$webroot}"></a>
		    <!--
                                removed from inbetween release

            <form method="get" name='searchform' action="/search/">
			<div id="search">
			    <div id="myAutoComplete"> 
				<label>Find a link:</label>
				<input id="myInput" name="url" type="text"/> 
					<div id="myContainer"></div> 
					<input id="myHidden" type="hidden"/>
				</div>
			</div>
		</form>--></div>
	</xsl:template>
	
	<xsl:template name="html_body_content">
		<div id="bd">
			<xsl:call-template name="page_body_content"/>
		</div>
	</xsl:template>
	
	<xsl:template name="page_body_content">
		no content
	</xsl:template>
	
	<xsl:template name="html_body_footer">
		<div id="ft">
			<xsl:call-template name="page_body_footer"/>
		</div>
	</xsl:template>
	
	<xsl:template name="page_body_footer">
	</xsl:template>
	
	<xsl:template name="page_bottom_javascript">
		<script type="text/javascript" src="{$webroot_yui}yahoo-dom-event/yahoo-dom-event.js"><xsl:text> </xsl:text></script>
		<script type="text/javascript" src="{$webroot_yui}connection/connection-min.js"><xsl:text> </xsl:text></script>
		<script type="text/javascript" src="{$webroot_yui}json/json-min.js"><xsl:text> </xsl:text></script>
		<script type="text/javascript" src="{$webrootStatic}js/liipto.js"><xsl:text> </xsl:text></script>

	<!--
		<script type="text/javascript" src="{$webroot_yui}yahoo-dom-event/yahoo-dom-event.js"></script>
		<script type="text/javascript" src="{$webroot_yui}element/element-min.js"></script>
		<script type="text/javascript" src="{$webroot_yui}datasource/datasource-min.js"></script>
		
		<script type="text/javascript" src="{$webroot_yui}connection/connection-min.js"></script>
		<script type="text/javascript" src="{$webroot_yui}tabview/tabview-min.js"></script>
		<script type="text/javascript" src="{$webroot_yui}json/json-min.js"></script>
		<script type="text/javascript" src="{$webroot_yui}animation/animation-min.js"></script>
		<script type="text/javascript" src="{$webroot_yui}autocomplete/autocomplete-min.js"></script>
		<script type="text/javascript" src="{$webroot_yui}datatable/datatable-min.js"></script>
		<script type="text/javascript" src="{$webroot_yui}dragdrop/dragdrop-min.js"></script> 
        
		<script type="text/javascript" src="{$webrootStatic}js/liipto.js"></script> -->
		
		<!--
		    <script type="text/javascript" src="{$webrootStatic}js/search.js"></script>
        <script type='text/javascript' src='http://getfirebug.com/releases/lite/1.2/firebug-lite-compressed.js'></script>
		-->
		</xsl:template>
	
	
</xsl:stylesheet>