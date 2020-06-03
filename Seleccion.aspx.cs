using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulario
{
    public partial class Seleccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVentas_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Formularioo.aspx");
        }

        protected void btnPreprensa_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Preprensa.aspx");
        }
    }
}