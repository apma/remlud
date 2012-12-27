<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<div class="dnnForm">
	<div class="dnnFormItem small">
		<dnn:label runat="server" Text="First Name" HelpText="Please enter your first name in the space provided" Suffix=":" />
        <div class="smallinputstart"></div><asp:textbox id="Name" runat="server" CssClass="dnnFormRequired" /><div class="smallinputend"></div>
        <asp:RequiredFieldValidator ID="reqName" ControlToValidate="Name" cssclass="dnnFormMessage dnnFormError" runat="server" Text="First Name is required" />
	</div>

	<div class="dnnFormItem small">
		<dnn:label runat="server" Text="Last Name" HelpText="Please enter your last name in the space provided" Suffix=":" />
		 <div class="smallinputstart"></div><asp:textbox id="LastName" runat="server" CssClass="dnnFormRequired" /><div class="smallinputend"></div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Name" cssclass="dnnFormMessage dnnFormError" runat="server" Text="Last Name is required" />
	</div>
    <div class="dnnFormItem long">
		<dnn:label runat="server" Text="Business/Organization" HelpText="Please enter your business name in the space provided" Suffix=":" />
        <div class="smallinputstart"></div><asp:textbox id="BusinessName" runat="server"  /><div class="smallinputend"></div>
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Name" cssclass="dnnFormMessage dnnFormError" runat="server" Text="Name is recommended" />--%>
	</div>
	<div class="dnnFormItem long">
		<dnn:label runat="server" Text="Phone" HelpText="Please enter your name in the space provided" Suffix=":" />
        <div class="smallinputstart"></div><asp:textbox id="Phone" runat="server" CssClass="dnnFormRequired" /><div class="smallinputend"></div>
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Name" cssclass="dnnFormMessage dnnFormError" runat="server" Text="Name is required" />--%>
	</div>
	<div class="dnnFormItem long">
		<dnn:label runat="server" Text="Email" HelpText="Please enter your email address in the space provided" Suffix=":" />
		 <div class="smallinputstart"></div><asp:textbox id="Email" runat="server" CssClass="dnnFormRequired" /><div class="smallinputend"></div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Email" cssclass="dnnFormMessage dnnFormError" runat="server" Text="Email Address is required" />
	</div>
    <div class="dnnFormItem">
		<dnn:label runat="server" Text="Message" HelpText="Please send us your comments" Suffix=":" />
		<div class="tallinputstart"></div><textarea id="Message" rows="8" runat="server"></textarea><div class="tallinputend"></div>
	</div>
	<div class="dnnFormItem captcha">
		<dnn:label runat="server" Text="Human Test" HelpText="We want to make sure you aren't a robot." Suffix=":" />
		<dnn:captchacontrol  id="ctlCaptcha" captchawidth="130" captchaheight="40" runat="server" errorstyle-cssclass="NormalRed"  />
	</div>
    <p class="italics">Please be advised that by law, correspondence cannot be considered confidential until an attorney-client relationship has been established. For this reason, we request that you do not send any confidential information to any attorney or staff member until the Firm's intake procedures are completed.</p>
    <div style="margin-left:30%;" class="rlbutton">
	    <asp:placeholder id="plhButton" runat="server" />
    </div>
</div>














