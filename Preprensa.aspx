<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preprensa.aspx.cs" Inherits="Formulario.Preprensa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <title>
        Consulta Preprensa
    </title>
    <style>
         body{
            background-color:cadetblue;
            text-align:left;
            margin-top:40px;
            font-size:large;
            font:monospace;
        }
        .auto-style1 {
            width: 325px;
            height: 97px;
            margin-top: 0%;
            margin-left: 2%;
            float:left;
            margin-bottom: 45px;       
        }
        .auto-style2 {}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <!--logo-->
    <div class="auto-style1">
            <img alt="logo" class="auto-style1" src="Imagenes/rci%20png.png" />&nbsp;&nbsp;&nbsp; &nbsp; 
            <br />
    </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Estatus"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddEstatus" runat="server" CssClass="auto-style2" Height="30px" Width="194px" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
  &nbsp;&nbsp;
        <asp:GridView ID="gvDatos" runat="server" AutoGenerateColumns="False" CellPadding="4"
            ForeColor="#333333" GridLines="Vertical" Height="35px" Width="114px" 
            EnableViewState="False" OnRowCommand="gvDatos_RowCommand" Visible="False" Font-Bold="False" Font-Names="Bell MT" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" DataKeyNames="cliente">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Font-Italic="False" Font-Names="Bell MT" Font-Overline="False" Font-Size="Large" Wrap="True" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderColor="#993366" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

            <Columns>
                <asp:ButtonField HeaderText="Editar" ImageUrl="~/Imagenes/pencil-square-.png" Text="Edit" CommandName="btnEditar" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:ButtonField>
                <asp:BoundField DataField="horaRegistro" HeaderText="Hora de Registro" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="cliente" HeaderText="Cliente" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="producto" HeaderText="Producto"></asp:BoundField>
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="tarea" HeaderText="Actividad" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="fRequerida" HeaderText="Fecha Requerida" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="hRequerida" HeaderText="Hora Requerida" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="quienSolicita" HeaderText="Solicitante" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="estatus" HeaderText="Estatus" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="secuencia" HeaderText="Secuencia"></asp:BoundField>
                <asp:BoundField DataField="enterado" HeaderText="Enterado"></asp:BoundField>
                <asp:BoundField DataField="fTermino" HeaderText="Fecha de Termino"></asp:BoundField>
                <asp:BoundField DataField="hTermino" HeaderText="Hora de Termino"></asp:BoundField>
                <asp:BoundField DataField="obsPreprensa" HeaderText="Observaciones Preprensa"></asp:BoundField>
            </Columns>

        </asp:GridView>

        <div class="modal fade" id ="edit" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" >
            <div class="modal-dialog">
                <div class="modal-content"> 
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-tittle" id="myModalLabel">Editar Registro</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Cliente</label>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <label>Producto</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <asp:TextBox ID="txtCliente" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:TextBox ID="txtProducto" runat="server" Enabled ="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Cantidad</label>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <label>Actividad</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <asp:TextBox ID="txtCantidad" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:TextBox ID="txtActividad" runat="server" Enabled ="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Fecha Requerida</label>
                            </div>
                            <div  class="col-md-4 col-md-offset-4">
                                <label>Hora Requerida</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <asp:TextBox ID="txtFRequerida" runat="server" Enabled="false" DataFormatString="&quot;{0:dd/MM/yyyy}&quot;" ></asp:TextBox>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:TextBox ID="txtHRequerida" runat="server" Enabled ="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Observaciones</label>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <label>Solicitante</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <asp:TextBox ID="txtObservaciones" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:TextBox ID="txtSolicitante" runat="server" Enabled ="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Estatus</label>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <label>Secuencia</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <%--<asp:TextBox ID="txtEstatus" runat="server" Enabled="true"></asp:TextBox>--%>
                                <asp:DropDownList ID="dlEstatus" runat="server" CssClass="auto-style2" Height="30px" Width="194px">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:TextBox ID="txtSecuencia" runat="server" Enabled ="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Enterado</label>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <label>Fecha de Termino</label> 
                            </div>
                        </div>
                       <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <asp:TextBox ID="txtEnterado" runat="server" Enabled ="true"></asp:TextBox>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:TextBox ID="txtFechaTermino" runat="server" Enabled ="true" TextMode="Date" DataFormatString="{0:dd/MM/yyyy}"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Hora de Termino</label>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <label>Observaciones Preprensa</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <asp:TextBox ID="txtHoraTermino" runat="server" Enabled ="true" TextMode="Time"></asp:TextBox>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:TextBox ID="txtObsPreprensa" runat="server" Enabled ="true" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                         <asp:Button runat="server" Text="Actualizar" type="button" class="btn btn-primary" ID="btnActualizar" CommandName="btnActualizar" OnClick="btnActualizar_Click"></asp:Button>
                    </div>
                    </div>
                    </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $("#btnEditar").click(function () {
                    $("#edit").modal();
                    });
            });
        </script>

    </form>
</body>
</html>
