<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grooming.aspx.cs" Inherits="BSS.Grooming" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Grooming Page</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" />
	<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet" />
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
	<link rel="stylesheet" href="./Grooming.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
</head>
<body>
    <form id="form1" runat="server">
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

      <!-- side nave bar-->
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
                <asp:Button ID="Button10" class="button-74" OnClick="Button10_Click" runat="server" Text="Logout" style="width:150px"/>


				
			</ul>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button5" class="button-74" runat="server" Text="Back" style="width: 200px;
    background-color: #fdf6c3;
    border: 2px solid #ffb69e;
    border-radius: 30px;
    color: #ffb69e;
    cursor: pointer;
    display: inline-block;
    font-weight: 600;
    font-size: 18px;
    padding: 0 18px;
    line-height: 40px;
    text-align: center;
    text-decoration: none;
    user-select: none;
    -webkit-user-select: none;
    touch-action: manipulation;
    margin: 20px;
	margin-left:10%"  OnClick="Button5_Click" />
		</div>
     </div>   

      <div class="cards_wrap">
		<div class="card_item">
			<div class="card_inner">
				
				<div class="role_name">Mehndi Making</div>
				<br/><br/>
				<div class="film">Students Provide Different looks of mehndi Designs and also make according to Customer.</div>
                <br/><br/>
                <asp:Button ID="Button4" class="button-74" runat="server" Text="Provider &#8680;" style="color:#e36686; font-size: 30px;" OnClick="Button4_Click"  />
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				
				<div class="role_name">Eyebrow Making</div>
				<br/><br/>
				<div class="film">Students provide the service to give shape to your eyebrows.</div>
                <br/><br/>
                <asp:Button ID="Button1" class="button-74" runat="server" Text="Provider &#8680;" style="color:#e36686; font-size: 30px;" OnClick="Button1_Click"  />
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				
				<div class="role_name">Skin Care</div>
				<br/><br/>
				<div class="film">Students provide different facial for customer face.</div>
                <br/><br/>
                <asp:Button ID="Button2" class="button-74" runat="server" Text="Provider &#8680;" style="color:#e36686; font-size: 30px;" OnClick="Button2_Click"  />
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				
				<div class="role_name">Makeup</div>
				<br/><br/>
				<div class="film">Students provide the Makeup Service.</div>
                <br/><br/>
                <asp:Button ID="Button3" class="button-74" runat="server" Text="Provider &#8680;" style="color:#e36686; font-size: 30px;" OnClick="Button3_Click"  />
			</div>
		</div>
        
      </div>
    </form>
</body>
</html>
