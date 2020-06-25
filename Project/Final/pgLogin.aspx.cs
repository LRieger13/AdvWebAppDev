using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Common;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Security.Cryptography;

public partial class pgLogin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Master.UserFeedBack.Text = "Please enter your username & password! ";
    }

    // login button functionality
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // business path
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));

        // is user valid
        bool isValidUser = myBusinessLayer.CheckUserCredentials(Session, txtUserID.Text, txtPassword.Text);

        // if valid
        if (isValidUser)
        { 
            // if valid redirect
            Response.Redirect("~/pgUserDetailsConfirm.aspx");
        }
        else if (Convert.ToBoolean(Session["LockedSession"]))
        {
            Master.UserFeedBack.Text = "Account is disabled. Contact your System Administrator! ";

            // hide login
            btnLogin.Visible = false;
        }
        else
        { 
            // incorrect user
            Master.UserFeedBack.Text = "The User ID and/or Password is incorrect. Please try again! ";
        }
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("pgUserDetails.aspx");
    }
}