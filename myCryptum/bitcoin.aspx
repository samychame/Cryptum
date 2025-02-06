<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="bitcoin.aspx.cs" Inherits="myCryptum.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles/coins.css">
    <div class="text-content">
        <h1>Bitcoin</h1>
        <p class="price">Price:$<span id ="bitcoin"></span></p>
         <div class ="text">
            <p class ="content">
                Bitcoin is a decentralized digital currency that operates without a central bank or single administrator.
                One of the primary benefits of Bitcoin is that it provides greater financial privacy and security compared 
                to traditional financial systems. Transactions are encrypted and recorded on a public ledger, known as the
                blockchain, making them resistant to tampering and fraud. Additionally, Bitcoin is not subject to government 
                regulation, allowing users to transact freely across borders and without restrictions. Furthermore, Bitcoin's 
                finite supply, capped at 21 million units, makes it resistant to inflation and provides a hedge against economic
                uncertainty. Overall, Bitcoin offers a new and innovative way to conduct transactions, with the potential to revolutionize the financial industry.
            </p>
        </div>
    </div>
    <!-- TradingView Widget BEGIN -->
    <div class="tradingview-widget-container">
      <div id="tradingview_59117"></div>
      <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/symbols/BTCUSD/?exchange=BITSTAMP" rel="noopener" target="_blank"><span class="blue-text">Bitcoin chart</span></a> by TradingView</div>
      <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
      <script type="text/javascript">
          //graph settings
          new TradingView.widget(
              {
                  "autosize": true,
                  "symbol": "BITSTAMP:BTCUSD",
                  "timezone": "Asia/Jerusalem",
                  "theme": "dark",
                  "style": "1",
                  "locale": "en",
                  "toolbar_bg": "#f1f3f6",
                  "enable_publishing": false,
                  "range": "YTD",
                  "details": true,
                  "container_id": "tradingview_59117"
              }
          );
      </script>
      
    </div>
    <!-- TradingView Widget END -->
    <script type ="text/javascript">
        // Function to fetch and display the current price of Bitcoin
        var btc = document.getElementById("bitcoin");

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
            // Once the response is received, update the HTML element with the current price of Bitcoin
            btc.innerHTML = response.bitcoin.usd;
        });

    </script>
</asp:Content>
