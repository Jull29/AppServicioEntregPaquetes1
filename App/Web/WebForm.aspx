<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="App.Web.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 384px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
    
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
    <br />
    
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-top: 2px; margin-bottom: 33px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
&nbsp;<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="address"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" style="margin-top: 0px">
            <EditItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Box:
                <asp:TextBox ID="BoxTextBox" runat="server" Text='<%# Bind("Box") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Box:
                <asp:TextBox ID="BoxTextBox" runat="server" Text='<%# Bind("Box") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Box:
                <asp:Label ID="BoxLabel" runat="server" Text='<%# Bind("Box") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getBills" TypeName="App.Datos.PersonRepositorios"></asp:ObjectDataSource>
        <br />   
        <asp:Label ID="Label4" runat="server" Text="city"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
       
        <asp:Label ID="Label5" runat="server" Text="state"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
       
        <asp:Label ID="Label6" runat="server" Text="box"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
          <br />
        <asp:Button ID="Button2" runat="server" Text="Eviar" OnClick="Button2_Click" />
        
          
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
          
        <asp:Button ID="Button1" runat="server" Text="Limpiar" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
    </form>
</body>
</html>
