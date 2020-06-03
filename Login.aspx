<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Formulario.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        RCI Empaques Plegadizos
    </title>
    <style>
        body{
            background-color:cadetblue;
            text-align:center;
            margin-top:100px;
            font-size:large;
        }

        .contenido{
            padding:70px 30px;
            background-color:#99C9C3  ;
            margin-left:300px;
            margin-right:300px;
            margin-top:60px;
        }
        
        .auto-style1 {
            width: 361px;
            height: 127px;
        }

        .logo{
            margin-top:-10%;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="logo">
        <img alt="logo" class="auto-style1" src="Imagenes/rci%20png.png" />

    </div>
        <div class="contenido">
            <asp:Label ID="Label1" runat="server" ClientIDMode="Static" Text="INGRESAR"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
            <br />
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
            <br />
            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnEntrar" runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
        </div>
    </form>
</body>
</html>
