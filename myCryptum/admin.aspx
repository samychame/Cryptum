<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="myCryptum.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="styles/admin.css">
	<div class="container">
		<h1>Hello administrator</h1>
		<p>What would you like to do?</p>
		<div class="button-container">
			<a href="showTable.aspx"><button class="button">list of clients</button></a>
			<a href="adminQuery.aspx"><button class="button">Manage Database</button></a>
		</div>
		<div class="container-stat">
			<h1>Statistics</h1>
			<p class="hits">Number of visitors today: <span ><%=hits %></span></p>
		</div>

	</div>
</asp:Content>
