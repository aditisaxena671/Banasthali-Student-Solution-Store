<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Creater.aspx.cs" Inherits="BSS.Creater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creater</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./Creater.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     
</head>
  <body>
      <form id="form1" runat="server">
    <div class="wrapper">
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
      <div>
        <span class="dot"></span>
      </div>
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
                <asp:Button ID="Button10" class="button-74" OnClick="Button10_Click" runat="server" Text="Logout" style="width:150px"/>


				
			</ul>
		</div>
     </div> 

    <div class="cards_wrap" style="margin-left:170px;">
      
      <div class="card">
        <img src="./Images/Creater/Tanya.jpg" alt="Tanya" style="width:60%; margin-left:25%;margin-top:5%; height:50%" />
        <h1>Tanya Dalal</h1>
        <p>MCA</p>
      </div>

        <div class="card">
        <img src="./Images/Creater/Aditi.jpg" alt="Aditi" style="width:60%; margin-left:25%;margin-top:5%; height:50%" />
        <h1>Aditi Saxena</h1>
        <p>MCA</p>
      </div>

        <div class="card">
        <img src="./Images/Creater/Unnati.jpg" alt="Unati" style="width:50%; margin-left:25%;margin-top:5%; height:50%" />
        <h1>Unnati Tiwari</h1>
        <p>MCA</p>
         </div>
       <div class="card">
        <img src="./Images/Creater/Shrishti.jpg" alt="Shrishti" style="width:50%; margin-left:25%;margin-top:5%; height:50%" />
        <h1>Shrishti Kumari</h1>
        <p>MCA</p>
      </div>
      

      
    
</div>
  </form>
  </body>
</html>
