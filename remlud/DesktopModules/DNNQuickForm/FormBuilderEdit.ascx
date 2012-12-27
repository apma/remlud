<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="FormBuilderEdit.ascx.vb" Inherits="DNNQuickForm.FormBuilderEdit" %>

<table width="100%">
    <tr>
        <td valign="top" style="width:150px;">
        <asp:DataGrid id="dgrdForms" DataKeyField="FullName" runat="server" BorderStyle="None" AutoGenerateColumns="False"
	BorderColor="#CCCCCC" BorderWidth="1px" BackColor="White" CellPadding="4" GridLines="Horizontal"
	ForeColor="Black" CssClass="Normal">
	<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CC3333"></SelectedItemStyle>
	<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#333333"></HeaderStyle>
	<FooterStyle ForeColor="Black" BackColor="#CCCC99"></FooterStyle>
	<Columns>
		<asp:ButtonColumn Text="Select" DataTextField="Name" HeaderText="Forms" CommandName="Select"></asp:ButtonColumn>
		<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
	</Columns>
	<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="White"></PagerStyle>
</asp:DataGrid>
        
        </td>
        <td valign="top">
            <div>Form Name:</div>
            <div><asp:TextBox id="txtFormName" Width="90%" runat="server" CssClass="NormalTextBox"></asp:TextBox></div>
            <div>Form:</div>
            <div>
            <asp:textbox id="txtForm" runat="server" TextMode="MultiLine" Width="90%" Height="300px"></asp:textbox>
            </div>
            <div>
            <asp:linkbutton id="cmdSave" BorderStyle="None" runat="server" CssClass="dnnPrimaryAction" CausesValidation="False">Save</asp:linkbutton>

<asp:linkbutton id="cmdCancel" BorderStyle="None" runat="server" CssClass="dnnSecondaryAction" CausesValidation="False">Cancel</asp:linkbutton>&nbsp;<asp:linkbutton id="cmdDelete" BorderStyle="None" runat="server" CssClass="CommandButton" CausesValidation="False"
	Visible="False">Delete</asp:linkbutton>
            </div>
          
            
        </td>
    </tr>
	
</table>

