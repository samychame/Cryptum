<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="myCryptum.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript" src="jsFiles/validations.js"></script>
<link rel="stylesheet" type="text/css" href="styles/delete.css">

    <div class="login">
		<h1>Delete User</h1>
		<form id="form" action="delete.aspx" method="post" name="form" onsubmit ="return validDel()">
			<label for="email">User's email</label>
			<input type="email" name="email" id="email" placeholder ="Enter Email" required >
			<div class="msg" id="msg"></div>
			<div class="msg"><%= errormsg %></div>
			<button type="submit" name="submit" id="submit">Delete</button>
		</form>
	</div>
</asp:Content>
