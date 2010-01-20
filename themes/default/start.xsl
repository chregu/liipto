<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
	exclude-result-prefixes="xhtml i18n"
	version="1.0">

	<xsl:import href="master.xsl"/>
	<xsl:template name="page_body_content">
		<div id="input_box">
			<form method="get" name="formular"  action="/api/txt/">
				<div id="col_1"> <!-- 375 -->
					<label class="url" for="url">URL</label>
					<input id="url" class="inputText" type="text" onblur="if(this.value=='') this.value='http://';" onfocus="if(this.value=='http://') this.value='';" value="http://" name="url"/>
					<xsl:text> </xsl:text>
					
					<!--<small>Must be 250 characters or less.</small>-->
				</div>
				
				<div id="col_2"><!-- 330 -->
					<div id="col_2_id_1">
						<span class="optional"> optional</span>
						<label class="liipto" for="code">liip.to/</label>
						<input id="code" class="inputText" type="text" onblur="if(this.value=='') this.value='custom';" onfocus="if(this.value=='custom') this.value='';"  value="custom" name="code" maxlength="20" />
						<img id="codeOkSpinner" style="visibility: hidden;" src="{$webroot_yui}assets/skins/sam/wait.gif"/>
					</div>
				<!-- 
                    removed from inbetween release
                    <div id="col_2_id_2">
						<input id="checkbox" type="checkbox" name="checkbox"/><label class="private" for="checkbox">private</label>
					</div>
                    -->
				</div>				
				<div id="col_3"><!-- 135 -->
					<input id="button" type="submit" value="" />
				</div>
			</form>
		</div>
		<div id="additional_info">
      		 <div id="yui-main"> 
			      <!--
                  removed from inbetween release

                  <div class="yui-b">
            
					<div id="demo" class="yui-navset">
					<ul class="yui-nav">
						<li class="selected"><a href="#tab1"><em>Latest</em></a></li>
						<li><a href="#tab2"><em>Hottest</em></a></li>
					</ul>
						<div class="yui-content">
							<div id="#tab1">
								<div id="myLatestTableContainer">
    								<table id="latestTable">
    									<thead>
    									    <th>link</th>
    									    <th>date</th>
    									</thead>
    									<tbody>
        									<xsl:for-each select="command/hottest/entry">
        										<tr>
        											<td>
        												<a>
        													<xsl:attribute name="href">
        														<xsl:value-of select="url"/>
        													</xsl:attribute>
        													<xsl:choose>
        														<xsl:when test="string-length(url) > 100">
        															<xsl:value-of select="substring(url, 0, 60)"/>...<xsl:value-of select="substring(url, string-length(url)-20)"/>
        														</xsl:when>
        														<xsl:otherwise>
        															<xsl:value-of select="url"/>
        														</xsl:otherwise>
        													</xsl:choose>
        												</a>
        											</td>
        											<td>
        											    <xsl:value-of select="changed"/>
        											</td>
        										</tr>
        									</xsl:for-each>
									    </tbody>
    								</table>
							    </div>
							    <script type="text/javascript">
                                    var myDataSource = new YAHOO.util.DataSource(YAHOO.util.Dom.get("latestTable"));
                                    myDataSource.responseType = YAHOO.util.DataSource.TYPE_HTMLTABLE;
                                    myDataSource.responseSchema = {
                                        fields: [{key:"link"},
                                                {key:"date"},
                                        ]
                                    };

                                    var myColumnDefs = [
                                        {key:"link", width: 490, sortable:true},
                                        {key:"date", width: 122, sortable:true},
                                    ];

                                    var myDataTable = new YAHOO.widget.DataTable("myLatestTableContainer", myColumnDefs, myDataSource, {sortedBy:{key:"date", dir:"asc"}});
                                    </script>
							</div>
							<div id="#tab2">
								<div id="myHottestTableContainer">
    								<table id="hottestTable">
    									<thead>
    									    <th>link</th>
    									    <th>code</th>
    									    <th>date</th>
    									    <th>counter</th>
    									</thead>
    									<tbody>
        									<xsl:for-each select="command/hottest/entry">
        										<tr>
        											<td>
        												<a>
        													<xsl:attribute name="href">
        														<xsl:value-of select="url"/>
        													</xsl:attribute>
        													<xsl:choose>
        														<xsl:when test="string-length(url) > 100">
        															<xsl:value-of select="substring(url, 0, 60)"/>...<xsl:value-of select="substring(url, string-length(url)-20)"/>
        														</xsl:when>
        														<xsl:otherwise>
        															<xsl:value-of select="url"/>
        														</xsl:otherwise>
        													</xsl:choose>
        												</a>
        											</td>
        											<td>
            										    <a>
        													<xsl:attribute name="href">
        														<xsl:value-of select="code"/>
        													</xsl:attribute>
        													http://liipto.lo/<xsl:value-of select="code"/>
        											    </a>
        											</td>
        											<td>
        											    <xsl:value-of select="changed"/>
        											</td>
        											<td>
        												<xsl:value-of select="counter"/>
        											</td>
        										</tr>
        									</xsl:for-each>
									    </tbody>
    								</table>
							    </div>
							</div>
						</div>
						<script type="text/javascript">
                        var myDataSource = new YAHOO.util.DataSource(YAHOO.util.Dom.get("hottestTable"));
                        myDataSource.responseType = YAHOO.util.DataSource.TYPE_HTMLTABLE;
                        myDataSource.responseSchema = {
                            fields: [{key:"link"},
                                    {key:"code"},
                                    {key:"date"},
                                    {key:"counter"}
                            ]
                        };
                        var myColumnDefs = [
                            {key:"link", sortable:true},
                            {key:"code", sortable:true},
                            {key:"date", width: 122, sortable:true},
                            {key:"counter", width: 45, sortable:true}
                        ];

                        var myDataTable = new YAHOO.widget.DataTable("myHottestTableContainer", myColumnDefs, myDataSource, {sortedBy:{key:"counter",dir:"asc"}});
                                      
                        </script>
                        	</div>
			</div>
					<script type="text/javascript">
					(function() {
						var tabView = new YAHOO.widget.TabView('demo');
					})();
					</script>
                    -->
			<div  id="poweredby" class="center">
            <p>Powered by <a target="_self" href="http://www.liip.ch">Liip AG</a>
			  -  <a target="_self" href="http://svn.liip.ch/repos/public/misc/liipto/trunk/"><strong>Code</strong></a> (Free as in beer and speech)
			  -  We do nothing bad with your data, promised</p>
            </div>
		    
            </div>
			 
		
			<div class="yui-b" id="poweredby">
			<!--
                <p>powered by</p>
				<p><a target="_self" href="http://www.liip.ch"><img src="../static/images/liip_logo_small.gif" alt="Liip AG" /></a></p>
				<p><a target="_self" href="http://svn.liip.ch/repos/public/misc/liipto/trunk/"><strong>Code</strong></a> (Free as in beer and speech)</p>
				<p>We do nothing bad with your data, promised</p>
                -->
			</div>
		</div>	
	</xsl:template>
	
</xsl:stylesheet>
