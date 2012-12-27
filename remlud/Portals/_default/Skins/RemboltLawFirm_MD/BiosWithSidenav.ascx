<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css" Condition="LT IE 8" UseSkinPath="true"/>

<%
 var pageName = PortalSettings.ActiveTab.TabName;
 var pageId = PortalSettings.ActiveTab.TabID;
 %>


<div id="wrapper">
    <!--#include file="Includes/header.ascx" -->
    <div id="page">
        <div id="page_wrapper">
            <div id="breadcrumb">
                <dnn:BREADCRUMB runat="server" ID="DNNbreadcrumb" Separator=" &raquo; " RootLevel="0"/>
            </div>
            <div id="RLAdminPane" runat="server" />
            <div id="side_nav">
                <ddr:MENU MenuStyle="/Portals/_default/Skins/RemboltLawFirm_MD/DNNMega/Templates/ULTokens"
                    NodeSelector="RootChildren" runat="server" /> 
            </div>
            
            <div class="left_shadow"></div>
            <div id="page_content">
                
                <div id="pc_main_content">
                    <h1><%= pageName  %></h1>
                    <div id="content_holder">
                        <div id="ContentPane" runat="server"  />
                       
                    
                    <div class="clearbottom"></div>
                    </div>
                </div>
                
            </div>
            <div class="right_shadow"></div>
        </div>
    </div>
   
</div>
<div class="clearbottom"></div>
<!--#include file="Includes/footer.ascx" -->


<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />
<dnn:DnnJsInclude ID="DnnJsInclude3" runat="server" FilePath="DNNMega/jquery.dnnmega.debug.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="DNNMega/dnnmega.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude2" runat="server" FilePath="ContentWithSidenav.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude4" runat="server" FilePath="Scripts/global.js" PathNameAlias="SkinPath" />

<script type="text/javascript" >

    (function ($) {
        // your initialization code here...
        var sidenavTitle;
        var sidenavActual = "<%= pageName %>";
        var pageId = <%= pageId %>;

        $(document).ready(function () {
           
            $('#side_nav ul li a span').each(function (i) {
                //if same don't collapse ul
                sidenavTitle = $(this).text();

                if (sidenavTitle != sidenavActual) {
                    $(this).parent().next().hide();
                }
            });
           //account for children of RootChildren
           $('a[menu=' + pageId + ']').parent().parent().show();
            
        });
    })(jQuery);
    
    
</script>