<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateLostProduct.aspx.cs" Inherits="BSS.UpdateLostProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
  <title>Update Lost Product</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./AddLostProduct.css">
    
</head>
<body>
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
                <div class="typing-demo">Lost your item? </div>
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
                <a href="MyLostProducts.aspx">
                    <button class="button-back" role="button">CANCEL</button>
                </a>
            </div>
        </div>
        <div class="right">
            <div class="login-box">
                <form id="form1" method="post" runat="server">
                    <div class="user-box">
                        <input id="ProductName" type="text" runat="server" required=""/>
                        <label>Product name</label>
                    </div>
                    <div class="user-box">
                        <textarea id="ProductDescription"  runat="server">Product Description... </textarea>
                    </div>
                    <div class="user-box">
                        <input id="ProductPlace" type="text" runat="server" required=""/>
                        <label>Where did you lost the product?</label>
                    </div>
                    <div class="user-box" style="margin-top: 20px;">
                        <input type="file" id="ProductImage" style="border-bottom: none !important;" runat="server"/>
                        <label style="color:#333 !important;">Product Image</label>
                    </div>
                    
                     
                    <div class="user-box">
                        <input id="ProductDateTime" type="datetime-local"  style="margin-top: 20px;" runat="server"   required=""/>
                        <label >When did you lost the product?</label>
                    </div>
                    <br />
                    <div class="user-box">
                        <span id="Display" runat="server"></span>
                    </div>
                    <button onserverclick="Submit" class="button-submit" runat="server" id="Button1">
						UPDATE
                     </button>
                </form>
            </div>

        </div>
    </div>
    
</div>
<!-- partial -->
  
</body>
</html>


