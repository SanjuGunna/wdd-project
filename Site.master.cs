﻿using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{
    private const string AntiXsrfTokenKey = "__AntiXsrfToken";
    private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
    private string _antiXsrfTokenValue;
    public string status;
    public string bookings;
    public string addbrands;
    public string addcars;
    public string mssg;
    public string admin;

    protected void Page_Init(object sender, EventArgs e)
    {
        // The code below helps to protect against XSRF attacks
        var requestCookie = Request.Cookies[AntiXsrfTokenKey];
        Guid requestCookieGuidValue;
        if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
        {
            // Use the Anti-XSRF token from the cookie
            _antiXsrfTokenValue = requestCookie.Value;
            Page.ViewStateUserKey = _antiXsrfTokenValue;
        }
        else
        {
            // Generate a new Anti-XSRF token and save to the cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
            Page.ViewStateUserKey = _antiXsrfTokenValue;

            var responseCookie = new HttpCookie(AntiXsrfTokenKey)
            {
                HttpOnly = true,
                Value = _antiXsrfTokenValue
            };
            if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
            {
                responseCookie.Secure = true;
            }
            Response.Cookies.Set(responseCookie);
        }

        Page.PreLoad += master_Page_PreLoad;
    }

    protected void master_Page_PreLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Anti-XSRF token
            ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
            ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
        }
        else
        {
            // Validate the Anti-XSRF token
            if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
            {
                throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["login"] != null && Session["user"] != null && Session["login"].ToString()=="true" && Session["user"].ToString() == "user" )
        {
            admin = "";
            addbrands = "<a href='./Suppliments'>Suppliments</a>";
            addcars = "<a href='./Tips.pdf'>WorkOut Tips</a>";
            bookings = "";
            mssg = "<a>Welcome, "+Session["name"].ToString()+"</a>";
            status = "<a runat='server' href='./Logout' >Logout</a>";
        }
        else if(Session["login"] != null && Session["user"] != null && Session["login"].ToString() == "true" && Session["user"].ToString() == "admin")
        {
            //bookings = "<a runat='server' href='./ViewBookings' >View Bookings</a>";
            bookings = "";
            mssg = "<a href='./AdminHome'>Welcome, Admin</a>";
            addbrands = "<a runat='server' href='./ManageBrands' >Manage Brands</a>";
            addcars = "<a runat='server' href='./ManageEquipment' >Manage Equipments</a>";
            status = "<a runat='server' href='./Logout' >Logout</a>";
        }
        else
        {
            bookings="";
            addcars = "";
            addbrands = "";
            admin = "<a runat='server' href='http://dcm.uhcl.edu/c563316sp01g4/Account/AdminLogin' >Admin Login</a>";
            mssg = "<a runat='server' href='http://dcm.uhcl.edu/c563316sp01g4/Account/Register' >Register</a>";
            status = "<a runat='server' href='http://dcm.uhcl.edu/c563316sp01g4/Account/Login' >Log In</a>";
        }
    }

    protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Context.GetOwinContext().Authentication.SignOut();
    }
}