using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppCrudLogin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                DataSetLoginTableAdapters.UsuarioTableAdapter obj = new DataSetLoginTableAdapters.UsuarioTableAdapter();
                String UsuarioContraseña = obj.login(txtUsuario.Text, txtContraseña.Text);
                if(UsuarioContraseña != null)
                {
                    Session["Usuario"] = UsuarioContraseña;
                    Response.Redirect("Principal.aspx");
                }
            }
            catch
            {
                lblError.Text = "Usuario o Contraseña Incorrecta";
            }
        }
    }
}