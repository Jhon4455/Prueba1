using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace Actividad1_Eval3.Forms
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string iduser, estado;
            string User, nombre, apellido1, apellido2, email, clave;
            string creacion;

            iduser = txtIDUser.Text;
            User = txtUsuario.Text;
            nombre = txtNombre.Text;
            apellido1 = txtApellido1.Text;
            apellido2 = txtApellido2.Text;
            email = txtCorreo.Text;
            clave = txtClave.Text;
            creacion = Convert.ToString(DateTime.Now);
            estado = txtEstado.Text;


            string conex = System.Configuration.ConfigurationManager.ConnectionStrings["BDProgramacion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(conex);

            conexion.Open();
            SqlCommand cmd = new SqlCommand(string.Format("INSERT INTO UsuarioAdministrativo VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}')", new string[] { iduser, User, nombre, apellido1, apellido2, email, clave, creacion, estado }), conexion);
            cmd.ExecuteNonQuery();
            conexion.Close();

            //string conexBD = System.Configuration.ConfigurationManager.ConnectionStrings["BDProgramacion"].ConnectionString;

           // private SqlConnection conexion = new SqlConnection(conexBD);

            //conexion.Open;
            //SqlCommand cmd = new SqlCommand(, conexion);

        }
    }
}