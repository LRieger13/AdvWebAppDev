<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WEB460Project.master" CodeFile="UserAccountDetails.aspx.cs" Inherits="UserAccountDetails" %>

<%@ PreviousPageType VirtualPath="~/UserAccountDetailsConfirm.aspx" %>
<%@ MasterType VirtualPath="~/WEB460Project.master" %>


<asp:Content id="UserDetails" contentplaceholderid="Tabs" runat="server">
    <asp:Panel ID="AccountDetails" runat="server" BackColor="lightsteelblue" Height="800px" Width="1000px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblName" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Name: " Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsersName" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Height="30px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblAddress" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Address: " Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLocation" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" height="30px" width="108px"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUser" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Username:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsername" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#669999" height="30px" width="108px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPass" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Password: " Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPassword" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#669999" height="30px" width="108px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFavorite" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Favorite Programming Language:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFavLanguage" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Height="30px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLeast" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Least Favorite Programming Language:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLeastFavLang" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" height="30px" width="125px"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblDate" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Date Last Completed Project:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblDateComplete" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" height="25px" width="125px"></asp:Label>
        <br /> &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblStats" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="XX-Large" Font-Underline="True" ForeColor="#003366" Text="Personal Stats:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblProgramaholics]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" Height="175px" style="margin-left: 36px" Width="319px" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="FavLang" HeaderText="FavLang" SortExpression="FavLang" />
                <asp:BoundField DataField="LeastFavLang" HeaderText="LeastFavLang" SortExpression="LeastFavLang" />
                <asp:BoundField DataField="DateComplete" HeaderText="DateComplete" SortExpression="DateComplete" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnExport" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Medium" ForeColor="#276C13" Text="Export" />


    </asp:Panel>

</asp:Content>


<asp:Content id="UserDash" contentplaceholderid="Dashboard" runat="server">
    <asp:Panel ID="AccountDash" runat="server" BackColor="lightsteelblue" Height="800px" Width="375px">
        <img style="padding: 100px 0 0 155px; height: 150px; width: 150px;" src="Images/monkey.png" />

        
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEdit" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Medium" ForeColor="#FF3300" Text="Edit Information" PostBackUrl="~/UserAccountDetailsConfirm.aspx" Width="125px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUserAccount" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Medium" ForeColor="#006600" Text="User Account Details" PostBackUrl="~/UserAccountDetails.aspx" Width="150px" />

        
    </asp:Panel>

</asp:Content>