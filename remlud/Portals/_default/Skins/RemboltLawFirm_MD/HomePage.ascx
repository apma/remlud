<%@ Control language="C#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css" Condition="LT IE 8" UseSkinPath="true"/>
<dnn:DnnCssInclude FilePath="~/Resources/Shared/Scripts/nivoslider/nivo-slider.css" runat="server" />

<div id="wrapper">
    <!--#include file="Includes/header.ascx" -->
    <div id="page">
        <div id="top_center">
            <div class="left_shadow"></div>
                <div class="slider-wrapper">
                            <div id="sliderContentPane" runat="server"></div>
                        
                </div>
            <div class="right_shadow"></div>
        </div>
               
        <div class="clear"></div>
        
        <div id="contact_banner">
            <div class="contact_info">
                PHONE: <span>402.475.5100</span> | EMAIL: <a href="mailto:hello@remboltlawfirm.com"><span>hello@remboltlawfirm.com</span></a>
            </div>
        </div>
        <div id="middle_center">
            <div class="left_shadow"></div>
            
                <!-- Left -->
                <div id="mc_left">
                    <div id="mc_content_left">
                     <div id="ContentPane" runat="server"  ></div>
                    </div>
                </div>

                <!-- Right -->
                <div id="mc_right">
                    <div id="mc_content_right">
                        
                        <div id="RightContentPane" runat="server" />
                    </div>
                </div>
            
            <div class="right_shadow"></div>
        </div>
        <div class="homeclear"></div>
        
    </div>
    
</div>

<div class="clearbottom"></div>
<!--#include file="Includes/footer.ascx" -->
<dnn:DnnJsInclude FilePath="~/Resources/Shared/Scripts/nivoslider/jquery.nivo.slider.js" runat="server" />
<dnn:DnnJsInclude ID="DnnJsInclude4" runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />
<dnn:DnnJsInclude runat="server" FilePath="DNNMega/jquery.dnnmega.debug.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="DNNMega/dnnmega.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="Scripts/global.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="Scripts/home.js" PathNameAlias="SkinPath" />




