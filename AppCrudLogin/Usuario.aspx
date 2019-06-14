<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="AppCrudLogin.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Usuarios</title>
</head>
    <h2>Bienvenidos a Gestion de Usuarios</h2>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UsuarioID" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="UsuarioID" HeaderText="UsuarioID" ReadOnly="True" SortExpression="UsuarioID" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Contrasena" HeaderText="Contrasena" SortExpression="Contrasena" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginCrudConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [UsuarioID] = @UsuarioID" InsertCommand="INSERT INTO [Usuario] ([Nombre], [Apellido], [Correo], [Contrasena]) VALUES (@Nombre, @Apellido, @Correo, @Contrasena)" ProviderName="<%$ ConnectionStrings:LoginCrudConnectionString1.ProviderName %>" SelectCommand="SELECT [UsuarioID], [Nombre], [Apellido], [Correo], [Contrasena] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Correo] = @Correo, [Contrasena] = @Contrasena WHERE [UsuarioID] = @UsuarioID">
                <DeleteParameters>
                    <asp:Parameter Name="UsuarioID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Contrasena" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Contrasena" Type="String" />
                    <asp:Parameter Name="UsuarioID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
