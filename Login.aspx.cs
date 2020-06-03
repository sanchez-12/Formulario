using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Data;
using System.Text;

namespace Formulario
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            MySqlConnection conexion = new MySqlConnection("Server=localhost; Database=FormsRegio; Uid=root; Password=regio1234;");
            conexion.Open();

            MySqlCommand select = new MySqlCommand();
            //MySqlConnection conectar = new MySqlConnection();
            select.Connection = conexion;

            select.CommandText = "select *from usuarios where nom_usuario = '" + txtUsuario.Text +
                "' and contraseña = '" + txtContraseña.Text + "'";

            MySqlDataReader leer = select.ExecuteReader();

            if (leer.Read())
            {
                MessageBox.Show("Bienvenido");
                Response.Redirect("/Seleccion.aspx");
               
            }
            else
            {
                MessageBox.Show("Usuario y/o contraseña incorrecta. Vuelva a intentarlo");
            }

            conexion.Close();
        }
    }
    
}