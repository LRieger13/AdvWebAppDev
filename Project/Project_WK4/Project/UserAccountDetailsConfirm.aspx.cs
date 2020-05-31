using System;
using System.Data.Common;
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
    public TextBox FName
    {
        get { return txtFirstName; }
    }
    //Last Name
    public TextBox LName
    {
        get { return txtLastName; }
    }

   // Email
    public TextBox Email
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
    // date
    public TextBox DateCompleted
    {
        get { return txtDateCompleted; }
    }
    // user ID
    public Label UserID
    {
        get { return lblUserID; }
    }
    
    // submit info
    protected void btnUserAccountSubmit_Click(object sender, EventArgs e)
    {
        // successful confirmation notification
        Master.UserFeedBack.Text = "Your account has been created! Welcome!";
    }

    // clear info
    private void ClearInput(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            else
                ClearInput(ctrl.Controls);
        }// end for
    }// end clear

    // btn clear inputs
   protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearInput(Page.Controls);
    }

    // find user by last name
   protected void btnFindUser_Click(object sender, EventArgs e)
   {
       dsProgramaholics dsFindLastName;

       // database path
       string tempPath = Server.MapPath("~/App_Data/dsProgramaholics.mdb");
       clsDataLayer dataLayerObj = new clsDataLayer(tempPath);

       // try comparing 
       try
       {
           dsFindLastName = dataLayerObj.FindUser(txtLastName.Text);

           // if matching record
           if (dsFindLastName.tblProgramaholics.Rows.Count > 0)
           {
               // fill with info
               txtFirstName.Text = dsFindLastName.tblProgramaholics[0].FName;
               txtLastName.Text = dsFindLastName.tblProgramaholics[0].LName;
               txtStreet.Text = dsFindLastName.tblProgramaholics[0].Street;
               txtCity.Text = dsFindLastName.tblProgramaholics[0].City;
               txtState.Text = dsFindLastName.tblProgramaholics[0].State;
               txtUsername.Text = dsFindLastName.tblProgramaholics[0].Email;
               txtPassword.Text = dsFindLastName.tblProgramaholics[0].Password;
               txtFavLanguage.Text = dsFindLastName.tblProgramaholics[0].FavLang;
               txtLeastFavLang.Text = dsFindLastName.tblProgramaholics[0].LeastFavLang;
               txtDateCompleted.Text = dsFindLastName.tblProgramaholics[0].DateComplete.ToString();
               userID.Text = dsFindLastName.tblProgramaholics[0].ID.ToString();

               Master.UserFeedBack.Text = "Record Found!";
           }//end if
           else
           {
               Master.UserFeedBack.Text = "No Records Found!";
           }//end else
       }// end try
       catch (Exception error)
       {
            // error message
           string message = "Something went wrong...";
           Master.UserFeedBack.Text = message + " " + error.Message;
       }// end catch
   }

   /// click method of update button
   // btnUpdate_Click 
   protected void btnUpdateUser_Click(object sender, EventArgs e)
   {
       // bool for update error
       bool userUpdateError = false;

       // path for database
       string tempPath = Server.MapPath("~/App_Data/dsProgramaholics.mdb");
       clsDataLayer myDataLayer = new clsDataLayer(tempPath);

       // try block to update customer
       try
       {
           myDataLayer.UpdateUser(txtFirstName.Text, txtLastName.Text,
               txtStreet.Text, txtCity.Text, txtState.Text, 
               txtUsername.Text, txtPassword.Text,
               txtFavLanguage.Text, txtLeastFavLang.Text, txtDateCompleted.Text, Convert.ToInt32(userID.Text)); 
       }
       catch (Exception error)
       {
           userUpdateError = true;
           string message = "Error updating customer information. Please check your form data.";
           Master.UserFeedBack.Text = message + error.Message;
       } // end catch

       // if no error update feedback text to display success message
       if (!userUpdateError)
       {
           ClearInput(Page.Controls);
           Master.UserFeedBack.Text = "Customer Updated Succesfully.";
       } // end if
   } // end btnUpdate


   /// add a new customer button
   // btnAdd_Click method
   protected void btnAddUser_Click(object sender, EventArgs e)
   {
       // customer error set to false
       bool userAddError = false;

       // path to database
       string tempPath = Server.MapPath("~/App_Data/dsProgramaholics.mdb");
       clsDataLayer myDataLayer = new clsDataLayer(tempPath);

       // try block to insert customer information
       try
       {
           // insert info 
           myDataLayer.InsertUser(txtFirstName.Text, txtLastName.Text,
               txtStreet.Text, txtCity.Text, txtState.Text, 
               txtUsername.Text, txtPassword.Text, txtFavLanguage.Text,
               txtLeastFavLang.Text, txtDateCompleted.Text);
       }
       catch (Exception error)
       {
           // catch the error & display error message
           userAddError = true;
           string message = "Error adding user, please check form data. ";
           Master.UserFeedBack.Text = message + error.Message;
       } // end catch

       // if there is no error display success message
       if (!userAddError)
       {
           ClearInput(Page.Controls);
           Master.UserFeedBack.Text = "User Added Successfully.";
       } // end if
   }

    /// DELETE USER
    // btnDeleteUser method
   protected void btnDeleteUser_Click(object sender, EventArgs e)
   {

       // bool for delete error
       bool userDeleteError = false;

       // path for database
       string tempPath = Server.MapPath("~/App_Data/dsProgramaholics.mdb");
       clsDataLayer myDataLayer = new clsDataLayer(tempPath);

       // try block to update customer
       try
       {
           myDataLayer.DeleteUser(Convert.ToInt32(userID.Text));
       }
       catch (Exception error)
       {
           userDeleteError = true;
           string message = "Error deleting user. Please check your form data. ";
           Master.UserFeedBack.Text = message + error.Message;
       } // end catch

       // if no error update feedback text to display success message
       if (!userDeleteError)
       {
           ClearInput(Page.Controls);
           Master.UserFeedBack.Text = "Customer Updated Succesfully.";
       } // end if
   }// end delete


}
