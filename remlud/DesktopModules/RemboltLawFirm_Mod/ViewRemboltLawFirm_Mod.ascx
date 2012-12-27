<%@ Control Language="C#" Inherits="RemboltLawFirm_Mod.ViewRemboltLawFirm_Mod"
    AutoEventWireup="true" CodeBehind="ViewRemboltLawFirm_Mod.ascx.cs" %>
     <div id="dynamic_area">
        <h2 class="subheads">Practice Areas:</h2>
        <ul class="bullets biolist">
            <% if (ProfileDisplay.Practices != null)
               {
                   foreach (var practice in ProfileDisplay.Practices)
                   {%>
                        
                   
            <li><a href=""><%= practice.PracticeName %></a></li>
            <% }
               } %>
            
        </ul>
        <h2 class="subheads">Admissions:</h2>
        <ul class="bullets biolist">
            <li>Test 1</li>
            <li>test 2</li>
        </ul>
        <h2 class="subheads">Education:</h2>
        <ul class="bullets">
            <li>Univerity of Nebraska at Kearney, B.S. Political Science and Public Administration, Cum Laude, 1996</li>
            <li>Univerity of Nebraska at Kearney, B.S. Political Science and Public Administration, Cum Laude, 1996</li>
        </ul>
        
    </div>
    <div id="side_bar">
        <img class="biopic" src="/Portals/_default/Skins/RemboltLawFirm_MD/Media/Images/<%=ProfileDisplay.ImageLink %>" />
        <div class="namedisplay">
            <%= ProfileDisplay.NameDisplay  %>
            <br />
            Rembolt Ludtke LLP
            <a href="mailto:<%=ProfileDisplay.Email %>"><%=ProfileDisplay.Email%></a>
        </div>
        <div class="medialink">
             <img src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/icon-vcard.png" />
            <a href="/Portals/_default/Skins/RemboltLawFirm_MD/Media/Vcard">Download V-Card</a>
        </div>
        <div class="medialink">
            <img src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/icon-video.png" />
            <a href="/Portals/_default/Skins/RemboltLawFirm_MD/Media/Video">Play Name's Video Bio</a>
        </div>
    </div>
        
    