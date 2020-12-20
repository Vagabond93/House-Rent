<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<script runat="server">

</script>


<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
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
            width: 205px;
            height: 21px;
        }
        .style9
        {
            width: 299px;
        }
        .style8
        {
            width: 205px;
            text-align: right;
        }
        .style10
        {
            width: 205px;
            text-align: right;
            height: 26px;
        }
        .style11
        {
            height: 26px;
        }
        .style12
        {
            height: 26px;
        }
        .style13
        {
            width: 205px;
            height: 37px;
        }
        .style14
        {
            width: 299px;
            height: 37px;
        }
        .style15
        {
            height: 37px;
        }
        .style16
        {
            width: 299px;
            height: 22px;
        }
        .style17
        {
            height: 22px;
        }
        .style18
        {
            width: 299px;
            height: 21px;
        }
        .style19
        {
            height: 21px;
        }
        .style20
        {
            height: 37px;
            width: 166px;
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
				<table style="width:100%; height: 272px;">
                    <tr>
                        <td class="style1">
                <table style="width:100%;">
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#0066FF" Text="Login"></asp:Label>
                        </td>
                        <td class="style11" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Username:</td>
                        <td class="style11">
                            <asp:TextBox ID="UserTextBox" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="style12" colspan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="UserTextBox" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Password:</td>
                        <td class="style9">
                            <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td colspan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="PassTextBox" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            </td>
                        <td class="style14">
                            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td class="style20">
                            <asp:Button ID="LogInButton" runat="server" onclick="LogInButton_Click" 
                                Text="Log In" BackColor="#0066FF" Font-Size="Large" ForeColor="White" 
                                Height="38px" Width="157px" />
                        &nbsp;</td>
                        <td class="style15">
                            &nbsp;</td>
                    </tr>
                    <asp:SqlDataSource ID="MyDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select * from logon
"></asp:SqlDataSource>
                </table>
                            <table style="width:100%;">
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