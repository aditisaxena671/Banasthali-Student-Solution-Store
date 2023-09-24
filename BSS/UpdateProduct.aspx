<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="BSS.UpdateProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>Sell Product</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./AddProduct.css">
    
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
                <div class="typing-demo">Updation </div>
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
              <a href="MyProducts.aspx">
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
                        <input id="ProductPrice" type="text" runat="server" required=""/>
                        <label>Price</label>
                    </div>
                    <div class="user-box">
                    Category: &nbsp; &nbsp;
                    <select name="ProductCategory" id="ProductCategory"  runat="server">
                            <option value="Cycle">Cycle</option>
                            <option value="Fan">Fan</option>
                            <option value="Storage">Storage</option>
                            <option value="Buckets & Tub">Buckets & Tub</option>
                            <option value="Notes">Notes</option>
                            <option value="Other">Other</option>
                    </select>
                    </div>
                    
                     <div class="user-box" style="margin-top:10px !important;">
                        <input id="ProductAge" type="text" runat="server" required=""/>
                        <label>How long the product has been used?</label>
                    </div>
                    <div class="user-box">
                        <input id="SellerContact" type="text" runat="server" required=""/>
                        <label>Mobile number</label>
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

