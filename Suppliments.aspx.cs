using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class car : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

            if(Session["login"] != null && Session["user"] != null && Session["login"].ToString() == "true" && Session["user"].ToString() == "admin")
            {
                Response.Redirect("Home");
            }
            



    }

        
}