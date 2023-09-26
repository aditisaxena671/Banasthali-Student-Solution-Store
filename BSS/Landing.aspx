<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="BSS.Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8">
  <title>Banasthali Student Solution Store</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"/>
  <link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
	<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
	<link rel="stylesheet" href="./Landing.css"/>
	<script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
    </script>
</head>
<body>
	<div class="notification-boxes">
		<div class="notification">
			<i class="fa fa-comments" aria-hidden="true" style="font-size: 30px;"></i>
			<div class="message">
				<h5>One notification: ROOMIE</h5>
				<h6>OMG! LOST my BAG in NAV MANDIR! IDK what to do!!!</h6>
			</div>
			<div class="reply">
				<div class="reply1">
					<p>IDK BRO!</p>
				</div>
				<div class="reply2">
					<p>TRY BS3</p>
				</div>
			</div>
		</div>
		<div class="notification">
			<i class="fa fa-bell" aria-hidden="true" style="font-size: 30px;"></i>
			<div class="message">
				<h5>THIS USER MIGHT SELL HER OLD ITEMS ON BS3</h5>
				<h6>but still trying hostel-to-hostel selling!</h6>
			</div>
			<div class="reply">
				<div class="reply1">
					<p>BOO!</p>
				</div>
				<div class="reply2">
					<p>BOOOO!</p>
				</div>
			</div>
		</div>
	</div>
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
				<div class="typing-demo">Banasthali Student Solution Store </div>
			</div>
		</div>
		<div class="circles">
			<i class="fa fa-circle-thin" aria-hidden="true"></i>
		</div>
	</div>
    <div class="bottom">
	    <div class="left">
		    <div class="overlay">
		        <h1>BS3</h1>
		        <p>Banasthalite? We got you covered!</p>
		    </div>
        </div>
	    <div class="right">
			<a href="Login.aspx">
				<button class="button-74" role="button">Login</button>
			</a>
			<p>-------------------OR-------------------</p>
			<a href="SignUp.aspx">
				<button class="button-74" role="button">Sign Up</button>
			</a>
		</div>
    </div>
	
</div>
<!-- partial -->
  
</body>
</html>
