<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="myCryptum.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="styles/register.css">
    <script type="text/javascript" src="jsFiles/validations.js"></script>
    <div class="register">
		<form id="form" action="register.aspx" method="post" name="form" onsubmit="return validReg()">
            <h1>Register</h1>
            <div class="input">
                <label for="first-name">First Name</label><br />
                <input type="text" id="fName" name="fName" required placeholder="First Name" ">
              </div>
            <div class="msg" id="errFname"></div>


            <div class="input">
                <label for="last-name">Last Name</label><br />
                <input type="text" id="lName" name="lName" required placeholder="Last Name" >
            </div>
            <div class="msg" id="errLname"></div>


            <div class="input">
                <label for="email">Email</label><br />
                <input type="email" id="email" name="email" required placeholder="Email" ">
            </div>
            <div class="msg" id="errEmail"></div>

            <label for="sex">Sex</label>
            <div class ="sex">
                <label for="sex" class ="radio">
                    <input type="radio" name="gender" value="male" required><span class="gender">Male</span>
                    <input type="radio" name="gender" value="female"><span>Female</span>
                </label>
            </div>
            <br />
            <div class ="input">
                <label for="year">Year of Birth</label>
                <input type ="number" name ="year" placeholder="YYYY" min="1900" max="2023" />
            </div>
            <div class="input">
                <label for="password">Password</label><br />
                <input type="password" id="password" name="password" required placeholder="Password" >
            </div>
            <div class="msg" id="errPassword2"></div>
            <div class="input">
                <label for="password">Confirm password</label><br />
                <input type="password" id="password2" name="password2" required placeholder="Confirm password" >
            </div>
            <div class="msg" id="errPassword"></div>
            <div class="msg"> <%=errormsg%> </div>
            <button type="submit" name="submit" id="submit" >Register</button>
        </form>
    </div>
</asp:Content>
