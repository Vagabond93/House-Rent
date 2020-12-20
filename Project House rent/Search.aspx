<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<script runat="server">

</script>


<html>
<head>
	<meta charset="UTF-8">
	<title>Search</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<!--[if IE]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" charset="utf-8">
	<![endif]-->
    <style type="text/css">
        .style1
        {
            width: 257px;
        }
        .style2
        {
            width: 289px;
        }
        .style3
        {
            width: 325px;
        }
        .style4
        {
            width: 344px;
        }
        .style5
        {
            width: 357px;
        }
        .style6
        {
            width: 372px;
        }
        .style7
        {
            width: 375px;
        }
        .style8
        {
            width: 101px;
        }
        .style9
        {
            width: 268435552px;
        }
        .style10
        {
            width: 84px;
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
                                    <td class="style14">
    
                                        &nbsp;</td>
                                    <td class="style14">
    
                                        &nbsp;</td>
                                    <td>
    
                                        &nbsp;</td>
                                    <td class="style8">
    
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style9">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="6">
    <div>
    
    <table style="width:100%;">
        <tr>
            <td class="style2">
                SELECT DIVISION:</td>
            <td class="style3" colspan="4" width="200">
    <asp:DropDownList ID="DdlDivision" runat="server" AutoPostBack="True" 
         DataTextField="DIVISION_NAME" 
        DataValueField="DIVISION_ID" Width="200px"  
                     
                    Height="25px" onselectedindexchanged="DdlDivision_SelectedIndexChanged">
    </asp:DropDownList>
                </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                SELECT DISTRICT:</td>
            <td class="style3" colspan="4" width="200">
                    <asp:DropDownList ID="DdlDistrict" runat="server"
                        DataTextField="DISTRICT_NAME" DataValueField="DISTRICT_ID" Width="200px" 
                        onselectedindexchanged="DdlDistrict_SelectedIndexChanged" 
                        AutoPostBack="True" Height="25px">
                    </asp:DropDownList>
                </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                SELECT THANA:</td>
            <td class="style3" colspan="4" width="200">
                    <asp:DropDownList ID="DdlThana" runat="server" Width="200px" 
                         DataTextField="THANA_NAME" 
                        DataValueField="THANA_ID" 
                    onselectedindexchanged="DdlThana_SelectedIndexChanged"  AutoPostBack="True" Height="25px" 
                        >
                    </asp:DropDownList>
                </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                SELECT AREA:</td>
            <td class="style3" colspan="4" width="205">
                    <asp:DropDownList ID="DdlArea" runat="server" Width="200px" AutoPostBack="True" 
                         DataTextField="AREA_NAME" DataValueField="AREA_ID" Height="25px" 
                        >
                    </asp:DropDownList>
                </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                NO OF BEDROOM:</td>
            <td colspan="4" width="200px">
                <asp:DropDownList ID="DdlBedroomNo" runat="server" AutoPostBack="True" 
                    Height="25px" Width="200px">
                    <asp:ListItem Value="-1">Select Number</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                PRICE RANGE:</td>
            <td class="style5" width="200">
                <asp:DropDownList ID="DdlMinimum" runat="server" Width="200px" 
                    AutoPostBack="True">
                    <asp:ListItem>MINIMUM</asp:ListItem>
                    <asp:ListItem>5000</asp:ListItem>
                    <asp:ListItem>7000</asp:ListItem>
                    <asp:ListItem>9000</asp:ListItem>
                    <asp:ListItem>11000</asp:ListItem>
                    <asp:ListItem>13000</asp:ListItem>
                    <asp:ListItem>15000</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DdlMaximum" runat="server" Width="200px" 
                    AutoPostBack="True">
                    <asp:ListItem>MAXIMUM</asp:ListItem>
                    <asp:ListItem>5000</asp:ListItem>
                    <asp:ListItem>10000</asp:ListItem>
                    <asp:ListItem>15000</asp:ListItem>
                    <asp:ListItem>20000</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
    
    <asp:SqlDataSource ID="SqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        onselecting="SqlDataSource1_Selecting" 
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        
            
            
            
            SelectCommand="select bedroom_no,bathroom_no,parking_space,lift,electricity,gas,negotiability,price,avialability from appartment where post_id = ANY (select post_id from address where DIVISION='RANGPUR' )"></asp:SqlDataSource>
    
            </td>
            <td class="style7">
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5" width="200">
                <asp:Button ID="SearchButton" runat="server" Height="33px" 
                    onclick="SearchButton_Click" Text="Search" Width="164px" 
                    BackColor="#0066FF" Font-Size="Large" ForeColor="White" />
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4">
                <asp:DataList ID="DataList1" runat="server" Width="558px" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" 
                     >
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
            <td class="style10">
                <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
    
    </div>
                                    </td>
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