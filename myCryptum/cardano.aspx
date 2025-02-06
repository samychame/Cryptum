<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="cardano.aspx.cs" Inherits="myCryptum.cardano" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles/coins.css">
    <div class="text-content">
        <h1>Cardano</h1>
        <p class="price">Price:$<span id ="cardano"></span></p>
         <div class ="text">
            <p class ="content">
                Cardano is a blockchain platform that aims to provide a secure and scalable infrastructure for the development of decentralized applications and smart contracts.
                Founded by a team of academics and engineers, Cardano focuses on scientific research and a peer-reviewed approach to deliver high-quality blockchain solutions.
                With its emphasis on sustainability, interoperability, and security, Cardano offers potential investment opportunities. 
                The platform's unique proof-of-stake consensus algorithm and layered architecture aim to address scalability and energy efficiency challenges.
                Cardano's long-term vision includes financial inclusion, decentralized governance, and building a secure infrastructure for emerging markets.
            </p>
        </div>
    </div>
    <!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_4267f"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets</span></a> on TradingView</div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
      new TradingView.widget(
          {
              "width": 980,
              "height": 610,
              "symbol": "KRAKEN:ADAUSD",
              "timezone": "Asia/Jerusalem",
              "theme": "dark",
              "style": "1",
              "locale": "en",
              "toolbar_bg": "#f1f3f6",
              "enable_publishing": false,
              "range": "YTD",
              "save_image": false,
              "details": true,
              "container_id": "tradingview_4267f"
          }
      );
  </script>
</div>
<!-- TradingView Widget END -->
    <script type ="text/javascript">
        var btc = document.getElementById("cardano");
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
            // Once the response is received, update the HTML element with the current price of Cardano
            btc.innerHTML = response.cardano.usd;
        });
    </script>
</asp:Content>
