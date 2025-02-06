<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="myCryptum.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="styles/contactUs.css">
	<script src ="jsFiles/contact.js" type ="text/javascript"></script>
	<script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
	</script>
	<script type="text/javascript">
		(function () {
            emailjs.init("zqMerkBF1sdlx5PG3");
		})();
    </script>
    <div class="login">
		<h2>GET IN TOUCH</h2>
		<div class="inputs" >
			<input type ="text" id ="name" placeholder ="Your Name"  required />
			<input type="email" name="email" id="email" placeholder ="Your Email" required >
			<textarea id ="message" rows ="4" placeholder="How can we help you?"></textarea>
			<div class="msg" id="msg"></div>
			<button class="send" onclick="SendMail()">Send</button>
		</div>
	</div>

        
</asp:Content>
