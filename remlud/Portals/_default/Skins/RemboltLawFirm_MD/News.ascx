<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css" Condition="LT IE 8" UseSkinPath="true"/>


<div id="wrapper">
    <!--#include file="Includes/header.ascx" -->
    <div id="page">
        <div id="page_wrapper">
            <div id="breadcrumb">
                <dnn:BREADCRUMB runat="server" ID="DNNbreadcrumb" Separator=" &raquo; " RootLevel="0" />
            </div>
            <div id="pc_main_content">
                <h1>R|L NEWS</h1>
                <div id="content_holder">
                    <div id="newsleft">
                        <div id="ContentPane" runat="server">
                        </div>
                    </div>
                    <div id="newsright">
                        <div id="SidebarPane" runat="server" />
                    </div>
                    <div class="clearbottom"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--#include file="Includes/footer.ascx" -->



<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="jquery.cycle.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />
<dnn:DnnJsInclude ID="DnnJsInclude3" runat="server" FilePath="DNNMega/jquery.dnnmega.debug.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="DNNMega/dnnmega.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude4" runat="server" FilePath="Scripts/global.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude5" runat="server" FilePath="Scripts/content.js" PathNameAlias="SkinPath" />

