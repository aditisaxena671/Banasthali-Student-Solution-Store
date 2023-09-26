<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="BSS.DeleteProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Product</title>
 <meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./Login.css">
</head>
<body>
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
				<div class="typing-demo">!!! </div>
			</div>
		</div>
		<div class="circles">
			<i class="fa fa-circle-thin" aria-hidden="true"></i>
		</div>
	</div>
    <div class="bottom"> 
	    <div class="left">
			<div class="display-box"></div>
			
		</div>
		<div class="right">
			<div class="login-box">
				<form id="form1" method="post" runat="server">
					<div class="user-box" style="width:300px !important;">
						<h3 style="color:#ffb69e;">Are You sure You want to delete this product?</h3>
					</div>
					<div class="user-box" style="width:300px !important;">
					<button  class="button-submit" onserverclick="Back" runat="server" id="Button2">
						No, Take me back
					 </button>
					<button  class="button-submit" onserverclick="Submit" runat="server" id="Button1">
						Yes, delete it!!!
					 </button>
					</div>
				</form>
			</div>

		</div>
    </div>
	
</div>
</body>
</html>
