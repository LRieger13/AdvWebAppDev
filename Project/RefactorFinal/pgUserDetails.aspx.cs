using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgUserDetails : System.Web.UI.Page
{

    clsBusinessLayer myBusinessLayer;

    protected void Page_Load(object sender, EventArgs e)
    {
        Master.UserFeedBack.Text = "Code Monkey like Mountain Dew..";
        
        //path for business
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/App_Data/"));


        BindUserGrid();
        BindXMLGridView();
    }

    public TextBox FirstName
    { get { return txtFirstName; } }

    public TextBox LastName
    { get { return txtLastName; } }

    public TextBox Street
    { get { return txtStreet; } }

    public TextBox City
    { get { return txtCity; } }

    public TextBox State
    { get { return txtState; } }

    public TextBox Email
    { get { return txtEmail; } }

    public TextBox Password
    { get { return txtPassword; } }

    public TextBox FavLanguage
    { get { return txtFav; } }

    public TextBox LeastFav
    { get { return txtLeast; } }

    public TextBox DateComplete
    { get { return txtDate; } }

    public TextBox ProgramName
    { get { return txtProgramName; } }

    public TextBox ProgramLanguage
    { get { return txtProgramLanguage; } }


    // UpdateUser_click method
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string results = myBusinessLayer.UpdateUser(txtFirstName.Text,
            txtLastName.Text, txtEmail.Text, txtPassword.Text, txtStreet.Text,
            txtCity.Text, txtState.Text, txtFav.Text, txtLeast.Text, txtProgramLanguage.Text, txtProgramName.Text, txtDate.Text);
        

        UpdateForm(results);
    }

    /// clear input methods
    // clears the textboxes
    private void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;

            ClearInputs(ctrl.Controls);
        } // end each
    }

    public void btnClear_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }

    /// find user method
    // finds the user by their last name.
    protected void btnFind_Click(object sender, EventArgs e)
    {
        dsProgramaholics dsFindLastName = myBusinessLayer.FindUser(txtLastName.Text);

        // go through records
        if (dsFindLastName.tblUserDetails.Rows.Count > 0)
        {
            txtFirstName.Text = dsFindLastName.tblUserDetails[0].FName;
            txtLastName.Text = dsFindLastName.tblUserDetails[0].LName;
            txtEmail.Text = dsFindLastName.tblUserDetails[0].Email;
            txtPassword.Text = dsFindLastName.tblUserDetails[0].Pwd;
            txtStreet.Text = dsFindLastName.tblUserDetails[0].Street;
            txtCity.Text = dsFindLastName.tblUserDetails[0].City;
            txtState.Text = dsFindLastName.tblUserDetails[0].State;
        }
        else
        { 
            // no user found
            Master.UserFeedBack.Text = "No records found!";
        }
    }

    /// insertUser method
    // add a new user info to database
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        string results = myBusinessLayer.InsertUser(txtFirstName.Text, txtLastName.Text,
            txtEmail.Text, txtPassword.Text, txtStreet.Text, txtCity.Text, txtState.Text);

        UpdateForm(results);
    }


    /// BindUserGrid method
    // binds gridview to data
    private dsProgramaholics BindUserGrid()
    { 
        // path
        string tempPath = Server.MapPath("~/App_Data/Programaholics.mdb");
        clsDataLayer myData = new clsDataLayer(tempPath);

        // get users
        dsProgramaholics userList = myBusinessLayer.SelectAllUsers();

        // fill gridview
        gvUsers.DataSource = userList.tblUserDetails;

        // bind gridview
        gvUsers.DataBind();
        Cache.Insert("UserDataSet", userList);

        return userList;
    }

    /// bind xml method
    // bind the xml gridview
    public void BindXMLGridView()
    { 
        // gridview xml data
        gvXML.DataSource = myBusinessLayer.GetUserXMLFile();
        gvXML.DataBind();
    }

    // update XML button
    public void btnUpdateXML_Click(object sender, EventArgs e)
    { 
        // bind data
        gvXML.DataSource = myBusinessLayer.WriteUserXMLFile(Cache);
        gvXML.DataBind();
    }


    /// update form
    // clears the form & binds gridview
    private void UpdateForm(string results)
    { 
        // clear form
        ClearInputs(Page.Controls);

        Master.UserFeedBack.Text = results;

        BindUserGrid();
    }
}