<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<dnn:STYLES runat="server" ID="StylesIE" Name="IEAny" StyleSheet="ieskin.css" Condition="LTE IE 9" UseSkinPath="true"/>
<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css" Condition="LT IE 8" UseSkinPath="true"/>


<%
 var pageName = PortalSettings.ActiveTab.TabName;
 var pageId = PortalSettings.ActiveTab.TabID;
 var breadTest = TabController.CurrentPage.BreadCrumbs[0];
 ;
 %>


<div id="wrapper">
	<!--#include file="Includes/header.ascx" -->
	<div id="page">
		<div id="page_wrapper">
			<div id="breadcrumb">
				<dnn:BREADCRUMB runat="server" ID="DNNbreadcrumb" Separator=" &raquo; " RootLevel="0"/>
			</div>
			
			<div id="side_nav">
				<ddr:MENU MenuStyle="/Portals/_default/Skins/RemboltLawFirm_MD/DNNMega/Templates/ULTokens"
					NodeSelector="RootChildren" runat="server" /> 
			</div>
			
			<div class="left_shadow"></div>
			<div id="page_content">
				
				<div id="pc_main_content">
					<h1><%= pageName  %></h1>
					<div id="content_holder">
						<div id="dynamic_area">
							<div id="ContentPane" runat="server"  ></div>
							<div id="videoclick" href="" style="width:440px;height:320px;" ></div>
							<a id="vidback" href="<%=DotNetNuke.Common.Globals.NavigateURL(pageId) %>">Click to go Back</a>
						</div>
						<div id="side_bar">
							<div id="SidebarPane" runat="server" ></div>
						</div>
					
					<div class="clear"></div>
					</div>
				</div>
				
			</div>
			<div class="right_shadow"></div>
		</div>
	</div>
   
</div>
<div class="clearbottom"></div>
<!--#include file="Includes/footer.ascx" -->

 <% if (PortalSettings.ActiveTab.ParentId == 89 ) { %>
		<dnn:DnnJsInclude ID="DnnJsInclude5" runat="server" FilePath="Scripts/flowplayer-3.2.11.min.js" PathNameAlias="SkinPath" />
<%} %>   

<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />
<dnn:DnnJsInclude ID="DnnJsInclude3" runat="server" FilePath="DNNMega/jquery.dnnmega.debug.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="DNNMega/dnnmega.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude2" runat="server" FilePath="ContentWithSidenav.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude4" runat="server" FilePath="Scripts/global.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude6" runat="server" FilePath="Scripts/jQueryRotate.2.2.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="Scripts/sidenav_20130113.js" PathNameAlias="SkinPath" />
<% if (PortalSettings.ActiveTab.TabID == 116) { %>
	   <dnn:DnnCssInclude ID="DnnCssInclude3" runat="server" FilePath="contact.css" PathNameAlias="SkinPath" />
	   <dnn:DnnJsInclude ID="DnnJsInclude7" runat="server" FilePath="Scripts/contact.js" PathNameAlias="SkinPath" />
	   <%} %>

	   

<script type="text/javascript" >

	(function ($) {
		// Sidenav
		var sidenavTitle;
		var sidenavActual = "<%= pageName %>";
		var pageId = <%= pageId %>;        
		
		
		var setRootSelected = function() {
			//Need to hack the stupid selection 
			//Retrieve the root anchor text from the breadcrumb
			var parentLink = $('#dnn_DNNbreadcrumb_lblBreadCrumb a:first-child').attr('href');
			//Search the DDR menu for anchor href match
			var findParent = $('ul.dnnmega').find("[href='" + parentLink + "']");

			//Make the LI selected.
			if (findParent != undefined)
				findParent.closest('li').addClass('mmSelected');
			
		};
		
		var selectedParent = function () {
			$('ul.sidenavChild li.selected').parents('li.toplevel').addClass('parentSelected');
		};

	    $(document).ready(function() {
	        $('#side_nav ul li a span').each(function(i) {
	            //if same don't collapse ul
	            sidenavTitle = $(this).text();

	            if (sidenavTitle != sidenavActual) {
	                $(this).parent().next().hide();
	            }
	        });
	        //account for children of RootChildren
	        $('a[menu=' + pageId + ']').parent().parent().show();

	        setRootSelected();

	        //Arrows
	        var toplevelSelect = $('li.toplevel').hasClass('selected');

	        if (!toplevelSelect)
	            selectedParent();
	        else
	            $('li.toplevel.selected').addClass('parentSelected');

	        // Show arrow on selected elements
	        $('li.toplevel:has(ul) div.blue-arrow').addClass('showinline');
	        // Select the selected arrow to rotate

	        var toplevelParentSelected = $('li.toplevel').hasClass('parentSelected');

	        console.log(toplevelParentSelected);
	        console.log(toplevelSelect);

	        if (toplevelSelect || toplevelParentSelected)
	            $('li.toplevel.parentSelected a div.showinline').rotate(90);


	        //Homemade accordion
	        $('.expandable ul').hide();
	        $('.expandable h2.practiceheader').click(function() {
	            var self = $(this);
	            $(self).siblings('ul').toggle();
	        });
	    });
	})(jQuery);
	
	
</script>