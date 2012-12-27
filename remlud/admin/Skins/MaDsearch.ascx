<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.UI.Skins.Controls.Search" CodeFile="MaDsearch.ascx.cs" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" %>
<span id="ClassicSearch" runat="server" visible="false">
  <asp:RadioButton ID="WebRadioButton" runat="server" CssClass=" hide" GroupName="Search" />
  <asp:RadioButton ID="SiteRadioButton" runat="server" CssClass=" hide" GroupName="Search" />

  <div class="inputholder">
  <asp:TextBox ID="txtSearch" runat="server" MaxLength="255" EnableViewState="False"></asp:TextBox>&nbsp;
 </div> 
 <div class="buttonholder">
  <asp:LinkButton ID="cmdSearch" runat="server" CausesValidation="False" CssClass="buttonholder"></asp:LinkButton>
  </div>
</span>

<div id="DropDownSearch" runat="server" class="SearchContainer" visible="true">
  <div class="SearchBorder">
  <div id="SearchIcon" class="SearchIcon">
    <dnn:DnnImage ID="downArrow" runat="server" IconKey="Action" />
  </div>
  <asp:TextBox ID="txtSearchNew" runat="server" CssClass="SearchTextBox" MaxLength="255" EnableViewState="False"></asp:TextBox>&nbsp;
  <ul id="SearchChoices" class="hide">
    <li id="SearchIconSite"><%=SiteText%></li>
    <li id="SearchIconWeb"><%=WebText%></li>
  </ul>
  </div>
  <asp:LinkButton ID="cmdSearchNew" runat="server" CausesValidation="False" CssClass="SkinObject SearchButton" Text="wat"></asp:LinkButton>
</div>
