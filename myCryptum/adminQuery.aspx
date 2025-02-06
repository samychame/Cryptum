<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="adminQuery.aspx.cs" Inherits="myCryptum.adminQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link rel="stylesheet" type="text/css" href="styles/adminQuery.css">
	<h1>Manage Database</h1>
	<div class ="button-container">
		<button class ="button" id="update-btn" onclick="window.location.href='update.aspx';">Update</button>
		<button  class ="button" id="delete-btn" onclick="window.location.href='delete.aspx';">Delete</button>
	</div>
	<div class="container-stat">
			<h1>Statistics</h1>
			<p class="hits">Number of accounts deleted: <span ><%=deleted %></span></p>
	</div>


</asp:Content>
