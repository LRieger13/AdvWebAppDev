using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserAccount_DetailsConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // user notification to enter info
        Master.UserFeedBack.Text = "Please enter account information.";
    }
    
    //First Name
    public TextBox FirstName
    {
        get { return txtFirstName; }
    }
    //Last Name
    public TextBox LastName
    {
        get { return txtLastName; }
    }

   // Email
    public TextBox Username
    {
        get { return txtUsername; }
    }
    // password
    public TextBox Password
    {
        get { return txtPassword; }
    }

    //Street
    public TextBox Street
    {
        get { return txtStreet; }
    }
    //City
    public TextBox City
    {
        get { return txtCity; }
    }
    //State
    public TextBox State
    {
        get { return txtState; }
    }
    // Fav Language
    public TextBox FavLanguage
    {
        get { return txtFavLanguage; }
    }
    // Least Fav Language
    public TextBox LeastFavLang
    {
        get { return txtLeastFavLang; }
    }
    
    // submit info
    protected void btnUserAccountSubmit_Click(object sender, EventArgs e)
    {
        // successful confirmation notification
        Master.UserFeedBack.Text = "Your account has been created! Welcome!";
    }
}