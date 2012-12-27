<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="FormBuilderOptions.ascx.vb" Inherits="DNNQuickForm.FormBuilderOptions" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="dnnForm">
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Choose Form" HelpText="Select the form you wish to use" />
        <asp:dropdownlist id="drpForms" runat="server"></asp:dropdownlist>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Submit Label" HelpText="Enter the text you would like displayed on the Submit Button" />
        <asp:TextBox id="txtSubmitText" runat="server">Submit</asp:TextBox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Submit CSS" HelpText="Enter the css class you would like to be added to the submit button" />
        <asp:TextBox id="txtSubmitCSSClass" runat="server">dnnPrimaryAction</asp:TextBox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Send To" HelpText="Enter email address where you would like the contact form to be sent.  This will default to the email address of the site administrator" />
        <asp:textbox id="txtTo" runat="server"></asp:textbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Send CC" HelpText="Enter any email addresses that you would like to receive a copy of the contact form." />
        <asp:textbox id="txtCC" runat="server"></asp:textbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Send BCC" HelpText="Enter any email addresses that you would like to receive a blind copy of the contact form." />
        <asp:textbox id="txtBCC" runat="server"></asp:textbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Subject" HelpText="Enter the subject you would like to appear on the email that is sent." />
        <asp:textbox id="txtSubject" runat="server"></asp:textbox>
    </div>
   <div class="dnnFormItem">
        <dnn:label runat="server" Text="Email Header" HelpText="Enter any text that you would like to appear at the beginning of each email." />
        <asp:textbox id="txtHeader" runat="server" Width="376px" TextMode="MultiLine"
				Height="56px"></asp:textbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Email Footer" HelpText="Enter any text that you would like to appear at the end of each email." />
        <asp:textbox id="txtFooter" runat="server" Width="376px" TextMode="MultiLine"
				Height="56px"></asp:textbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Include IP Address" HelpText="Select this option if you would like to capture the IP Address of the user submitting the form." />
        <asp:checkbox id="chkAddIPAddress" runat="server"></asp:checkbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Include User Agent" HelpText="Select this option if you would like to capture the browser details of the user submitting the form." />
        <asp:checkbox id="chkAddUserAgent" runat="server"></asp:checkbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Include Timestamp" HelpText="Select this option if you would like to include a timestamp with each message." />
        <asp:checkbox id="chkAddTimestamp" runat="server"></asp:checkbox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Message to Display" HelpText="You can enter a custom message that will be displayed to user after the message is submitted." />
        <asp:TextBox id="txtThankyou" runat="server" Width="376px" TextMode="MultiLine" Height="72px"></asp:TextBox>
    </div>
    <div class="dnnFormItem">
        <dnn:label runat="server" Text="Redirect to Page" HelpText="You can enter a URL that user will be redirected to after submitting the form." />
        	<asp:TextBox id="txtRedirect" runat="server" Width="368px"></asp:TextBox>
    </div>
</div>

