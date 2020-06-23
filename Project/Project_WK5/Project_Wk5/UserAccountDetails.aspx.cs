using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// move the find user to this page.

public partial class UserAccountDetails : System.Web.UI.Page
{   
    clsBusinessLayer myBusinessLayer;

    // On page load grab info to be confirmed
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.UserFeedBack.Text = "Please Confirm your Account information.";
        // try this first
        try
        {
            //instantiate
            myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));

            // call XMLbind method for girdView
            BindUserGridView();
            

            if (PreviousPage.IsCrossPagePostBack)
            { // if there is a page postback run this
                // grab name
                lblUsersName.Text = PreviousPage.FName.Text + " " + PreviousPage.LName.Text;
                // grab username
                lblUsername.Text = PreviousPage.Email.Text;
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
    }   

        
   /// BindCustomerGridView method 
   // calls data layer to fetch customers & binds that to GridView
   private dsProgramaholics BindUserGridView()
   {
       // new path
       string tempPath = Server.MapPath("~/Programaholics.mdb");
       clsDataLayer myDataLayer = new clsDataLayer(tempPath);
       
       // where the database is 
       myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));

       // get all customers
       dsProgramaholics userListing = (dsProgramaholics)myBusinessLayer.GetPersonalStats();
       

       // customer list's source is the table from the database
       gvStats.DataSource = userListing.tblUsers;

       // bind data to gridView & cache
       gvStats.DataBind();
       Cache.Insert("UserDataSet", userListing);

       // return cache
       return userListing;
   }


} // end pg load

