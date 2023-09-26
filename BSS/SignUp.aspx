<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BSS.SignUp" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Sign Up</title>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./SignUP.css">

	<script language="C#" runat="server">
		protected void Submit(object sender, EventArgs e)
		{
			//------------------------ User Name validation---------------------------------------
			Regex r = new Regex("^[a-zA-Z ]+$");
			if (!r.IsMatch(UserName.Value))
			{
				Display.InnerHtml = "Invalid Username";
				UserName.Focus();
				return;
			}
			//------------------------------------------------------------------------------------

			//------------------------Password validation-----------------------------------------

			if (UserPassword.Value.Length < 8)
			{
				Display.InnerHtml = "Password length should be atleast 8 characters";
				UserPassword.Focus();
				return;
			}
			int flag=0;
			string specialCh = @"%!@#$%^&*()?/>.<,:;'\|}]{[_~`+=-" + "\"";
			char[] specialChArray = specialCh.ToCharArray();
			foreach (char ch in specialChArray)
			{
				if (UserPassword.Value.Contains(ch))
					flag=1;
			}
			if (!UserPassword.Value.Any(char.IsLower)||!UserPassword.Value.Any(char.IsUpper)||flag==0)
			{
				Display.InnerHtml = "Password should contain atleast 1 uppercase letter, 1 lowercase letter and a special character";
				UserPassword.Focus();
				return;
			}

			if(UserPassword.Value!=ConfirmPassword.Value)
			{
				Display.InnerHtml = "Password mismatched";
				UserPassword.Focus();
				return;
			}

			//----------------------------------------------------------------------------------

			//----------------------------------------Email Validation--------------------------

			String theEmailPattern = @"^[\w!#$%&'*+\-/=?\^_`{|}~]+(\.[\w!#$%&'*+\-/=?\^_`{|}~]+)*"
								   + "@"
								   + @"((([\-\w]+\.)+[a-zA-Z]{2,4})|(([0-9]{1,3}\.){3}[0-9]{1,3}))\z";
			if(!Regex.IsMatch(UserEmail.Value, theEmailPattern))
			{
				Display.InnerHtml = "Not a valid email";
				UserEmail.Focus();
				return;
			}
			//----------------------------------------------------------------------------------
			//----------------------------------------Phone number Validation--------------------------

			String theContactPattern = @"^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$";
			if(!Regex.IsMatch(UserContact.Value, theContactPattern))
			{
				Display.InnerHtml = "Not a valid phone number";
				UserContact.Focus();
				return;
			}
			
			SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			{
				con.Open();
				int flag1 = 0;
				SqlCommand cmd = new SqlCommand("select  * from [Student] where Student_email=@email", con);
				cmd.Parameters.AddWithValue("@email", UserEmail.Value);
				SqlDataReader dr = cmd.ExecuteReader();
				while (dr.Read())
				{
					flag1 = 1;
				}
				if (flag1 == 1)
				{
					Display.InnerHtml = "This email id is already in use";
					con.Close();
					return;
				}
			}
			con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BSSS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			{
				HttpPostedFile file = Request.Files["UserImage"];

				con.Open();
				SqlCommand cmd;

				if(file!=null && file.ContentLength>0)
				{
					cmd= new SqlCommand("insert into [Student](Student_college_id,Student_name,Student_email,Student_password,Student_contact,Student_image) values (@id,@name,@email,@password,@contact,@image)",con);
					cmd.Parameters.AddWithValue("@id",UserCollegeId.Value);
					cmd.Parameters.AddWithValue("@name",UserName.Value);
					cmd.Parameters.AddWithValue("@email",UserEmail.Value);
					cmd.Parameters.AddWithValue("@password",UserPassword.Value);
					cmd.Parameters.AddWithValue("@contact",Convert.ToInt64(UserContact.Value));
					string UserImage = Path.GetFileName(file.FileName);
					file.SaveAs(Server.MapPath("~/Images/ProfileImage/")+UserImage);
					cmd.Parameters.AddWithValue("@image",UserImage);
				}
				else
				{
					cmd= new SqlCommand("insert into [Student](Student_college_id,Student_name,Student_email,Student_password,Student_contact) values (@id,@name,@email,@password,@contact)",con);
					cmd.Parameters.AddWithValue("@id",UserCollegeId.Value);
					cmd.Parameters.AddWithValue("@name",UserName.Value);
					cmd.Parameters.AddWithValue("@email",UserEmail.Value);
					cmd.Parameters.AddWithValue("@password",UserPassword.Value);
					cmd.Parameters.AddWithValue("@contact",Convert.ToInt64(UserContact.Value));

				}
				cmd.ExecuteNonQuery();
				cmd= new SqlCommand("select  * from [Student] where Student_email=@email and Student_password=@password ",con);
				cmd.Parameters.AddWithValue("@email",UserEmail.Value);
				cmd.Parameters.AddWithValue("@password",UserPassword.Value);
				SqlDataReader dr = cmd.ExecuteReader ();
				while (dr.Read())
				{
					Session["User_id"] = dr[0].ToString();
				}
				Session["LoggedIn"] = 1;
				Session["Role"] = 0;
				Response.Redirect("HomePage.aspx");
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
				<div class="typing-demo">Sign Up </div>
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
				<a href="Login.aspx">
					<button class="button-back" role="button">Login</button>
				</a>
			</div>
		</div>
		<div class="right">
			<div class="login-box">
				<form id="form1" method="post" runat="server">
					<div class="user-box">
						<input id="UserName" type="text" runat="server" required=""/>
						<label>Name</label>
					</div>
					<div class="user-box">
						<input id="UserPassword" type="password" runat="server" required=""/>
						<label>User Password</label>
					</div>
					<div class="user-box">
						<input id="ConfirmPassword" type="password" runat="server" required=""/>
						<label>Confirm Password</label>
					</div>
					 <div class="user-box">
						<input id="UserEmail" type="text" runat="server" required=""/>
						<label>Email</label>
					</div>
					<div class="user-box">
						<input id="UserContact" type="text" runat="server" required=""/>
						<label>Phone Number</label>
					</div>
					<div class="user-box">
                        <input type="file" id="UserImage" runat="server" style="border-bottom: none !important;" />
						<label style="color:#333 !important;">Student profile picture</label>
					</div>
					<div class="user-box">
						<input id="UserCollegeId" type="text" runat="server" required=""/>
						<label>Student College Id</label>
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

