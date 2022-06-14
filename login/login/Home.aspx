<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="login.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 100%; width: 100%; background-color: aqua">
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h2>Medicines&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
        </div>
        <div>

        &nbsp;<asp:Label ID="Label1" runat="server" Text="Medicene Name"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Nmed" runat="server" CssClass="form-control" placeholder="Medicine Name"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Medicene Category"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="38px">
                <asp:ListItem>Syrup</asp:ListItem>
                <asp:ListItem>Tablet</asp:ListItem>
                <asp:ListItem>Capsule</asp:ListItem>
                <asp:ListItem>Ointment</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Medicene Quantity"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="qty" runat="server" CssClass="form-control" placeholder="Medicine Quantity"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Medicene Price"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="price" runat="server" CssClass="form-control" placeholder="Medicine Price"></asp:TextBox>
            <br />
            <br />
            <br />&nbsp;&nbsp;&nbsp;
            <asp:Button ID="insert" runat="server" Text="Insert" OnClick="insert_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="view" runat="server" Text="View" OnClick="view_Click" />
        </div>
        <div id="grid">

            <asp:GridView ID="mgrid" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="255px" Width="1569px">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
