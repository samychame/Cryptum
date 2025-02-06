<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="doge.aspx.cs" Inherits="myCryptum.doge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles/coins.css">
    <div class="text-content">
        <h1>Dogecoin</h1>
        <p class="price">Price:$<span id ="doge"></span></p>
         <div class ="text">
            <p class ="content">
                Originally created as a lighthearted meme-inspired cryptocurrency, Dogecoin has gained significant popularity and a devoted community.
                While it started as a joke, Dogecoin has garnered attention due to its strong community support and use in various charitable initiatives. 
                As an investment, Dogecoin offers speculative potential, driven by its growing acceptance among merchants and increased mainstream awareness.
                However, it's important to note that Dogecoin's value largely relies on market sentiment and social media influence rather than fundamental factors, making it a high-risk investment option.
            </p>
        </div>
    </div>
    <!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_e7b70"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets</span></a> on TradingView</div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
      new TradingView.widget(
          {
              "width": 980,
              "height": 610,
              "symbol": "BITTREX:DOGEUSD",
              "timezone": "Asia/Jerusalem",
              "theme": "dark",
              "style": "1",
              "locale": "en",
              "toolbar_bg": "#f1f3f6",
              "enable_publishing": false,
              "range": "YTD",
              "save_image": false,
              "details": true,
              "container_id": "tradingview_e7b70"
          }
      );
  </script>
</div>
<!-- TradingView Widget END -->
    <script type ="text/javascript">
        var btc = document.getElementById("doge");
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
            // Once the response is received, update the HTML element with the current price of Dogecoin
            btc.innerHTML = response.dogecoin.usd;
        });
    </script>
</asp:Content>
