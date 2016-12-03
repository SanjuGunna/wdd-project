using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=dcm.uhcl.edu; Database=c563316sp01g4; uid=c563316sp01g4; pwd=4686686");
        SqlDataAdapter sda = new SqlDataAdapter("select bid,bname from brands", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Search = search.Text;
        if (!String.IsNullOrEmpty(Search))
        {
            Response.Redirect("Search?name=" + Search);
        }

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

   


    }

}