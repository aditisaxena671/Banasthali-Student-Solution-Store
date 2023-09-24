<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNotice.aspx.cs" Inherits="BSS.AddNotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Submit Notice Page</title>
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet" />
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
			integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
			crossorigin="anonymous" />
		<link rel="stylesheet" href="./submitNotice.css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
			integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
			crossorigin="anonymous" referrerpolicy="no-referrer" />
	
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
				</div>
			</div>
			<!-- partial -->


			<div class="box-form">
				<div class="top">
					<div class="circles">
						<i class="fa fa-circle-thin" aria-hidden="true"></i>
						<i class="fa fa-circle-thin" aria-hidden="true"></i>
					</div>
					<div class="squares">
						<i class="fa fa-square-o" aria-hidden="true"></i>
						<i class="fa fa-square-o" aria-hidden="true"></i>
						<div class="square-box">
							<div class="typing-demo">Choose Your Options!</div>
						</div>
					</div>
					<div class="circles">
						<i class="fa fa-circle-thin" aria-hidden="true"></i>
					</div>
				</div>
				<div class="bottom">
					<div class="left">
						<div class="overlay">

							<p>*Enter Type 1 For Notices of CMS Departments*</p>
							<p>*Enter Type 2 For Notices of Commerce & Management Departments*</p>
							<p>*Enter Type 3 For Notices of Legal Departments*</p>
							<p>*Enter Type 4 For Notices of Humanities Departments*</p>
							<p>*Enter Type 5 For Notices of Mayukh Departments*</p>
							<p>*Enter Type 6 For Notices of Navotkarsh Departments*</p>
							<p>*Enter Type 7 For Notices of Adhyay Departments*</p>
							<p>*Enter Type 8 For Notices of Opening And Closing Ceremony Departments*</p>
						</div>
					</div>
					<div class="right">
						<div class="login-box">
						<div class="user-box">
							
							
							<input id="Notice_title" type="text" runat="server" required="" />
							<label>Notice Title</label>
						</div>
						
						<div class="user-box">
							
							<input id="Notice_type" type="text" runat="server" required="" />
							<label>Notice Type</label>
						</div>
						
						<div class="user-box">
							
							<input id="Notice_details" type="text" runat="server" required="" />
							<label>Notice Details</label>
						</div>
						
						<div  class="user-box">
							
							<input id="Notice_issue_date" type="text" runat="server" required="" />
							<label>Notice Date</label>
						</div>
						
						<div  class="user-box">
							
							<input id="Event_venue" type="text" runat="server"  />
							<label>Event Venue (Can Be Empty)</label>

						</div>
						
						<div  class="user-box">
							
							<input id="Event_date" type="text" runat="server"  />
							<label>Event Date (Can Be Empty)</label>

						</div>
						<asp:Button OnClick="Button1_Click" class="button-submit" ID="Button1" runat="server" Text="SUBMIT" />


					</div>
				</div>
			</div>
			</div>


		    
        </form>
	</body>

</html>