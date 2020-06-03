using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Windows.Forms;

namespace Formulario
{
    public partial class Formularioo : System.Web.UI.Page
    {
        //MySqlConnection db = new MySqlConnection("Server=localhost; Database=FormsRegio; Uid=root; Password=regio1234;");
        BaseDat db = new BaseDat();
        string valor;
        string texto;
        int indice;

        public void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                datosUsuario();
            }

        }

        public void datosUsuario()
        {
            DataTable dt = new DataTable();

            using (MySqlConnection conexion = new MySqlConnection("Server=localhost; Database=FormsRegio; Uid=root; Password=regio1234;"))
            {
                string consulta = "select concat( nombre, ' ' ,apellido) as nombreCompleto from usuarios;";
                MySqlCommand cmd = new MySqlCommand(consulta,conexion );
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);

                cbSolicitante.DataSource = dt;
                cbSolicitante.DataTextField = "nombreCompleto";
                cbSolicitante.DataBind();
                cbSolicitante.Items.Insert(0, new ListItem("Seleccionar...", "0"));
            }

              
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            db.Conectar();

            string insert = $"insert into formulario (horaRegistro, cliente, producto, cantidad, tarea, "
             + $"frequerida, hrequerida, observaciones, quienSolicita, estatus)  values ('{DateTime.Now.ToString("HH:mm:ss")}', '{txtCliente.Text}',"
             + $" '{txtProducto.Text}',{txtCantidad.Text}, ";


            if (RadioButtonList1.SelectedItem != null)
            {
                if (Convert.ToString(RadioButtonList1.SelectedItem) == "Otros:")
                {
                    //txtOtros.Visible = true;
                    insert += $"'{txtOtros.Text}' , ";

                }else
                {
                    texto = RadioButtonList1.SelectedItem.Text;
                    valor = RadioButtonList1.SelectedItem.Value;
                    indice = RadioButtonList1.SelectedIndex;

                    insert += $"'{valor}', ";
                }  
            }

        
              insert += $"'{txtFecha.Text}', '{txtHora.Text}', '{txtObservaciones.Text}', '{cbSolicitante.SelectedItem.Value}', 'Abierto');";

            db.crearComando(insert);
            db.ejecutarComando();
            db.Desconectar();

        }

        protected void btnPreprensa_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Preprensa.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToString(RadioButtonList1.SelectedItem) == "Otros:")
            {
                txtOtros.Visible = true;
            }
        }
    }
}