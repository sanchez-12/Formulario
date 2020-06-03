<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Seleccion.aspx.cs" Inherits="Formulario.Seleccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <title></title>
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
        .logo{
            margin-top:-10%;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo">
            <img alt="logo" class="auto-style1" src="Imagenes/rci%20png.png" />
            <br />
            <br />
        </div>
        <div class="contenido">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Seleccione su area"></asp:Label>
               
            </div>
             <br />
            <div class="row">
                <asp:Button ID="btnVentas" runat="server" Text="Ventas" OnClick="btnVentas_Click" />
                &nbsp;
                <asp:Button ID="btnPreprensa" runat="server" Text="Preprensa" OnClick="btnPreprensa_Click" />
            </div>
       </div>
    </form>
</body>
</html>
