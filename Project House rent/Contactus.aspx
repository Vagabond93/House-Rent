<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<!DOCTYPE html>

<script runat="server">

</script>


<html>
<head>
	<meta charset="UTF-8"/>
	<title>Contact us</title>
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	<!--[if IE]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" charset="utf-8">
	<![endif]-->
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style14
        {
            width: 349px;
        }
        .style17
        {
            width: 101px;
        }
        .style19
        {
            width: 100px;
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
				<table style="width:100%; padding-top: 150px; background-color: #CCFFFF;">
                    <tr>
                        <td class="style1">
                            <table style="width: 100%; background-color: #808080; height: 232px;">
                                <tr>
                                    <td class="style17">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Name:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="  Abdullah Al Mamun"></asp:Label>
                                    </td>
                                    <td rowspan="7">
                                        <asp:Image ID="Image1" runat="server" Height="220px" 
                                            ImageUrl="~/images/mamun.jpg" Width="194px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Address:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="  Suhrawardy Hall,BUET"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Mobile No:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="  01675398660"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Email:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="  mamunbuet93@gmail.com"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td class="style14">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td class="style14">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        &nbsp;</td>
                                    <td class="style14">
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <table style="width: 100%; background-color: #CCFFFF; height: 232px;">
                                <tr>
                                    <td class="style19">
                                        <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Name:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="Iktiar Ahmed Imon"></asp:Label>
                                    </td>
                                    <td rowspan="6">
                                        <asp:Image ID="Image2" runat="server" Height="220px" 
                                            ImageUrl="~/images/iktiar.jpg" Width="194px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text="Address:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="  Rashid Hall,BUET"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        <asp:Label ID="Label13" runat="server" Font-Size="Medium" Text="Mobile No:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="01723249080"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        <asp:Label ID="Label15" runat="server" Font-Size="Medium" Text="Email:"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Size="Large" 
                                            Text="iktiaremonkhan@gmail.com"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        &nbsp;</td>
                                    <td class="style14">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        &nbsp;</td>
                                    <td class="style14">
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