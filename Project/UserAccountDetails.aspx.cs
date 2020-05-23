using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// move the find user to this page.

public partial class UserAccountDetails : System.Web.UI.Page
{
    // On page load grab info to be confirmed
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.UserFeedBack.Text = "Please Confirm your Account information.";
        // try this first
        try
        {

            if (PreviousPage.IsCrossPagePostBack)
            { // if there is a page postback run this
                // grab name
                lblUsersName.Text = PreviousPage.FirstName.Text + " " + PreviousPage.LastName.Text;
                // grab username
                lblUsername.Text = PreviousPage.Username.Text;
                // grab password
                lblPassword.Text = PreviousPage.Password.Text;
                // grab address
                lblAddress.Text = PreviousPage.Street.Text + " " + PreviousPage.City.Text + ", " + PreviousPage.State.Text;
                // grab fav language
                lblFavLanguage.Text = PreviousPage.FavLanguage.Text;
                // grab least fav language
                lblLeastFavLang.Text = PreviousPage.LeastFavLang.Text;
            }
        } // end try
        catch (Exception error)
        { // catch error
            Master.UserFeedBack.Text = "Sorry, there was an error processing your request."; // display error message in lblStatus
        } // end catch

    } // end pg load




}