using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Media;

public partial class Postad : System.Web.UI.Page
{

    string file = string.Empty;
    string file1 = string.Empty;
    string file2 = string.Empty;
    int result = 0;
    Guid newGuid = Guid.NewGuid();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    
        if (!IsPostBack)
        {
            string SelectCmd = "select * from division";
            SqlDataSource.SelectCommand = SelectCmd;
            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table = view.ToTable();

            DdlDivision.DataSource = table;
            DdlDivision.DataBind();
            
            //add select option
            ListItem LiDivision = new ListItem("Select Division", "-1");
            DdlDivision.Items.Insert(0, LiDivision);

            ListItem LiDistrict = new ListItem("Select District", "-1");
            DdlDistrict.Items.Insert(0, LiDistrict);

            ListItem LiThana = new ListItem("Select Thana", "-1");
            DdlThana.Items.Insert(0, LiThana);

            ListItem LiArea = new ListItem("Select Area", "-1");
            DdlArea.Items.Insert(0, LiArea);

            //Disable Other dropdownlist when the page is loaded for first time
            
            DdlDistrict.Enabled = false;
            DdlThana.Enabled = false;
            DdlArea.Enabled = false;

            //calender will not be visible
            Calendar.Visible = false;

        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DdlDivision_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlDivision.SelectedIndex == 0)
        {
            DdlDistrict.SelectedIndex = 0;
            DdlDistrict.Enabled = false;
            DdlThana.SelectedIndex = 0;
            DdlThana.Enabled = false;
            DdlArea.SelectedIndex = 0;
            DdlArea.Enabled = false;
        }
        else
        {
            DdlDistrict.Enabled = true;
            
            string SelectCmd = "select district_id, district_name from District where division_id= " + DdlDivision.SelectedValue;
            SqlDataSource.SelectCommand = SelectCmd;
            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table = view.ToTable();

            DdlDistrict.DataSource = table;
            DdlDistrict.DataBind();

            //add select district option to the drodownlist
            ListItem LiDistrict = new ListItem("Select District", "-1");
            DdlDistrict.Items.Insert(0, LiDistrict);

            DdlThana.SelectedIndex = 0;
            DdlThana.Enabled = false;
            DdlArea.SelectedIndex = 0;
            DdlArea.Enabled = false;

        }
    }

    protected void DdlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlDistrict.SelectedIndex == 0)
        {
            
            DdlThana.SelectedIndex = 0;
            DdlThana.Enabled = false;
            DdlArea.SelectedIndex = 0;
            DdlArea.Enabled = false;
        }
        else
        {
            DdlThana.Enabled = true;
     
            string SelectCmd = "select thana_id, thana_name from Thana where district_id= " + DdlDistrict.SelectedValue;
            SqlDataSource.SelectCommand = SelectCmd;
            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table = view.ToTable();

            DdlThana.DataSource = table;
            DdlThana.DataBind();

            //add select thana option to the drodownlist
            ListItem LiThana = new ListItem("Select Thana", "-1");
            DdlThana.Items.Insert(0, LiThana);

            DdlArea.SelectedIndex = 0;
            DdlArea.Enabled = false;

        }
    }
    protected void DdlThana_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlThana.SelectedIndex == 0)
        {
            DdlArea.SelectedIndex = 0;
            DdlArea.Enabled = false;
        }
        else
        {
            DdlArea.Enabled = true;
            string SelectCmd = "select area_id, area_name from area where thana_id= " + DdlThana.SelectedValue;
            SqlDataSource.SelectCommand = SelectCmd;
            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table = view.ToTable();

            DdlArea.DataSource = table;
            DdlArea.DataBind();

            //add select thana option to the drodownlist
            ListItem LiArea = new ListItem("Select Area", "-1");
            DdlArea.Items.Insert(0, LiArea);

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar.Visible)
        {
            Calendar.Visible = false;
        }
        else
        {
            Calendar.Visible = true;
        }
    }
    protected void Calendar_SelectionChanged(object sender, EventArgs e)
    {
        AvailableTextBox.Text = Calendar.SelectedDate.ToShortDateString();
        Calendar.Visible = false;
    }
    protected void Calendar_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
  
        }
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        //create a unique key that used as a post_id
        
        //insert into APPARTMENT tables
        string InsertCmd1 = "insert into appartment values (" + "'" + newGuid.ToString() + "'" + "," + "'" + DdlBedroomNo.SelectedValue + "'" + "," +
                           "'" + DdlBathroomNo.SelectedItem + "'" + "," + "'" + DdlBalconyNO.SelectedItem + "'" + "," +
                           "'" + RblDiningSpace.SelectedItem + "'" + "," + "'" + RblParkingSpace.SelectedItem + "'" + "," +
                           "'" + RblLift.SelectedItem + "'" + "," + "'" + RblElectricity.SelectedItem + "'" + "," +
                           "'" + RblGas.SelectedItem + "'" + "," + "'" + SDTextBox.Text + "'" + "," +
                           "'" + RblNegotiable.SelectedItem + "'" + "," + "'" + PriceTextBox.Text + "'" + "," +
                           "'" + AvailableTextBox.Text + "'" + "," + "'" + RblDrawingRoom.SelectedItem + "'" + ")";

        SqlDataSource.InsertCommand = InsertCmd1;
        SqlDataSource.InsertCommandType = SqlDataSourceCommandType.Text;
        int insertresult1 = SqlDataSource.Insert();
        


        //insert into ADDRESS table
        string InsertCmd2 = "insert into address values (" + "'" + newGuid.ToString() + "'" + "," + "'" + DdlDivision.SelectedItem + "'" + "," +
                          "'" + DdlDistrict.SelectedItem + "'" + "," + "'" + DdlThana.SelectedItem + "'" + "," +
                          "'" + DdlArea.SelectedItem + "'" + "," + "'" + AddressTextBox.Text + "'" +","+ "'" + ContactNoTextBox.Text + "'" + ")"; 
        SqlDataSource.InsertCommand = InsertCmd2;
        SqlDataSource.InsertCommandType = SqlDataSourceCommandType.Text;
        int insertresult2 = SqlDataSource.Insert();
        

        
        //image insert
        
        if (insertresult1 !=null && insertresult2 !=null && result !=null)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your post is added successfully.')</script>)");
            //Response.Write("Successful." + "<br/>");
        }
        else
        {
            Response.Write("OOPs!");
        }
    }
    protected void UploadButton_Click(object sender, EventArgs e)
    {
        //insert image
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
            file = "~/images/" + FileUpload1.FileName;
        }
        else
        {
            file = null;
        }
        Image1.ImageUrl = file;
        if (FileUpload2.HasFile)
        {
            FileUpload2.SaveAs(Server.MapPath("~/images/" + FileUpload2.FileName));
            file1 = "~/images/" + FileUpload2.FileName;
        }
        else
        {
            file1 = null;
        }
        Image2.ImageUrl = file1;
        if (FileUpload3.HasFile)
        {
            FileUpload3.SaveAs(Server.MapPath("~/images/" + FileUpload3.FileName));
            file2 = "~/images/" + FileUpload3.FileName;
        }
        else
        {
            file2 = null;
        }
        Image3.ImageUrl = file2;
        string insertCmd = "insert into image values(" + "'" + newGuid.ToString() + "'" + "," + "'" + file + "'" + "," + "'" + file1 + "'" + "," + "'" + file2 + "'" + ")";
        SqlDataSource.InsertCommand = insertCmd;
        SqlDataSource.InsertCommandType = SqlDataSourceCommandType.Text;
        result = SqlDataSource.Insert();
        
        

    }
    protected void LogoutButton_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("~/Home.aspx");
    }
}

