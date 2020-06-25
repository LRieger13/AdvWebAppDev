using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgUserDetailsConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // check if postback
        try
        {
            if (PreviousPage.IsCrossPagePostBack)
            {
                // if true, put info from last page into these labels here
                lblFName.Text = PreviousPage.FirstName.Text;
                lblLName.Text = PreviousPage.LastName.Text;
                lblLocation.Text = PreviousPage.Street.Text + " " + PreviousPage.City.Text + ", " + PreviousPage.State.Text;
                lblEmail.Text = PreviousPage.Email.Text;
                lblPassword.Text = PreviousPage.Password.Text;
                lblFavLang.Text = PreviousPage.FavLanguage.Text;
                lblLeastFav.Text = PreviousPage.LeastFav.Text;
                lblDateComplete.Text = PreviousPage.DateComplete.Text;
                lblPName.Text = PreviousPage.ProgramName.Text;
                lblLanguage.Text = PreviousPage.ProgramLanguage.Text;
            }
        }
        catch (Exception error)
        {
            Master.UserFeedBack.Text = error.Message;
        }

    }
}