<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ethereum.aspx.cs" Inherits="myCryptum.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles/coins.css">
    <div class="text-content">
        <h1>Ethereum</h1>
        <p class="price">Price:$<span id ="eth"></span></p>
         <div class ="text">
            <p class ="content">
               Ethereum is a decentralized, open-source blockchain platform that revolutionized the crypto landscape by introducing smart contracts and enabling the development of decentralized applications.
                As the second-largest cryptocurrency by market capitalization, Ethereum offers diverse investment opportunities. 
                Its robust ecosystem, consisting of thousands of projects and tokens, showcases its potential for innovation and adoption.
                With the upcoming Ethereum 2.0 upgrade, which aims to enhance scalability and reduce transaction costs, Ethereum is expected to maintain its position as a leading platform for decentralized finance, non-fungible tokens, and other blockchain-based applications.
            </p>
        </div>
    </div>
    <!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_1db89"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets</span></a> on TradingView</div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
      new TradingView.widget(
          {
              "width": 980,
              "height": 610,
              "symbol": "BITSTAMP:ETHUSD",
              "timezone": "Asia/Jerusalem",
              "theme": "dark",
              "style": "1",
              "locale": "en",
              "toolbar_bg": "#f1f3f6",
              "enable_publishing": false,
              "range": "YTD",
              "save_image": false,
              "details": true,
              "container_id": "tradingview_1db89"
          }
      );
  </script>
</div>
<!-- TradingView Widget END -->
    <!-- TradingView Widget END -->
    <script type ="text/javascript">
        var btc = document.getElementById("eth");
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
            // Once the response is received, update the HTML element with the current price of Ethereum
            btc.innerHTML = response.ethereum.usd;
        });
    </script>
</asp:Content>

