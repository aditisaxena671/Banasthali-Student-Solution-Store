<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BSS.Login" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Login</title>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./Login.css">

	<script language="C#" runat="server">
		protected void Submit(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			{
				con.Open();
				String s = "";
				SqlCommand cmd= new SqlCommand("select  * from [Student] where Student_email=@email and Student_password=@password ",con);
				cmd.Parameters.AddWithValue("@email",UserEmail.Value);
				cmd.Parameters.AddWithValue("@password",UserPassword.Value);
				SqlDataReader dr = cmd.ExecuteReader ();
				while (dr.Read())
				{
					s = dr[0].ToString();

				}
				dr.Close();
				if(s=="")
				{
					
						Display.InnerHtml = "Invalid User";
						return;
				
				}
				else
				{
					Session["LoggedIn"] = 1;
					Session["Role"] = 0;
					Session["User_id"] = s;
					Response.Redirect("HomePage.aspx");
				}

				con.Close();
			}
		}
	</script>

</head>
<body>
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
				<div class="typing-demo">Login </div>
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
				<a href="Landing.aspx">
					<button class="button-back" role="button">Take me BACK!</button>
				</a>
				<a href="SignUp.aspx">
					<button class="button-back" role="button">SIGN UP</button>
				</a>
			</div>
		</div>
		<div class="right">
			<div class="login-box">
				<form id="form1" method="post" runat="server">
					<div class="user-box">
						<input id="UserEmail" type="text" runat="server" required=""/>
						<label>Email</label>
					</div>
					<div class="user-box">
						<input id="UserPassword" type="password" runat="server" required=""/>
						<label>User Password</label>
					</div>
					<div class="user-box">
						<h5>
							<a href="ForgotPassword.aspx" style="text-decoration:none; color: #ffb69e;">
								Forgot Password?
							</a>
						</h5>
					</div>
					<div class="user-box">
						<span id="Display" runat="server"></span>
					</div>
					<button  class="button-submit" onserverclick="Submit" runat="server" id="Button1">
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

