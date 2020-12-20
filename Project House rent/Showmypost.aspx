<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Showmypost.aspx.cs" Inherits="Showmypost" %>

<!DOCTYPE html>

<script runat="server">

</script>


<html>
<head>
	<meta charset="UTF-8"/>
	<title>Rent Solution</title>
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	<!--[if IE]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" charset="utf-8">
	<![endif]-->
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style7
        {
            width: 176px;
        }
        .style9
        {
            width: 299px;
        }
        .style8
        {
            width: 176px;
            text-align: right;
        }
        .style10
        {
            width: 176px;
            text-align: right;
            height: 26px;
        }
        .style11
        {
            width: 299px;
            height: 26px;
        }
        .style12
        {
            height: 26px;
        }
    </style>
</head>
<body>
	<form id="form1" runat="server">
	<div id="background">
		<div id="page">
			<div id="header">
				<ul id="navigation">
					<li class="selected">
						<a href="Home.aspx">Home</a>
					</li>
					<li>
						<a href="Registration.aspx">Registration</a>
					</li>
					<li>
						<a href="Postad.aspx">Post Ad</a>
					</li>
					<li>
						<a href="Login.aspx">Login</a>
					</li>
					<li>
						<a href="About.aspx">About</a>
					</li>
					<li>
						<a href="Contactus.aspx">Contact</a>
					</li>
				</ul>
				<div id="logo">
					<a href="Home.aspx">Rent Solution</a>
				</div>
			</div>
			<div id="contents">
				
				<div class="header">
					
					<p>
						Welcome to the largest house rent site in Bangladesh
					</p>
				</div>
				<table style="width:100%;">
                    <tr>
                        <td class="style1">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="LogoutButton" runat="server" BackColor="#0066FF" 
                                            Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                                            onclick="LogoutButton_Click" Text="Logout" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
			<div id="footer">
				<div>
					<ul>
						<li>
							<h4>About</h4>
							<p>
							   our site is free.You can post your tolet ad and also search for tolet here in free of cost.  <a href="About.aspx">(more)</a>
							</p>
						</li>

						<li>
							<h4>Keep in Touch</h4>
							<div id="connect">
								<a href="https://twitter.com" target="_blank" class="twitter">Twitter</a><a href="https://facebook.com" target="_blank" class="facebook">Facebook</a><a href="http://google.com" target="_blank" class="googleplus">Google+</a>
							</div>
						</li>
					</ul>
					<p id="footnote">
						© Copyright Mamun & Iktiar
					</p>
				</div>
			</div>
		        
		</div>
	</div>
    </form>
</body>
</html>
