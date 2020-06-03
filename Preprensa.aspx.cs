using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Data;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using Button = System.Windows.Forms.Button;

namespace Formulario
{
    public partial class Preprensa : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("Server=localhost; Database=FormsRegio; Uid=root; Password=regio1234;");

        BaseDat bd = new BaseDat();
        DataTable dt = new DataTable();
        // int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                status();
                //gvDatos.DataSource();
                
            }
        }

        public void status()
        {

            conexion.Open();
            string consulta = $"select estatus from formulario group by estatus;";
            MySqlCommand comando = new MySqlCommand(consulta, conexion);
            MySqlDataAdapter da = new MySqlDataAdapter(comando);
            da.Fill(dt);

            ddEstatus.DataSource = dt;
            ddEstatus.DataTextField = "estatus";
            ddEstatus.DataBind();
            ddEstatus.Items.Insert(0, new ListItem("Seleccionar...", "0"));

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //DataSet ds = new DataSet();
            MySqlCommand cmd = new MySqlCommand();
            string consulta = $"select *from formulario where estatus = '{ddEstatus.SelectedItem.Value}';";
            MySqlDataAdapter da = new MySqlDataAdapter(consulta, conexion);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);

            try
            {
                if (ddEstatus.SelectedValue == "Abierto")
                {
                    gvDatos.DataSource = dt1;
                    gvDatos.DataBind();
                    gvDatos.Visible = true;
                }
                else if (ddEstatus.SelectedValue == "Cerrado")
                {
                    gvDatos.DataSource = dt1;
                    gvDatos.DataBind();
                    gvDatos.Visible = true;
                }
                else
                {
                    MessageBox.Show("Seleccionar estatus");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(Convert.ToString(ex));
                
                throw;
            }
        }

        protected void gvDatos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string cliente;
            try
            {
                if (e.CommandName.Equals("btnEditar"))
                {
                    dlEstatus.Items.Add("Abierto");
                    dlEstatus.Items.Add("Cerrado");

                    conexion.Open();
                    int index = Convert.ToInt32(e.CommandArgument);
                     cliente = gvDatos.DataKeys[index].Value.ToString();

                    string consulta = $"select cliente, producto, cantidad, tarea, frequerida, hrequerida, observaciones, " +
                        $"quienSolicita, estatus from formulario where cliente = '{cliente}'";
                    MySqlCommand cmd = new MySqlCommand(consulta, conexion);
                    MySqlDataReader leer = cmd.ExecuteReader();

                    if (leer.Read())
                    {
                        txtCliente.Text = leer["cliente"].ToString();
                        txtProducto.Text = leer["producto"].ToString();
                        txtCantidad.Text = leer["cantidad"].ToString();
                        txtActividad.Text = leer["tarea"].ToString();
                        txtFRequerida.Text = leer["frequerida"].ToString();
                        txtHRequerida.Text = leer["hrequerida"].ToString();
                        txtObservaciones.Text = leer["observaciones"].ToString();
                        txtSolicitante.Text = leer["quienSolicita"].ToString();
                        dlEstatus.Text = leer["estatus"].ToString();
                        //txtSecuencia.Text = leer["secuencia"].ToString();
                        //txtEnterado.Text = leer["enterado"].ToString();
                        //txtFechaTermino.Text = leer["fTermino"].ToString();
                        //txtHoraTermino.Text = leer["hTermino"].ToString();
                        //txtObsPreprensa.Text = leer["obsPreprensa"].ToString();

                        gvDatos.Visible = true;

                    }
                    else
                    {
                        MessageBox.Show("Error de consulta");
                    }


                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myModal", "$(document).ready(function() {$('#edit').modal();});", true);
                    gvDatos.Visible = true;

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(Convert.ToString(ex));
            }
          
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                conexion.Open();
                string sent = $"update formulario set estatus = '{dlEstatus.SelectedItem.Value}', secuencia = '{txtSecuencia.Text}', enterado = '{txtEnterado.Text}', " +
                    $"fTermino = '{txtFechaTermino.Text}', hTermino = '{txtHoraTermino.Text}', obsPreprensa = '{txtObsPreprensa.Text}' " +
                    $"where cliente = '{txtCliente.Text}'; ";
                MySqlCommand command = new MySqlCommand(sent, conexion);
                MySqlDataReader leer = command.ExecuteReader();

                if (leer.Read())
                {
                    MessageBox.Show("Error al actualizar");

                }
                else
                {
                    MessageBox.Show("Actualizado con exito");
                    string consulta = $"select *from formulario;";
                    MySqlDataAdapter da = new MySqlDataAdapter(consulta, conexion);

                    gvDatos.Visible = true;
                }
            }
            catch (Exception)
            {

                throw;
            }  
        }
    }
}