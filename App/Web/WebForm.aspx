<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="App.Web.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" GridLines="Both">
            <EditItemTemplate>
                Code:
                <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("Code") %>' />
                <br />
                Sender:
                <asp:TextBox ID="SenderTextBox" runat="server" Text='<%# Bind("Sender") %>' />
                <br />
                Recipients:
                <asp:TextBox ID="RecipientsTextBox" runat="server" Text='<%# Bind("Recipients") %>' />
                <br />
                Weight:
                <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
                <br />
                Cost:
                <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <InsertItemTemplate>
                Code:
                <asp:TextBox ID="CodeTextBox" runat="server" Text='<%# Bind("Code") %>' />
                <br />
                Sender:
                <asp:TextBox ID="SenderTextBox" runat="server" Text='<%# Bind("Sender") %>' />
                <br />
                Recipients:
                <asp:TextBox ID="RecipientsTextBox" runat="server" Text='<%# Bind("Recipients") %>' />
                <br />
                Weight:
                <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
                <br />
                Cost:
                <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                Code:
                <asp:Label ID="CodeLabel" runat="server" Text='<%# Bind("Code") %>' />
                <br />
                Sender:
                <asp:Label ID="SenderLabel" runat="server" Text='<%# Bind("Sender") %>' />
                <br />
                Recipients:
                <asp:Label ID="RecipientsLabel" runat="server" Text='<%# Bind("Recipients") %>' />
                <br />
                Weight:
                <asp:Label ID="WeightLabel" runat="server" Text='<%# Bind("Weight") %>' />
                <br />
                Cost:
                <asp:Label ID="CostLabel" runat="server" Text='<%# Bind("Cost") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
        </asp:FormView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getPackges" TypeName="App.Datos.BillsRepositories"></asp:ObjectDataSource>
    </form>
</body>
</html>
