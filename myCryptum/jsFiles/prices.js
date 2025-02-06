// Get references to HTML elements
var btc = document.getElementById("bitcoin");
var eth = document.getElementById("ethereum");
var sol = document.getElementById("solana");
var car = document.getElementById("cardano");
var doge = document.getElementById("dogecoin");

// Define the AJAX request settings
var settings = {
    "async": true,
    "scrossDomain": true,
    "url": "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin%2Cethereum%2Csolana%2Ccardano%2Cdogecoin&vs_currencies=usd",
    "method": "GET",
    "headers": {}
};

// Send the AJAX request
$.ajax(settings).done(function (response) {
    // Update the HTML content with the retrieved data
    btc.innerHTML = response.bitcoin.usd;
    eth.innerHTML = response.ethereum.usd;
    sol.innerHTML = response.solana.usd;
    car.innerHTML = response.cardano.usd;
    doge.innerHTML = response.dogecoin.usd;
});
