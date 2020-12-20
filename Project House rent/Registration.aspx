<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<script runat="server">

</script>


<html>
<head>
	<meta charset="UTF-8">
	<title>Sign up</title>
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
				<table style="width:100%; height: 70%;">
                    <tr>
                        <td class="style1">
                <table style="width:100%; height: 222px;">
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="True" 
                                Font-Size="X-Large" Text="Signup" ForeColor="#0066FF"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" height="60px">
                            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="usernameTB" runat="server" Width="298px" 
                                ></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="usernameTB" ErrorMessage="Username required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" height="60px">
                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:TextBox ID="passwordTB" runat="server" TextMode="Password" Width="298px"></asp:TextBox>
                        </td>
                        <td class="style12">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="passwordTB" ErrorMessage="Password required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" height="60px">
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="cpasswordTB" runat="server" TextMode="Password" Width="298px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="cpasswordTB" ErrorMessage="Confirm password required"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="passwordTB" ControlToValidate="cpasswordTB" 
                                ErrorMessage="Both password must be same"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" height="60px">
                            <asp:Label ID="Label5" runat="server" Text="NID"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="nidTB" runat="server" Width="298px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="nidTB" ErrorMessage="NID required"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="nidTB" ErrorMessage="At least 5 digit." 
                                ValidationExpression="[0-9]{5,}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" height="60px">
                            <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="emailTB" runat="server" Width="295px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="emailTB" ErrorMessage="Email required"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="emailTB" ErrorMessage="Email must be valid" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" height="60px">
                            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:TextBox ID="addressTB" runat="server" Width="298px"></asp:TextBox>
                        </td>
                        <td class="style12">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="addressTB" ErrorMessage="Address required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Label ID="errmsg" runat="server" Width="298px" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="submitbutton" runat="server" onclick="submitbutton_Click" 
                                Text="Submit" BackColor="#0066FF" Font-Size="Large" ForeColor="White" 
                                Height="38px" Width="181px" />
                        </td>
                    </tr>
                    <asp:SqlDataSource ID="MyDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                        SelectCommand="select * from registration"></asp:SqlDataSource>
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
