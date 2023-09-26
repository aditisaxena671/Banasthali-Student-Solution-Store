﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFoundProducts.aspx.cs" Inherits="BSS.MyFoundProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<<head runat="server">
    <meta charset="UTF-8">
  <title>My Products</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./MyProducts.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  
</head>
<body>
  
  <div class="wrapper">
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    <div><span class="dot"></span></div>
    </div>

      <div class="nav">
        <div class="Sidebar">
      <h2>Menu</h2>
      <ul>
				<li><a href="homePage.aspx"><i class="fa-solid fa-house"></i>Home</a></li>
				<li><a href="ServiceHome.aspx"><i class="fa-brands fa-servicestack"></i>Services</a></li>
				<li><a href="AllSellProducts.aspx"><i class="fa-sharp fa-solid fa-cart-shopping"></i>Products On Sell</a></li>
				<li><a href="MyProducts.aspx"><i class="fa-sharp fa-solid fa-cart-shopping"></i>My products</a></li>
				<li><a href="LostFound"><i class="fa-solid fa-person-circle-question"></i>Lost & Found</a></li>
				<li><a href="MyLostFound.aspx"><i class="fa-solid fa-person-circle-question"></i>My Lost & Found</a></li>
				<li><a href="notice.aspx"><i class="fa-solid fa-check"></i>Notices</a></li>
				<li><a href="submitNotice.aspx"><i class="fa-sharp fa-solid fa-people-group"></i>Submit Notice</a></li>
				<li><a href="Creater.aspx"><i class="fa-sharp fa-solid fa-laptop"></i>Creators</a></li>
				<li><a href="#"><i class="fa-solid fa-address-card"></i>About</a></li>
				<li><a href="#"><i class="fa-solid fa-address-book"></i>Contact Us</a></li>


				
			</ul>
    </div>
     </div> 
     <div class="topnav">
        <div class="search-container">
          <div class="link">
            <a href="AddFoundProduct.aspx">ADD</a>
          </div>
            <form id="form1" runat="server">
              <input type="text" placeholder="Search.." name="search">
              <button type="submit"><i class="fa fa-search"></i></button>
            </form>
          </div>
     </div>
     <div class="bottom">
        <table id="keywords" cellspacing="0" cellpadding="0">
            <thead>
              <tr>
                <th style="border-radius: 5px 0px 0px 5px;"><span>Item Name</span></th>
                <th><span>Place Found At</span></th>
                <th><span>Found On:</span></th>
                <th><span></span></th>
                <th><span></span></th>
                <th style="border-radius: 0px 5px 5px 0px;"><span></span></th>
              </tr>
            </thead>
            <tbody>
                <%=getProductData()%> 
            </tbody>
          </table>
     </div>

</body>
</html>