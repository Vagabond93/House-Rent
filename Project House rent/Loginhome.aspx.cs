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


public partial class Loginhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
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

            string selectcmd = "select post_id,bedroom_no,bathroom_no,parking_space,lift,electricity,gas,negotiability,price,avialability from appartment where post_id = any (select post_id from address where division=" + "'" + "RANGPUR" + "'" + ")";
            SqlDataSource.SelectCommand = selectcmd;


            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view1 = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table1 = view1.ToTable();

            DataList1.DataSource = table1;
            DataList1.DataBind();
        
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


    protected void ShowButton_Click(object sender, CommandEventArgs e)
    {

        Session["post_id"] = e.CommandArgument;
        Response.Redirect("~/ShowDetail.aspx");
    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        string selectcmd = "select post_id,bedroom_no,bathroom_no,parking_space,lift,electricity,gas,negotiability,price,avialability from appartment where post_id = any (" +
                            "select post_id from address where " +
                            " division = " + "'" + DdlDivision.SelectedItem + "'" +
                            "and district = " + "'" + DdlDistrict.SelectedItem + "'" +
                            "and thana = " + "'" + DdlThana.SelectedItem + "'" +
                            "INTERSECT" +
                            "(select post_id from APPARTMENT " +
                            "where price >=  " + "'" + DdlMinimum.SelectedItem + "'" +
                            "and price <= " + "'" + DdlMaximum.SelectedItem + "'" +
                            "and bedroom_no = " + "'" + DdlBedroomNo.SelectedItem + "'" + ")" + ")";

        SqlDataSource.SelectCommand = selectcmd;
        SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView view1 = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
        DataTable table1 = view1.ToTable();

        DataList1.DataSource = table1;
        DataList1.DataBind();


    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LogoutButton_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("~/Home.aspx");
    }
    protected void PostadButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Postad.aspx");
    }
    protected void ShowMyPostButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Showmypost.aspx");
    }
}
