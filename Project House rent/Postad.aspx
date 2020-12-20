<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Postad.aspx.cs" Inherits="Postad" %>

<!DOCTYPE html>

<script runat="server">

</script>


<html>
<head>
	<meta charset="UTF-8">
	<title>Post Ad</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<!--[if IE]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" charset="utf-8">
	<![endif]-->
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style9
        {
            width: 299px;
        }
        .style8
        {
            width: 176px;
            text-align: right;
            font-weight: 700;
        }
        .style2
        {
            width: 225px;
            text-align: right;
            font-weight: bold;
        }
        .style3
        {
            width: 206px;
        }
        .style4
        {
            width: 225px;
            text-align: right;
            font-weight: bold;
            height: 112px;
        }
        .style5
        {
            width: 206px;
            height: 112px;
        }
        .style6
        {
            height: 112px;
        }
        .style10
        {
            width: 225px;
            text-align: right;
            font-weight: 700;
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
    <table class="style1">
        <tr>
            <td class="style2">
                SELECT DIVISION:</td>
            <td class="style3">
    <asp:DropDownList ID="DdlDivision" runat="server" AutoPostBack="True" 
         DataTextField="DIVISION_NAME" 
        DataValueField="DIVISION_ID" Width="200px"  
                        onselectedindexchanged="DdlDivision_SelectedIndexChanged" 
                    Height="25px">
    </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="LogoutButton" runat="server" BackColor="#0066FF" 
                    Font-Bold="True" Font-Size="Large" ForeColor="White" 
                    onclick="LogoutButton_Click" Text="Logout" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                SELECT DISTRICT:</td>
            <td class="style3">
                    <asp:DropDownList ID="DdlDistrict" runat="server"
                        DataTextField="DISTRICT_NAME" DataValueField="DISTRICT_ID" Width="200px" 
                        onselectedindexchanged="DdlDistrict_SelectedIndexChanged" 
                        AutoPostBack="True" Height="25px">
                    </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                SELECT THANA:</td>
            <td class="style3">
                    <asp:DropDownList ID="DdlThana" runat="server" Width="200px" 
                         DataTextField="THANA_NAME" 
                        DataValueField="THANA_ID" 
                    onselectedindexchanged="DdlThana_SelectedIndexChanged"  AutoPostBack="True" Height="25px" 
                        >
                    </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                SELECT AREA:</td>
            <td class="style3">
                    <asp:DropDownList ID="DdlArea" runat="server" Width="200px" AutoPostBack="True" 
                         DataTextField="AREA_NAME" DataValueField="AREA_ID" Height="25px" 
                        >
                    </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                ADDRESS:</td>
            <td class="style3">
                    <asp:TextBox ID="AddressTextBox" runat="server" Height="60px" 
                        TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                BEDROOM NO.:</td>
            <td class="style3">
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                BATHROOM NO.:</td>
            <td class="style3">
                <asp:DropDownList ID="DdlBathroomNo" runat="server" AutoPostBack="True" 
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                BALCONY NO.:</td>
            <td class="style3">
                <asp:DropDownList ID="DdlBalconyNO" runat="server" AutoPostBack="True" 
                    Height="25px" Width="200px">
                    <asp:ListItem Value="-1">Select Number</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                DRAWING_ROOM:</td>
            <td class="style3">
                <asp:RadioButtonList ID="RblDrawingRoom" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                DINING_SPACE:</td>
            <td class="style3">
                <asp:RadioButtonList ID="RblDiningSpace" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                PARKING_SPACE:</td>
            <td class="style3">
                <asp:RadioButtonList ID="RblParkingSpace" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                LIFT:</td>
            <td class="style3">
                <asp:RadioButtonList ID="RblLift" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                ELECTRICITY:</td>
            <td class="style3">
                <asp:RadioButtonList ID="RblElectricity" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                GAS:</td>
            <td class="style3">
                <asp:RadioButtonList ID="RblGas" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                PRICE:</td>
            <td class="style3">
                <asp:TextBox ID="PriceTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                NEGOTIABALE:</td>
            <td class="style8">
                <asp:RadioButtonList ID="RblNegotiable" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal" style="text-align: left">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style9">
                </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                AVAILABILITY:</td>
            <td class="style5">
                <asp:TextBox ID="AvailableTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
                    ImageUrl="~/images/calendar-icon.png" onclick="ImageButton1_Click" />
                <asp:Calendar ID="Calendar" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    ShowGridLines="True" Width="220px" ondayrender="Calendar_DayRender" 
                    onselectionchanged="Calendar_SelectionChanged">
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                CONTACT_NO:</td>
            <td class="style3">
                <asp:TextBox ID="ContactNoTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                SHORT DESCRIPTION:</td>
            <td class="style3">
                <asp:TextBox ID="SDTextBox" runat="server" Height="60px" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                CHOOSE PHOTO:</td>
            <td class="style3">
    <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
    <asp:Image ID="Image1" runat="server" Height="74px" Width="135px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="66px" Width="138px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" Height="63px" Width="136px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="UploadButton" runat="server" onclick="UploadButton_Click" 
                    Text="Upload Images" BackColor="#0066FF" Font-Bold="True" 
                    Font-Size="Small" ForeColor="White" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="SubmitButton" runat="server" onclick="SubmitButton_Click" 
                    Text="Submit" Width="170px" BackColor="#0066FF" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="White" />
            </td>
            <td>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        onselecting="SqlDataSource1_Selecting" 
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        SelectCommand="select * from THANA"></asp:SqlDataSource>
            </td>
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