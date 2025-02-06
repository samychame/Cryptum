<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="myCryptum.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<link rel="stylesheet" type="text/css" href="styles/loginstyle.css">
<script type="text/javascript" src="jsFiles/validations.js"></script>
	<div class="login">
		<h1>Login</h1>
		<form id="form" action="login.aspx" method="post" name="form" onsubmit ="return validate()">
			<label for="email">Email</label>
			<input type="email" name="email" id="email" placeholder ="Enter Email" required >
			<div class="msg" id="msg"></div>
			<label for="password">Password</label>
			<input type="password" name="password" id ="password" placeholder="Enter Password" required>
			<div class="msg" id="msgPswd"></div>
			<div class =" msg"><%=errormsg%></div>
			<button type="submit" name="submit" id="submit">Login</button>
		</form>
	</div>

</asp:Content>
