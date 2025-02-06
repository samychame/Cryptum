<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="myCryptum.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	<link rel="stylesheet" type="text/css" href="styles/about.css">
    <div class ="heading">
        <h1>About Us</h1>
        <p></p>
    </div>
    <div class="about-section">
        
        <p>Cryptocurrency has been around for over a decade, but it wasn't until recently that it started gaining mainstream attention. Many investors have been drawn to cryptocurrencies due to their potential for high returns, diversification, and decentralization. If you're interested in investing in cryptocurrencies, you've come to the right place. Cryptum is a website dedicated to teaching people how to invest in cryptocurrency.

        Before you dive in, it's important to understand what cryptocurrencies are and how they work. Cryptocurrencies are digital assets that use cryptography to secure and verify transactions. They operate independently of central banks and governments, which means that they are decentralized and offer greater privacy and security. However, cryptocurrencies are also highly volatile, and their value can fluctuate rapidly.
        </p>
        <p class="hidden-content">
            To get started with investing in cryptocurrencies, the first step is to educate yourself about them. Cryptum offers a range of educational resources, including articles, videos, and tutorials, to help you understand the technology and potential risks and rewards of investing in cryptocurrencies.<br />

            The next step is to open an account with a cryptocurrency exchange. Exchanges are platforms that allow you to buy, sell, and store cryptocurrencies. There are many exchanges to choose from, and each has its own features, fees, and security measures. At Cryptum, we can help you find an exchange that fits your needs and preferences.<br />

            Once you've opened an account, you'll need to fund it with fiat currency (like USD or EUR) or another cryptocurrency. Some exchanges also allow you to earn interest on your crypto holdings or participate in staking and other investment activities.<br />

            One of the most important aspects of cryptocurrency investing is portfolio management. Diversification is key, and you should aim to spread your investments across multiple cryptocurrencies and other assets. You should also consider your risk tolerance, investment goals, and time horizon when constructing your portfolio.<br />

            At Cryptum, we offer a range of tools and resources to help you manage your cryptocurrency investments. Our portfolio tracker allows you to monitor the performance of your holdings, set price alerts, and track market trends. We also offer guides and tutorials on various investment strategies and techniques.<br />

            In conclusion, investing in cryptocurrencies can be a rewarding but risky endeavor. By educating yourself, choosing the right exchange, diversifying your portfolio, and managing your investments effectively, you can increase your chances of success. Cryptum is here to help you every step of the way, with educational resources, tools, and support to make your cryptocurrency investing journey a success.<br />
        </p>
        <button class="show-more-btn">Read More</button>
        <button class="show-less-btn">Read Less</button>

    </div>
    <div class ="image-container">
        <img src ="images/crypto.jfif" />
    </div>

  <script>
      // Function to handle the read more and read less functionality
      const readMoreBtn = document.querySelector('.show-more-btn');
      const readLessBtn = document.querySelector('.show-less-btn');
      const hiddenContent = document.querySelector('.hidden-content');

      // Event listener for the read more button
      readMoreBtn.addEventListener('click', function () {
          // When clicked, display the hidden content, hide the read more button, and show the read less button
          hiddenContent.style.display = 'block';
          readMoreBtn.style.display = 'none';
          readLessBtn.style.display = 'block';
      });

      // Event listener for the read less button
      readLessBtn.addEventListener('click', function () {
          // When clicked, hide the hidden content, show the read more button, and hide the read less button
          hiddenContent.style.display = 'none';
          readMoreBtn.style.display = 'block';
          readLessBtn.style.display = 'none';
      });

  </script>



</asp:Content>
