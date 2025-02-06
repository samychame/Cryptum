<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="myCryptum.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link rel="stylesheet" type="text/css" href="styles/update.css">
	<script type="text/javascript" src="jsFiles/validations.js"></script>
    <div class="login">
		<h1>Update user data</h1>
		<form id="form" action="update.aspx" method="post" name="form" onsubmit ="return checkUp()">
			<label for="email">Email of User</label>
			<input type="email" name="email" id="email" placeholder ="Enter Email" required >
			<div class="msg" id="msg"></div>
			<label for="options">What would you like to update?</label>
			<select name="options" id ="options">
				<option value="pswd">Password</option>
				<option value="fName">First Name</option>
				<option value="lName">Last Name</option>
			</select>
			<label for="data">Update</label>
			<input type="text" name="data" id ="data" required/>
			<div class ="msg" id="error"></div>
			<div class ="msg"><%=errormsg%></div>
			<button type="submit" name="submit" id="submit">Update</button>
		</form>
	</div>
</asp:Content>
