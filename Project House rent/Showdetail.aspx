<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Showdetail.aspx.cs" Inherits="Showdetail" %>

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
        .style4
        {
            width: 256px;
            height: 200px;
        }
        .style5
        {
            width: 490px;
            height: 200px;
        }
        .style6
        {
            height: 200px;
        }
        .style2
        {
            width: 256px;
        }
        .style3
        {
            width: 490px;
        }
        .style8
        {
            width: 256px;
            height: 89px;
        }
        .style9
        {
            width: 490px;
            height: 89px;
        }
        .style10
        {
            height: 89px;
        }
        .style11
        {
            width: 256px;
            height: 40px;
        }
        .style12
        {
            width: 490px;
            height: 40px;
        }
        .style13
        {
            height: 40px;
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
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="select * from appartment"></asp:SqlDataSource>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style11">
                </td>
            <td class="style12">
            </td>
            <td class="style13">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log Out" 
                    BackColor="#0033CC" Font-Size="Large" ForeColor="White" 
                    style="margin-right: 0px" Width="166px" />
                </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" 
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">
                    <FooterStyle BackColor="Tan" />
                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <ItemTemplate>
                        BEDROOM_NO:
                        <asp:Label ID="BEDROOM_NOLabel" runat="server" 
                            Text='<%# Eval("BEDROOM_NO") %>' />
                        <br />
                        BATHROOM_NO:
                        <asp:Label ID="BATHROOM_NOLabel" runat="server" 
                            Text='<%# Eval("BATHROOM_NO") %>' />
                        <br />
                        BALCONY_NO:
                        <asp:Label ID="BALCONY_NOLabel" runat="server" 
                            Text='<%# Eval("BALCONY_NO") %>' />
                        <br />
                        DININIG_SPACE:
                        <asp:Label ID="DININIG_SPACELabel" runat="server" 
                            Text='<%# Eval("DININIG_SPACE") %>' />
                        <br />
                        PARKING_SPACE:
                        <asp:Label ID="PARKING_SPACELabel" runat="server" 
                            Text='<%# Eval("PARKING_SPACE") %>' />
                        <br />
                        LIFT:
                        <asp:Label ID="LIFTLabel" runat="server" Text='<%# Eval("LIFT") %>' />
                        <br />
                        ELECTRICITY:
                        <asp:Label ID="ELECTRICITYLabel" runat="server" 
                            Text='<%# Eval("ELECTRICITY") %>' />
                        <br />
                        GAS:
                        <asp:Label ID="GASLabel" runat="server" Text='<%# Eval("GAS") %>' />
                        <br />
                        DESCRIPTION:
                        <asp:Label ID="DESCRIPTIONLabel" runat="server" 
                            Text='<%# Eval("DESCRIPTION") %>' />
                        <br />
                        NEGOTIABILITY:
                        <asp:Label ID="NEGOTIABILITYLabel" runat="server" 
                            Text='<%# Eval("NEGOTIABILITY") %>' />
                        <br />
                        PRICE:
                        <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
                        <br />
                        AVIALABILITY:
                        <asp:Label ID="AVIALABILITYLabel" runat="server" 
                            Text='<%# Eval("AVIALABILITY") %>' />
                        <br />
                        DRAWING_ROOM:
                        <asp:Label ID="DRAWING_ROOMLabel" runat="server" 
                            Text='<%# Eval("DRAWING_ROOM") %>' />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:DataList ID="DataList2" runat="server" BackColor="LightGoldenrodYellow" 
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                    Width="211px">
                    <FooterStyle BackColor="Tan" />
                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <ItemTemplate>
                        ADDRESS:
                        <asp:Label ID="ADDRESSLabel" runat="server" 
                            Text='<%# Eval("ADDRESS") %>' />
                        <br />
                        CONTACT NO:
                        <asp:Label ID="CONTACT_NOLabel" runat="server" 
                            Text='<%# Eval("CONTACT_NO") %>' />
                        <br />
                        
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp; <span class="style7">IMAGE FOR THE APPARTMENT:</span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                <asp:Image ID="Image1" runat="server" Height="56px" Visible="False" 
                    Width="109px" />
                <asp:Image ID="Image2" runat="server" Height="56px" Visible="False" 
                    Width="108px" />
                <asp:Image ID="Image3" runat="server" Height="55px" Visible="False" 
                    Width="120px" />
            </td>
            <td class="style10">
                </td>
        </tr>
    </table>
                        </td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" colspan="4">
                            &nbsp;</td>
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