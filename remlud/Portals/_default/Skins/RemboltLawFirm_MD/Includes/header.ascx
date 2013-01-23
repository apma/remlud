<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/MaDsearch.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<dnn:STYLES runat="server" ID="StylesIE9" Name="IE9Sheet" StyleSheet="ieskin.css" Condition="IE 9" UseSkinPath="true"/>
<dnn:STYLES runat="server" ID="StylesIE8" Name="IE8" StyleSheet="ie8skin.css" Condition="IE 8" UseSkinPath="true"/>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-29737190-1']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
<div id="header">
    <div id="header_content">

       
        <div id="searcharea">
            <div id="searchRL">
                <dnn:SEARCH ID="searchTrial" runat="server" />
            </div>
        </div>
        <div id="logo">
            <dnn:LOGO ID="logo1" runat="server" />           
        </div>
        
        <div id="social_media">
            <% if(HttpContext.Current.User.Identity.IsAuthenticated) {%>
            <dnn:USER ID="USER1" runat="server" CssClass="bold"/>
            <dnn:LOGIN ID="Login1" runat="server" />
               <%};%>     
            <a href="http://www.facebook.com/RemboltLaw" target="_blank"><img src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/icon-facebook.png" alt="facebook page for Rembolt Ludtke Lawyers"/></a>
            <a href="http://twitter.com/#!/RemboltLaw" target="_blank"><img src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/icon-twitter.png" alt="Rembolt Ludtke tweets about company achievement"/></a>
            <a href="http://www.linkedin.com/company/rembolt-ludtke-llp" target="_blank"><img src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/icon-linkedin.png" alt="Rembolt Ludtke Lawfirm LinkedIn profile"/></a>
        </div>
        
    </div>
    <div id="main_nav">
        
        <div id="megamenu">
            <% if(PortalSettings.ActiveTab.TabID == 55) { %>
            <div class="home_icon selected">
                <a href="/" ></a>
            </div>
            <%} else {%>
            <div class="home_icon unselected">
                <a href="/" ></a>
            </div>
            <%};%> 
            <dnn:MENU ID="MENU1" MenuStyle="DNNMega" NodeSelector="*,0,1" runat="server" />
           
        </div>
    </div>
</div>