using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;

namespace Actividad1_Eval3
{
    public partial class Profesores : System.Web.UI.Page
    {
        ConsultasSQL Sql = new ConsultasSQL();

        protected void Page_Load(object sender, EventArgs e)
        {
            //gvProfesor.DataSource = Sql.MostrarProfesor();
        }

        

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            
            string idProf, identif, nombre, apellido1, apellido2, direccion,telefono, email, sexo;

            idProf = txtIdProfesor.Text;
            identif = txtIndetif.Text;
            nombre = txtNombre.Text;
            apellido1 = txtApellido1.Text;
            apellido2 = txtApellido2.Text;
            direccion = txtDireccion.Text;
            telefono = txtTelefono.Text;
            email = txtCorreo.Text;
            sexo = DropDSexo.Text;

            if (Sql.Insertar(idProf, identif, nombre, apellido1, apellido2, direccion, telefono, email, sexo))
            {
                Response.Write("<script>alert(" + "'Datos Ingresados'" + ")</script>");
                Limpiar();
            } else
            {
                Response.Write("<script>alert(" + "'Error al ingresar Datos'" + ")</script>");
            }

            //string conex = System.Configuration.ConfigurationManager.ConnectionStrings["BDProgramacion"].ConnectionString;
            //SqlConnection conexion = new SqlConnection(conex);

            //conexion.Open();
            //SqlCommand cmd = new SqlCommand(string.Format("INSERT INTO Profesor VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}')", new string[] { idProf, identif, nombre, apellido1, apellido2, direccion, telefono, email, sexo }), conexion);
            //cmd.ExecuteNonQuery();
            //conexion.Close();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string idProf, identif, nombre, apellido1, apellido2, direccion, telefono, email, sexo;

            idProf = txtIdProfesor.Text;
            identif = txtIndetif.Text;
            nombre = txtNombre.Text;
            apellido1 = txtApellido1.Text;
            apellido2 = txtApellido2.Text;
            direccion = txtDireccion.Text;
            telefono = txtTelefono.Text;
            email = txtCorreo.Text;
            sexo = DropDSexo.Text;

            if (Sql.Actulizar(identif, nombre, apellido1, apellido2, direccion, telefono, email, sexo, idProf))
            {
                Response.Write("<script>alert(" + "'Datos Actualizados'" + ")</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert(" + "'Error al Actualizar'" + ")</script>");
            }
        }


        public void Limpiar()
        {
            txtIdProfesor.Text = "";
            txtIndetif.Text = "";
            txtNombre.Text = "";
            txtApellido1.Text = "";
            txtApellido2.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtCorreo.Text = "";
            DropDSexo.Text = "- Sexo -";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idProf = txtIdProfesor.Text;
            
            if (Sql.Eliminar(idProf))
            {
                Response.Write("<script>alert(" + "'Registro Eliminado'" + ")</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert(" + "'Error al Eliminar'" + ")</script>");
            }
        }
    }
}