<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditEmployees.ascx.cs" Inherits="RemboltLawFirm_Mod.EditEmployees" %>
<div id="rladmin">
 <div class="floatleft"><h3>Personnel Info</h3></div>
    <div class="floatright"><a href="#">[Hide]</a></div>
    <hr />
    <div class="gray expandable">
        
    <table>
    <tr>
        <td>
            <div class="rladmin_input">
                <!-- DisplayName auto-pop from page name. Format: First M. Last -->
                <asp:Label id="DisplayName" name="DisplayName">DNN Page(DisplayName)</asp:Label>
                <asp:TextBox ID="DisplayNameInput" name="DisplayName_Input" ReadOnly="true"  runat="server"  />
            </div>
            
        </td>
        <td>
            <div class="rladmin_input">
                <asp:Label ID="FirstName" name="FirstName" runat="server">First Name</asp:Label>
                <asp:TextBox ID="FirstNameInput" name="FirstNameInput" runat="server" />
            </div>
        </td>
        <td>
            <div class="rladmin_input">
                <asp:Label ID="LastName" name="LastName" runat="server" >Last Name</asp:Label>
                <asp:TextBox ID="LastNameInput" name="LastNameInput" runat="server" />
            </div> 
        </td>
        
    </tr>
    <tr>
    <td>
            <div class="rladmin_input">
                <!-- DisplayName auto-pop from page name. Format: First M. Last -->
                <asp:Label id="DNNPage" name="DNNPage" runat="server">DNN Page ID :</asp:Label>
                <asp:Textbox id="DNNPageInput" name="DNNPage_Input" readonly="true" runat="server" />
            </div> 
        </td>
       <td>
            <div class="rladmin_input">
                <!-- Company related title -->
                <asp:Label ID="Title" name="Title" runat="server">Title</asp:Label>
                <asp:TextBox ID="TitleInput" name="TitleInput" runat="server" />
            </div>
       </td>
       <td>
            <div class="rladmin_input">
                <!-- Email -->
                <asp:Label ID="Email" name="Email" runat="server">Email</asp:Label>
                <asp:TextBox ID="EmailInput" name="EmailInput" runat="server" />
            </div> 
        </td>

    </tr>
    <tr>
        <td>
            <div class="rladmin_input">
                <!-- DisplayName auto-pop from page name. Format: First M. Last -->
                <asp:Label id="VcardLink" name="VcardLink" runat="server">VcardLink</asp:label>
                <asp:TextBox id="VcardLinkInput" name="VcardLinkInput" runat="server" />
            </div> 
        </td>
       <td>
            <div class="rladmin_input">
                <!-- Company related title -->
                <asp:Label ID="ImageLink" name="ImageLink" runat="server">ImageLink</asp:Label>
                <asp:TextBox ID="ImageLinkInput" name="ImageLinkInput" runat="server" />
            </div>
       </td>
       <td>
            <div class="rladmin_input">
                <!-- Email -->
                <asp:Label ID="VideoLink" name="VideoLink" runat="server">VideoLink</asp:Label>
                <asp:TextBox ID="VideoLinkInput" name="VideoLinkInput" runat="server" />
            </div> 
        </td>
    </tr>
    </table>
    
    </div>
    <div class="floatleft"><h3>Assign Practice</h3></div>
    <div class="floatright"><a href="#">[Hide]</a></div>
    <hr />
    <div class="floatleft gray expandable">
        <asp:ListBox ID="ListPractices" runat="server" SelectionMode="Multiple" Rows="10"></asp:ListBox>
    </div>
    <div class="floatright gray expandable" >
        <asp:ListBox ID="EmployeePractices" runat="server" SelectionMode="Multiple" Rows="10"></asp:ListBox>
        <asp:Button ID="RemovePractice" OnClick="RemovePractice_Click" runat="server" Text="Remove Practice" name="RemovePractice" />
    </div>
    <div class="clear"></div>
    <asp:Button ID="UpdateEmployee" OnClick="UpdateEmployee_Click"  runat="server" Text="Update Profile" name="Update" />
</div>