using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void AccountButton_Click(object sender, EventArgs e)
    {
        PassTextBox.Text = "a";
        UserTextBox.Text = "b";
        //Response.Redirect("~/Registration.aspx");
    }

    protected void LogInButton_Click(object sender, EventArgs e)
    {
        //check if there is an account or not
        string SelectCmd = "select user_name, password from registration where user_name = " + "'" +
                            UserTextBox.Text + "'";

        MyDataSource2.SelectCommand = SelectCmd;
        MyDataSource2.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView view = (DataView)MyDataSource2.Select(new DataSourceSelectArguments());

        DataTable table = view.ToTable();
        string uservalue = null;
        string passvalue = null;

        foreach (DataRow dr in table.Rows)
        {
            uservalue = dr[0].ToString();
            passvalue = dr[1].ToString();
        }

        if (UserTextBox.Text == uservalue && PassTextBox.Text == passvalue)
        {
            Session["user"] = uservalue.ToString(); 
            Response.Redirect("~/Loginhome.aspx");


        }
        else
        {
            ErrorLabel.Text = "**You dont Have account.Please create an account first to log in.\n";
        }
    }
    
}
