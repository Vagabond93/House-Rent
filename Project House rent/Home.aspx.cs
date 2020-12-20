using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string selectcmd = "select post_id,bedroom_no,bathroom_no,parking_space,lift,electricity,gas,negotiability,price,avialability from appartment where post_id = any (select post_id from address where division=" + "'" + "RANGPUR" + "'" + ")";
            SqlDataSource.SelectCommand = selectcmd;


            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view1 = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table1 = view1.ToTable();

            DataList1.DataSource = table1;
            DataList1.DataBind();


            ErrorLabel.Visible = false;
        
        }

        ErrorLabel.Visible = false;

    }

    protected void ShowButton_Click(object sender, CommandEventArgs e)
    {

        ErrorLabel.Visible = true;
        ErrorLabel.Text = "**You have to log in first to get the full information";

    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Search.aspx");
    }
    protected void DataList1_DataBinding(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
