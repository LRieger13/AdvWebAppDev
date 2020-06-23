<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WEB460Project.master" CodeFile="UserAccountDetailsConfirm.aspx.cs" Inherits="UserAccount_DetailsConfirm" %>


<%@ MasterType VirtualPath="~/WEB460Project.master" %>

<asp:Content id="UserDetails" contentplaceholderid="Tabs" runat="server">
    <asp:Panel ID="Submit" runat="server" BackColor="lightsteelblue" Height="725px" Font-Size="Large" HorizontalAlign="Left">
        
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="XX-Large" Text="ACCOUNT INFORMATION:" Font-Underline="True" ForeColor="#CC0000"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFName" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Text="First Name: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" Height="30px" Width="150px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLName" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Text="Last Name: "></asp:Label>
        &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC3300" Text="Try Searching for user  &quot; Rieger &quot;"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsername" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Text="Email:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUsername" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPassword" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Text="Password:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblStreet" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Street:" Font-Size="Larger" ForeColor="#CC0000"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtStreet" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCity" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="City:" Font-Size="Larger" ForeColor="#CC0000"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="28px" width="148px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblState" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="State:" Font-Size="Larger" ForeColor="#CC0000"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtState" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="28px" width="75px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFavorite" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Favorite Programming Language:" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFavLanguage" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" Height="30px" Width="230px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLeast" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Least Favorite Programming Language:" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="txtLeastFavLang" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="230px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblDateCompleted" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Font-Size="X-Large" ForeColor="#CC3300" Text="Date of Last Completed Project:"></asp:Label>
        

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDateCompleted" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#FF3300" height="30px" width="230px"></asp:TextBox>
        

        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUserAccountSubmit" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="XX-Large" ForeColor="#006600" Text="SUBMIT" Width="90px" PostBackUrl="~/UserAccountDetails.aspx"  />
        

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="Large" ForeColor="#CC3300" OnClick="btnClear_Click" Text="CLEAR" Width="125px" />
        <br />
        <br />
        

    </asp:Panel>

</asp:Content>


<asp:Content id="UserDash" contentplaceholderid="Dashboard" runat="server">
    <asp:Panel ID="AccountDash" runat="server" BackColor="lightsteelblue" Height="725px">
        <img style="padding: 100px 0 0 155px; height: 150px; width: 150px;" src="Images/monkey.png" />

        
        <!-- SHOW USEABLE ADD/UPDATE/DELETE IF CORRECT USER-->
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFindUser" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="XX-Large" ForeColor="#CC3300" OnClick="btnFindUser_Click" Text="Find User" Width="105px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUserID" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="User ID:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="userID" runat="server" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAddUser" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="X-Large" ForeColor="#006600" Text="ADD USER" Width="125px" OnClick="btnAddUser_Click" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdateUser" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="X-Large" ForeColor="#CC3300" Text="UPDATE USER" Width="125px" OnClick="btnUpdateUser_Click" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDeleteUser" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="X-Large" ForeColor="#990033" Text="DELETE USER" Width="125px" OnClick="btnDeleteUser_Click" />
        <br />

        
    </asp:Panel>

</asp:Content>