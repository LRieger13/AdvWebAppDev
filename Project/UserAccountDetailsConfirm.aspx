<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WEB460Project.master" CodeFile="UserAccountDetailsConfirm.aspx.cs" Inherits="UserAccount_DetailsConfirm" %>

<%@ MasterType VirtualPath="~/WEB460Project.master" %>



<asp:Content id="UserDetails" contentplaceholderid="Tabs" runat="server">
    <asp:Panel ID="Submit" runat="server" BackColor="lightsteelblue" Height="725px" Font-Size="Large" HorizontalAlign="Center">
        
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="Edit Information:" Font-Size="XX-Large" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFName" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Larger" Text="First Name: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" Height="30px" Width="150px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLName" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="Last Name: " Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsername" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="Email:" Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsername" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Larger" Text="Password:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblStreet" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="Street:" Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtStreet" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCity" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="City:" Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtCity" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="28px" width="148px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblState" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="State:" Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtState" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="28px" width="75px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFavorite" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="Favorite Programming Language:" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFavLanguage" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" Height="30px" Width="230px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLeast" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Text="Least Favorite Programming Language:" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtLeastFavLang" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="230px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="btnUserAccountSubmit" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Medium" ForeColor="#006600" Text="Submit" Width="80px" PostBackUrl="~/UserAccountDetails.aspx"  />
        

    </asp:Panel>

</asp:Content>


<asp:Content id="UserDash" contentplaceholderid="Dashboard" runat="server">
    <asp:Panel ID="AccountDash" runat="server" BackColor="lightsteelblue" Height="725px">
        <img style="padding: 100px 0 0 155px; height: 150px; width: 150px;" src="Images/monkey.png" />

        
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEdit" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Medium" ForeColor="#FF3300" Text="Edit Information" Width="125px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUserAccount" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Medium" ForeColor="#006600" Text="User Account Details" Width="150px" />

        
    </asp:Panel>

</asp:Content>