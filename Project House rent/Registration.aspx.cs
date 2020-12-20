using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitbutton_Click(object sender, EventArgs e)
    {
        string SelectCmd = "select user_name from registration where user_name = " + "'" +
                        usernameTB.Text + "'";

        MyDataSource1.SelectCommand = SelectCmd;
        MyDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView view = (DataView)MyDataSource1.Select(new DataSourceSelectArguments());

        DataTable table = view.ToTable();
        string value = null;

        foreach (DataRow dr in table.Rows)
        {
            value = dr[0].ToString();
        }


        if (value == null)
        {
            string InsertCmd = "insert into registration values(" + "'" + usernameTB.Text + "'" + "," + "'" + passwordTB.Text + "'" + "," + "'" + nidTB.Text + "'" + "," + "'" + emailTB.Text + "'" + "," + "'" + addressTB.Text + "'" + ")";

            MyDataSource1.InsertCommand = InsertCmd;
            MyDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            int result = MyDataSource1.Insert();
            if (result == 1)
            {
                Session["regmsg"] = "msg";
                Response.Redirect("~/Regmsg.aspx");
                
            }

        }
        else
        {
            errmsg.Text = "**This user name already used.Try another one";
        }
    }

}
