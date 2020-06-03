<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formularioo.aspx.cs" Inherits="Formulario.Formularioo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario Ventas</title>
    <style>
         body{
            background-color:cadetblue;
            text-align:left;
            margin-top:40px;
            font-size:large;
            font:monospace;
        }
         .cliente{
             text-align:center;
            margin-top: 0px;
        }
         .Producto{
             text-align:center;
         }
         .cantida{
             text-align:center;
         }
         .fecha{
             text-align:center;
            margin-top: 0px;
        }
         .hora{
             text-align:center;
         }
         .observaciones{
             text-align:center;
         }
         .solicitante{
             text-align:center;
         }
         .estatus{
             text-align: center;
         }
        .auto-style1 {
            width: 203px;
            height: 89px;
            margin-top: -11%;
            margin-left: 2%;
            float:left;
            margin-bottom: 45px;
        }
        .solicitud {
            text-align: center;
            margin-top: -7%;
            float: right;
            margin-right:33%;
            font-size: 45px;
        }
        .contenido{
            margin-left:5%;
            width: 862px;
            height: 609px;
        }
        .auto-style2 {}
        .logo {
            width: 214px;
            height: 69px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="logo">

             <img alt="logo" class="auto-style1" src="Imagenes/rci%20png.png" />&nbsp;&nbsp;&nbsp; &nbsp; 
    
        </div>
        <div >
    
        <asp:Label ID="Label1" runat="server" Class="solicitud" Height="45px" Width="432px" >Solicitud de Trabajo</asp:Label>
    </div>
        <div class="contenido">
        <br />
        <br />
            <br />
        <asp:Label ID="Label2" runat="server" Text="Cliente"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Producto"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" Text="Cantidad"></asp:Label>
        <br />
        <asp:TextBox ID="txtCliente" runat="server" CssClass="cliente" Width="198px" text-align="center"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtProducto" runat="server" CssClass="Producto" Width="199px" text-align="center"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCantidad" runat="server" CssClass="cantida" Height="16px" Width="199px" text-align="center"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Trabajo a realizar"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Fecha Requerida" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Observaciones"></asp:Label>
            <br />
            &nbsp;&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" Align="left" CssClass="auto-style2" Height="114px" Width="230px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Check List</asp:ListItem>
            <asp:ListItem>Descargar Archivos</asp:ListItem>
            <asp:ListItem>Dummie</asp:ListItem>
            <asp:ListItem>Prueba de Color</asp:ListItem>
            <asp:ListItem>Ficha Técnica</asp:ListItem>
            <asp:ListItem>PC Plano de Costeo</asp:ListItem>
            <asp:ListItem>Plano al 100%</asp:ListItem>
            <asp:ListItem>PLC Planilla de Costeo</asp:ListItem>
            <asp:ListItem>PLF Planilla de Formación</asp:ListItem>
            <asp:ListItem>PM Plano Mecánico</asp:ListItem>
            <asp:ListItem>Propuesta de Preprensa</asp:ListItem>
            <asp:ListItem>Print Card</asp:ListItem>
                <asp:ListItem>Otros:</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFecha" runat="server" CssClass="fecha" TextMode="Date" Width="198px" text-align="center" Height="16px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
        <asp:TextBox ID="txtObservaciones" runat="server" CssClass="observaciones" Width="199px" text-align="center" Font-Size="Medium" Height="18px" TextMode="MultiLine"></asp:TextBox>       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
            <br />
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Hora Requerida"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Quien Solicita:"></asp:Label>
            <br />
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtHora" runat="server" CssClass="hora" TextMode="Time" Width="197px" text-align="center"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="cbSolicitante" runat="server" CssClass="solicitante" Height="20px" Width="203px" text-align="center">
        </asp:DropDownList>
        <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnPreprensa" runat="server" OnClick="btnPreprensa_Click" Text="Preprensa" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="Registrar"/>
            &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        &nbsp;&nbsp;<asp:TextBox ID="txtOtros" runat="server" Height="16px" Visible="False" Width="197px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            </div>
</form>


</body>
</html>
