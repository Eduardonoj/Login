<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AppCrudLogin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 141px;
        }
        .auto-style4 {
            height: 23px;
            width: 141px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Iniciar Sesion</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Usuario</td>
                    <td>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Contraseña</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtContraseña" runat="server" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Iniciar Sesion" />
                    </td>
                    <td>
                        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
