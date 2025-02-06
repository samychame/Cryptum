<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="cryptos.aspx.cs" Inherits="myCryptum.cryptos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles/cryptos.css">
    <h1>Cryptos to learn about</h1> 
    <div class="list top">  
        <a href ="bitcoin.aspx">    
        <div class ="coin">
                
                <img src="images/bitcoin.png" />
                <div class="price">
                    <h3>$<span id ="bitcoin"></span></h3>
                    <p>Bitcoin</p>
                </div>
            </div>
        </a>
        <a href ="ethereum.aspx">
            <div class ="coin">
                
                <img src="images/ethereum.png" />
                <div class="price">
                    <h3>$<span id ="ethereum"></span></h3>
                    <p>Ethereum</p>
                </div>
                
            </div>
       </a>
        <a href ="solana.aspx">
            <div class ="coin">
                
                <img src="images/solana.png" />
                <div class="price">
                    <h3>$<span id ="solana"></span></h3>
                    <p>Solana</p>
                </div>
                
            </div>
        </a>
    </div>
    <div class ="list bottom"
    <br />
        <a href ="cardano.aspx">
            <div class ="coin">
                <img src="images/cardano.png" />
                <div class="price">
                    <h3>$<span id ="cardano"></span></h3>
                    <p>Cardano</p>
                </div>
                
            </div>
        </a>
        <a href ="doge.aspx">   
            <div class ="coin">
                
                <img src="images/dogecoin.png" />
                <div class="price">
                    <h3>$<span id ="dogecoin"></span></h3>
                    <p>Dogecoin</p>
                </div>
                
            </div>
        </a >
    </div>
    <script src="jsFiles/prices.js"></script>
</asp:Content>
