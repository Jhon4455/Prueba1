﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Actividad1_Eval3
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Profesores.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FrmPadre.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
    }
}