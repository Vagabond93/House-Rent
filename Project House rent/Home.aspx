<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" Debug=true %>

<!DOCTYPE html>

<script runat="server">

</script>


<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome to Rent Solution</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<!--[if IE]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" charset="utf-8">
	<![endif]-->
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style13
        {
            width: 100%;
        }
        .style14
        {
            width: 636px;
        }
        .style15
        {
            width: 636px;
            height: 41px;
        }
        .style16
        {
            height: 41px;
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
                            <table class="style13">
                                <tr>
                                    <td class="style14" colspan="2">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="SearchButton" runat="server" BackColor="#3399FF" 
                                            Font-Size="Large" ForeColor="White" Height="35px" onclick="SearchButton_Click" 
                                            Text="Search" Width="158px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15" colspan="2">
                                        &nbsp;</td>
                                    <td class="style16">
    
    <asp:SqlDataSource ID="SqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
  
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        
            
            
            
            SelectCommand="select bedroom_no,bathroom_no,parking_space,lift,electricity,gas,negotiability,price,avialability from appartment where post_id = ANY (select post_id from address where DIVISION='RANGPUR' )"></asp:SqlDataSource>
    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15">
                <asp:DataList ID="DataList1" runat="server" Width="558px" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" ondatabinding="DataList1_DataBinding" >
                    <FooterStyle BackColor="Tan" />
                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <ItemTemplate>
                        BEDROOM NO:
                        <asp:Label ID="BEDROOM_NOLabel" runat="server" 
                            Text='<%# Eval("BEDROOM_NO") %>' />,
                      
                        BATHROOM NO:
                        <asp:Label ID="BATHROOM_NOLabel" runat="server" 
                            Text='<%# Eval("BATHROOM_NO") %>' />,
                        
                        PARKING SPACE:
                        <asp:Label ID="PARKING_SPACELabel" runat="server" 
                            Text='<%# Eval("PARKING_SPACE") %>' />,
                        
                        LIFT:
                        <asp:Label ID="LIFTLabel" runat="server" Text='<%# Eval("LIFT") %>' />,
                        
                        ELECTRICITY:
                        <asp:Label ID="ELECTRICITYLabel" runat="server" 
                            Text='<%# Eval("ELECTRICITY") %>' />,
                        
                        GAS:
                        <asp:Label ID="GASLabel" runat="server" Text='<%# Eval("GAS") %>' />,
                        
                        NEGOTIABILITY:
                        <asp:Label ID="NEGOTIABILITYLabel" runat="server" 
                            Text='<%# Eval("NEGOTIABILITY") %>' />,
                        
                        PRICE:
                        <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
                        <br />
                        AVIALABILITY:
                        <asp:Label ID="AVIALABILITYLabel" runat="server" 
                            Text='<%# Eval("AVIALABILITY") %>' />
                        <br />
                        <asp:Button ID="ShowButton" runat="server" Text="Show Detail"  CommandArgument = '<%# Eval("POST_ID") %>'
                            onCommand="ShowButton_Click" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                                    </td>
                                    <td class="style15">
                <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
                                    </td>
                                    <td class="style16">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15" colspan="2">
                                        &nbsp;</td>
                                    <td class="style16">
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
