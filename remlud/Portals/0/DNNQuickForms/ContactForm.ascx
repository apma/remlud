<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<div class="dnnForm">
	<div class="dnnFormItem small">
		<span style="color:#9d2d17;float:left; display:inline;">* </span><dnn:label runat="server" Text="First Name" HelpText="Please enter your first name in the space provided" Suffix=":"></dnn:label>
        <div class="smallinputstart"></div><asp:textbox id="Name" runat="server" CssClass="dnnFormRequired" /><div class="smallinputend"></div>
        <asp:RequiredFieldValidator ID="reqName" ControlToValidate="Name" cssclass="dnnFormMessage dnnFormError" runat="server" Text="First Name is required" />
	</div>

	<div class="dnnFormItem small">
		<span style="color:#9d2d17;float:left; display:inline;">* </span><dnn:label runat="server" Text="Last Name" HelpText="Please enter your last name in the space provided" Suffix=":" ></dnn:label>
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
		<span style="color:#9d2d17;float:left; display:inline;">* </span><dnn:label runat="server" Text="Email" HelpText="Please enter your email address in the space provided" Suffix=":" ></dnn:label>
		 <div class="smallinputstart"></div><asp:textbox id="Email" runat="server" CssClass="dnnFormRequired" /><div class="smallinputend"></div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Email" cssclass="dnnFormMessage dnnFormError" runat="server" Text="Email Address is required" />
	</div>
    <div class="dnnFormItem">
		<span style="color:#9d2d17;float:left; display:inline;">* </span><dnn:label runat="server" Text="Message" HelpText="Please send us your comments" Suffix=":" />
		<div class="tallinputstart"></div><textarea id="Message" rows="8" runat="server"></textarea><div class="tallinputend"></div>
	</div>
	<div class="dnnFormItem captcha">
		<dnn:label runat="server" Text="Human Test" HelpText="We want to make sure you aren't a robot." Suffix=":" />
		<dnn:captchacontrol  id="ctlCaptcha" captchawidth="130" captchaheight="40" runat="server" errorstyle-cssclass="NormalRed"  />
	</div>
    
    <div class="rlbutton">
	    <asp:placeholder id="plhButton" runat="server" />
    </div>
</div>
















