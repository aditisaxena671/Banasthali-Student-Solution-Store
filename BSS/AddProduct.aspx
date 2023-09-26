<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="BSS.AddProduct" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data.SqlClient" %>
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
                HttpPostedFile file_bill = Request.Files["BillImage"];
                con.Open();
                SqlCommand cmd;
                if (file_product != null && file_product.ContentLength > 0)
                {
                    if (file_bill != null && file_bill.ContentLength > 0)
                    {
                        cmd= new SqlCommand("insert into [Product](Product_name,Product_description,Product_price,Product_image,Product_bill,Product_age,Product_Category,Seller_Contact,Seller_id) values (@Product_name,@Product_description,@Product_price,@Product_image,@Product_bill,@Product_age,@Product_Category,@Seller_Contact,@Seller_id)",con);
                        cmd.Parameters.AddWithValue("@Product_name",ProductName.Value);
                        cmd.Parameters.AddWithValue("@Product_description",ProductDescription.Value);
                        cmd.Parameters.AddWithValue("@Product_price",ProductPrice.Value);
                        string ProductImage = Path.GetFileName(file_product.FileName);
                        file_product.SaveAs(Server.MapPath("~/Images/ProductImage/")+ProductImage);
                        cmd.Parameters.AddWithValue("@Product_image",ProductImage);
                        string BillImage = Path.GetFileName(file_bill.FileName);
                        file_bill.SaveAs(Server.MapPath("~/Images/BillImage/")+BillImage);
                        cmd.Parameters.AddWithValue("@Product_bill",BillImage);
                        cmd.Parameters.AddWithValue("@Product_age",ProductAge.Value);
                        cmd.Parameters.AddWithValue("@Product_Category",ProductCategory.Value);
                        cmd.Parameters.AddWithValue("@Seller_Contact",Convert.ToInt64(SellerContact.Value));
                        cmd.Parameters.AddWithValue("@Seller_id",Session["User_id"]);
                        

                    }
                    else
                    {
                        cmd= new SqlCommand("insert into [Product](Product_name,Product_description,Product_price,Product_image,Product_age,Product_Category,Seller_Contact,Seller_id) values (@Product_name,@Product_description,@Product_price,@Product_image,@Product_age,@Product_Category,@Seller_Contact,@Seller_id)",con);
                        cmd.Parameters.AddWithValue("@Product_name",ProductName.Value);
                        cmd.Parameters.AddWithValue("@Product_description",ProductDescription.Value);
                        cmd.Parameters.AddWithValue("@Product_price",ProductPrice.Value);
                        string ProductImage = Path.GetFileName(file_product.FileName);
                        file_product.SaveAs(Server.MapPath("~/Images/ProductImage/")+ProductImage);
                        cmd.Parameters.AddWithValue("@Product_image",ProductImage);
                        cmd.Parameters.AddWithValue("@Product_age",ProductAge.Value);
                        cmd.Parameters.AddWithValue("@Product_Category",ProductCategory.Value);
                        cmd.Parameters.AddWithValue("@Seller_Contact",Convert.ToInt64(SellerContact.Value));
                        cmd.Parameters.AddWithValue("@Seller_id",Session["User_id"]);
                    }
                }
                else
                {
                    if (file_bill != null && file_bill.ContentLength > 0)
                    {
                        cmd= new SqlCommand("insert into [Product](Product_name,Product_description,Product_price,Product_bill,Product_age,Product_Category,Seller_Contact,Seller_id) values (@Product_name,@Product_description,@Product_price,@Product_bill,@Product_age,@Product_Category,@Seller_Contact,@Seller_id)",con);
                        cmd.Parameters.AddWithValue("@Product_name",ProductName.Value);
                        cmd.Parameters.AddWithValue("@Product_description",ProductDescription.Value);
                        cmd.Parameters.AddWithValue("@Product_price",ProductPrice.Value);
                        string BillImage = Path.GetFileName(file_bill.FileName);
                        file_bill.SaveAs(Server.MapPath("~/Images/BillImage/")+BillImage);
                        cmd.Parameters.AddWithValue("@Product_bill",BillImage);
                        cmd.Parameters.AddWithValue("@Product_age",ProductAge.Value);
                        cmd.Parameters.AddWithValue("@Product_Category",ProductCategory.Value);
                        cmd.Parameters.AddWithValue("@Seller_Contact",Convert.ToInt64(SellerContact.Value));
                        cmd.Parameters.AddWithValue("@Seller_id",Session["User_id"]);
                        
                    }
                    else
                    {
                        cmd= new SqlCommand("insert into [Product](Product_name,Product_description,Product_price,Product_age,Product_Category,Seller_Contact,Seller_id) values (@Product_name,@Product_description,@Product_price,@Product_age,@Product_Category,@Seller_Contact,@Seller_id)",con);
                        cmd.Parameters.AddWithValue("@Product_name",ProductName.Value);
                        cmd.Parameters.AddWithValue("@Product_description",ProductDescription.Value);
                        cmd.Parameters.AddWithValue("@Product_price",ProductPrice.Value);
                        cmd.Parameters.AddWithValue("@Product_age",ProductAge.Value);
                        cmd.Parameters.AddWithValue("@Product_Category",ProductCategory.Value);
                        cmd.Parameters.AddWithValue("@Seller_Contact",Convert.ToInt64(SellerContact.Value));
                        cmd.Parameters.AddWithValue("@Seller_id",Session["User_id"]);
                    }
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
                <div class="typing-demo">Sell Product </div>
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
                <div style="display: flex;flex-direction: row;">
                <a href="MyProducts.aspx">
                    <button class="button-back" role="button">CANCEL</button>
                </a>
            </div>
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
                    <div class="user-box" style="margin-top: 20px;">
                        <input type="file" id="ProductImage" style="border-bottom: none !important;" runat="server"/>
                        <label style="color:#333 !important;">Product Image</label>
                    </div>
                    <div class="user-box">
                        <input type="file" id="BillImage" style="border-bottom: none !important;" runat="server"/>
                        <label style="color:#333 !important;">Product Bill Image</label>
                    </div>
                     <div class="user-box">
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
						PUT ON SALE
					 </button>
                </form>
            </div>

        </div>
    </div>
    
</div>
<!-- partial -->
  
</body>
</html>


