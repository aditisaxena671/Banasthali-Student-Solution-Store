<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceForm.aspx.cs" Inherits="BSS.ServiceForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Form </title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" />
	<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet" />
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <link rel="stylesheet" href="./ServiceForm.css" />

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
<!-- partial:index.partial.html -->
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
				<div class="typing-demo">Service Approval Form </div>
			</div>
		</div>
		<div class="circles">
			<i class="fa fa-circle-thin" aria-hidden="true"></i>
		</div>
	</div>
    <div class="bottom"> 
	    <div class="left">
			<div class="display-box"></div>
			<div style="display: flex;flex-direction: row;">
				
				<asp:Button ID="Button1" class="button-back" runat="server" Text="Take me BACK!" />
				
                <asp:Button ID="Button3" class="button-back" runat="server" Text="Already Registered" OnClick="Button3_Click" />
			</div>
		</div>
		<div class="right">
			<div class="login-box">
				<div class="user-box">
						<input id="Service_id" type="number" runat="server" required=""/>
						<label>Service_ID</label>
					</div>
					<div class="user-box">
						<input id="Service_name" type="text" runat="server" required=""/>
						<label>Service Name</label>
					</div>
					<div class="user-box">
						<input id="Service_description" type="text" runat="server" required=""/>
						<label>Service Description</label>
					</div>
					<div class="user-box">
						<input id="Service_cost" type="number" runat="server" required=""/>
						<label>Service Cost</label>
					</div>
					 
					<div class="user-box">
						<input type="file" id="Past_work" style="border-bottom: none !important;" runat="server"/>
						<label style="color:#333 !important;">Past Work</label>
					</div>
					<div class="user-box">
						<input type="file" id="Certificates" style="border-bottom: none !important;" runat="server"/>
						<label style="color:#333 !important;">Certificates</label>
					</div>
					
					<br />
					<div class="user-box">
						<span id="Display" runat="server"></span>
					</div>
                    
					<asp:Button ID="Button2" class="button-submit" runat="server" Text="Submit" OnClick="Button2_Click"  />
				
			</div>

		</div>
    </div>
	
</div>
		</form>
</body>
</html>
