<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="solana.aspx.cs" Inherits="myCryptum.solana" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles/coins.css">
    <div class="text-content">
        <h1>Solana</h1>
        <p class="price">Price:$<span id ="sol"></span></p>
         <div class ="text">
            <p class ="content">
                Solana is a high-performance blockchain platform designed for decentralized applications (dApps) and crypto projects. With its fast transaction processing and low fees, Solana has gained attention as a scalable solution for blockchain applications. 
                Its unique architecture and proof-of-history consensus algorithm enable high throughput and support a wide range of decentralized finance (DeFi) applications. Solana's focus on speed, scalability, and affordability positions it as a promising investment opportunity in the crypto market.
                It aims to address the limitations of existing blockchains and provide a robust infrastructure for decentralized applications.
            </p>
        </div>
    </div>
   <!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_5a443"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets</span></a> on TradingView</div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
      new TradingView.widget(
          {
              "width": 980,
              "height": 610,
              "symbol": "COINBASE:SOLUSD",
              "timezone": "Asia/Jerusalem",
              "theme": "dark",
              "style": "1",
              "locale": "en",
              "toolbar_bg": "#f1f3f6",
              "enable_publishing": false,
              "range": "YTD",
              "save_image": false,
              "details": true,
              "container_id": "tradingview_5a443"
          }
      );
  </script>
</div>
<!-- TradingView Widget END -->
    <script type ="text/javascript">
        var btc = document.getElementById("sol");
        // Configuration for the API request
        var settings = {
            "async": true,
            "scrossDomain": true,
            "url": "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin%2Cethereum%2Csolana%2Ccardano%2Cdogecoin&vs_currencies=usd",
            "method": "GET",
            "headers": {}
        }
        // Make an AJAX request to fetch the data from the API
        $.ajax(settings).done(function (response) {
            // Once the response is received, update the HTML element with the current price of solana
            btc.innerHTML = response.solana.usd;
        });
    </script>
</asp:Content>
