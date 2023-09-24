<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddLostProduct.aspx.cs" Inherits="BSS.WebForm1" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
  <title>Lost Product</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./AddLostProduct.css">
    <script language="C#" runat="server">
         protected void Page_Load(object sender, EventArgs e)
         {
             if (Session["User_id"].ToString() == "-1")
             {
                 Response.Redirect("Landing.aspx");
             }
         }
         protected void Submit(object sender, EventArgs e)
         {
             SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
             {
                 HttpPostedFile file_product = Request.Files["ProductImage"];
                 con.Open();
                 SqlCommand cmd;
                 if (file_product != null && file_product.ContentLength > 0)
                 {
                      cmd= new SqlCommand("insert into [Lost_item](Product_name,Product_description,Place,Product_image,Date_time,Student_id) values (@Product_name,@Product_description,@Place,@Product_image,@Date_time,@Student_id)",con);
                        cmd.Parameters.AddWithValue("@Product_name",ProductName.Value);
                        cmd.Parameters.AddWithValue("@Product_description",ProductDescription.Value);
                        cmd.Parameters.AddWithValue("@Place",ProductPlace.Value);
                        string ProductImage = Path.GetFileName(file_product.FileName);
                        file_product.SaveAs(Server.MapPath("~/Images/LostItem/")+ProductImage);
                        cmd.Parameters.AddWithValue("@Product_image",ProductImage);
                        cmd.Parameters.AddWithValue("@Date_time",ProductDateTime.Value);
                        cmd.Parameters.AddWithValue("Student_id",Session["User_id"]);
                 }
                 else
                 {
                        cmd= new SqlCommand("insert into [Lost_item](Product_name,Product_description,Place,Date_time,Student_id) values (@Product_name,@Product_description,@Place,@Date_time,@Student_id)",con);
                        cmd.Parameters.AddWithValue("@Product_name",ProductName.Value);
                        cmd.Parameters.AddWithValue("@Product_description",ProductDescription.Value);
                        cmd.Parameters.AddWithValue("@Place",ProductPlace.Value);
                        cmd.Parameters.AddWithValue("@Date_time",ProductDateTime.Value);
                        cmd.Parameters.AddWithValue("Student_id",Session["User_id"]);
                 }
                  cmd.ExecuteNonQuery();
                  Display.InnerHtml = "Product Added";
                  con.Close();
             }
         }
    </script>
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
						SUBMIT
                     </button>
                </form>
            </div>

        </div>
    </div>
    
</div>
<!-- partial -->
  
</body>
</html>


