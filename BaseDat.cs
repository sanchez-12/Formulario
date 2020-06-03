using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;

namespace Formulario
{
    public class BaseDat
    {
        public MySqlCommand comando = new MySqlCommand();

        String cadena = "Server=localhost; Database=FormsRegio; Uid=root; Password=regio1234;";
        MySqlConnection conexion = new MySqlConnection();

        public BaseDat()
        {
            conexion.ConnectionString = cadena;
        }

        public void Conectar()
        {
            if (conexion.State.Equals(ConnectionState.Closed))
            {
                conexion.Open();
                MessageBox.Show("Conexion exitosa a la Base de Datos");
            }
            else
            {
                MessageBox.Show("La conexion a la Base de Datos se encuentra abierta");
            }
        }

        public void Desconectar()
        {
            if (conexion.State.Equals(ConnectionState.Open))
            {
                conexion.Close();
                MessageBox.Show("Se cerro la conexion exitosamente");
            }
            else
            {
                MessageBox.Show("La conexion se encuentra cerrada");
            }
        }

        public void crearComando(String sentenciaMysql)
        {
            comando.Connection = conexion;
            comando.CommandType = CommandType.Text;
            comando.CommandText = sentenciaMysql;
        } 

        public MySqlDataReader ejecutarComando()
        {
            MySqlDataReader reader = comando.ExecuteReader();
            return reader;
        }

        public int ejecutarComandoInt()
        {
            return comando.ExecuteNonQuery();
        }
    }
}