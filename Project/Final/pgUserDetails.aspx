<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="pgUserDetails.aspx.cs" Inherits="pgUserDetails" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="ContentArea1" ContentPlaceHolderID="Dashboard" runat="server">
    <br />
        <asp:Label ID="lblCreateNew" runat="server" BackColor="#325000" Font-Names="FreesiaUPC" Text="Create New User:" Width="300px" Font-Bold="True" Font-Size="Larger" ForeColor="White"></asp:Label>
        <br />
        <br />
    <asp:Label ID="lblFirstName" runat="server" Text="First Name:" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" Height="20px" Style="position: relative" Width="128px"></asp:TextBox>
    <br />
    <asp:Label ID="lblLastName" runat="server" Text="Last Name:" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtLastName" runat="server" Height="20px" Style="position: relative" Width="128px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblStreet" runat="server" AccessKey=" " Text="Street:" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtStreet" runat="server" Style="position: relative; top: 0px; left: 0px; height: 23px; width: 175px;" Height="20px"></asp:TextBox>
    <br />
    <asp:Label ID="lblCity" runat="server" Text="City:" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server" Height="20px" Style="position: relative" Width="128px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    
    <br />
        
    
    <asp:Label ID="lblState" runat="server" Text="State:" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtState" runat="server" Height="20px" Width="33px"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />    
    <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;<br />
        <asp:TextBox ID="txtEmail" runat="server" Height="20px" Style="position: relative; top: 0px; left: 0px; width: 136px;"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />    
    <asp:Label ID="lblPassword" runat="server" Text="Password:" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    <br />
        <asp:TextBox ID="txtPassword" runat="server" Height="20px" Style="position: relative; top: 0px; left: 0px; width: 136px;"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Button ID="btnFindUser" runat="server" Font-Bold="True" ForeColor="#006666" Font-Names="FreesiaUPC" Text="FIND USER" Font-Size="Large" OnClick="btnFind_Click" Height="30px" Width="110px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCreate" runat="server" Font-Bold="true" ForeColor="#006600" Font-Names="FreesiaUPC" Text="CREATE" Font-Size="Larger" PostBackUrl="~/pgUserDetailsConfirm.aspx" Height="35px" OnClick="btnCreate_Click" Width="95px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnUpdateUser" runat="server" Font-Bold="True" ForeColor="#996633" Font-Names="FreesiaUPC" Text="UPDATE USER" Font-Size="Large" OnClick="btnUpdate_Click" Height="30px" Width="110px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnClear" runat="server" Font-Bold="True" ForeColor="Maroon" Font-Names="FreesiaUPC" Text="CLEAR" Font-Size="Large" OnClick="btnClear_Click" Height="25px" Width="95px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />

</asp:Content>

<asp:Content ID="ContentArea2" ContentPlaceHolderID="Tabs" runat="server">
        <br />
        <asp:Label ID="lblPrograms" runat="server" BackColor="#325000" Font-Names="FreesiaUPC" Text="Account Details:" Width="300px" Font-Bold="True" Font-Size="Larger" ForeColor="White" style="margin-left: 10px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblFav" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Favorite Programming Language:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtFav" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lblLeast" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Least Favorite Programming Language:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="txtLeast" runat="server"></asp:TextBox>

    
        <br />
        <asp:Label ID="lblDate" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Date of Last Completed Program:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>

        <br />
        <asp:Label ID="lblProgramName" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Name of Last Completed Program:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtProgramName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblProgramLanguage" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Language used in Last Completed Program:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtProgramLanguage" runat="server"></asp:TextBox>


    
        <br />


    
    <br />
    <asp:Label ID="lblGVDataBase" runat="server" Text="USERS IN DATABASE:" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="Larger" Font-Underline="True" ForeColor="#006666"></asp:Label>
    <asp:GridView ID="gvUsers" runat="server" Width="140px">
    </asp:GridView>
    <br />
    <asp:Label ID="lblGVXML" runat="server" Text="USERS IN XML:" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="Larger" Font-Underline="True" ForeColor="#006666"></asp:Label>
    <asp:GridView ID="gvXML" runat="server">
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnUpdateXML" runat="server" Font-Bold="True" ForeColor="#003366" Text="Update XML File" OnClick="btnUpdateXML_Click" />
</asp:Content>
