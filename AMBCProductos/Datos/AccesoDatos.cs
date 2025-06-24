using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace AMBCProductos.Datos  
{
    public class AccesoDatos
    {
        //CadenaConexion:  Data Source=172.16.10.196;Initial Catalog = TUPPI; User ID = alumno1w1; Password=alumno1w1
        //CadenaConexionLocal:  Data Source = localhost; Initial Catalog = TUPPI; Integrated Security = True; Encrypt=False

        private string CadenaConexion = Properties.Resources.CadenaConexion;
        private SqlConnection conexion;
        private SqlCommand comando;
        private SqlDataReader lector;

        public AccesoDatos()
        {
            conexion = new SqlConnection(CadenaConexion);
        }
        private void Conectar()
        {
            conexion.Open();
            comando = new SqlCommand();
            comando.Connection = conexion;
            comando.CommandType = CommandType.Text;
        }
        public void Desconectar()
        {
            conexion.Close();
        }
        public DataTable ConsultarTabla(string nombreTabla)
        {
            DataTable tabla = new DataTable();
            this.Conectar();
            comando.CommandText = "SELECT * FROM " + nombreTabla;
            tabla.Load(comando.ExecuteReader());
            this.Desconectar();
            return tabla;
        }
        public DataTable ConsultarBD(string consultaSQL)
        {
            DataTable tabla = new DataTable();
            this.Conectar();
            comando.CommandText = consultaSQL;
            tabla.Load(comando.ExecuteReader());
            this.Desconectar();
            return tabla;
        }
        public int ActualizarBD(string consultaSQL)
        {
            int filasAfectadas = 0;
            this.Conectar();
            comando.CommandText = consultaSQL;
            filasAfectadas = comando.ExecuteNonQuery();
            this.Desconectar();
            return filasAfectadas;
        }
        public int ActualizarBD(string consultaSQL, List<Parametro> lista)
        {
            int filasAfectadas = 0;
            this.Conectar();
            comando.CommandText = consultaSQL;
            foreach (Parametro p in lista)
            {
                comando.Parameters.AddWithValue(p.Nombre, p.Valor);
            }
            filasAfectadas = comando.ExecuteNonQuery();
            this.Desconectar();
            return filasAfectadas;
        }

    }
}
