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

public partial class Showdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~/Home.aspx");
        }
        if (!IsPostBack)
        {
            string selectcmd1 = "select bedroom_no,bathroom_no,balcony_no,DESCRIPTION,DRAWING_ROOM,DININIG_SPACE,parking_space,lift,electricity,gas,negotiability,price,avialability from appartment where post_id = " + "'" + Session["post_id"] + "'";
            SqlDataSource.SelectCommand = selectcmd1;


            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view1 = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table1 = view1.ToTable();

            DataList1.DataSource = table1;
            DataList1.DataBind();

            string selectcmd2 = "select address,contact_no from address where post_id = " + "'" + Session["post_id"] + "'";
            SqlDataSource.SelectCommand = selectcmd2;

            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view2 = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table2 = view2.ToTable();

            DataList2.DataSource = table2;
            DataList2.DataBind();


            //image show;
            string selectcmd3 = "select * from image where post_id = " + "'" + Session["post_id"] + "'";
            SqlDataSource.SelectCommand = selectcmd3;

            SqlDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView view3 = (DataView)SqlDataSource.Select(new DataSourceSelectArguments());
            DataTable table3 = view3.ToTable();


            string value1 = null;
            string value2 = null;
            string value3 = null;

            foreach (DataRow dr in table3.Rows)
            {
                value1 = dr[1].ToString();
                value2 = dr[2].ToString();
                value3 = dr[3].ToString();
            }

            Image1.ImageUrl = value1;
            Image2.ImageUrl = value2;
            Image3.ImageUrl = value3;

            if (Image1.ImageUrl != null)
                Image1.Visible = true;
            if (Image2.ImageUrl != null)
                Image2.Visible = true;
            if (Image3.ImageUrl != null)
                Image3.Visible = true;
        }

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("~/Home.aspx");
    }
}
