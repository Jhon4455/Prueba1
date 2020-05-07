using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Actividad1_Eval3
{
    public class ConsultasSQL
    {
        //string conex = System.Configuration.ConfigurationManager.ConnectionStrings["BDProgramacion"].ConnectionString;
        //Esta seria la conexion a la base de datos de SQL Server
        private SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-O995B0B\\SQLSERVER;Initial Catalog=BDProgramacion;Persist Security Info=True;User ID=Jhon;Password= 12345678");
        private DataSet ds;

        public DataTable MostrarProfesor()
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand("Select identificacion, Nombre, Apellido1, Apellido2, Direccion, Telefono, Email, Sexo From Profesor", conexion);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ds = new DataSet();
            ad.Fill(ds, "tabla");
            conexion.Close();

            return ds.Tables["tabla"];
        }

       public bool Insertar(string idProf,string identif, string nombre, string apellido1, string apellido2, string direccion, string telefono, string email, string sexo)
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand(string.Format("INSERT INTO Profesor VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}')", new string[] { idProf, identif, nombre, apellido1, apellido2, direccion, telefono, email, sexo }), conexion);
            int filasAfectadas = cmd.ExecuteNonQuery();
            conexion.Close();

            if (filasAfectadas > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool Actulizar(string identif, string nombre, string apellido1, string apellido2, string direccion, string telefono, string email, string sexo, string idProf)
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand(string.Format("UPDATE Profesor SET identificacion = '{0}', Nombre = '{1}', Apellido1 = '{2}', Apellido2 = '{3}', Direccion = '{4}', Telefono = '{5}', Email = '{6}', Sexo = '{7}' where idProfesor = '{8}'", new string[] { identif, nombre, apellido1, apellido2, direccion, telefono, email, sexo, idProf }), conexion);
            int filasAfectadas = cmd.ExecuteNonQuery();
            conexion.Close();

            if (filasAfectadas > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool Eliminar(string idProf)
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand(string.Format("Delete From Profesor Where idProfesor = '{0}'", new string[] { idProf }), conexion);
            int filasAfectadas = cmd.ExecuteNonQuery();
            conexion.Close();

            if (filasAfectadas > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}