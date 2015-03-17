using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App.Modelo;


namespace App.Web
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            long id = long.Parse(TextBox1.Text);
            long box = long.Parse(TextBox6.Text);
            App.Modelo.Person p = new App.Modelo.Person(id,
               TextBox2.Text,
               TextBox3.Text,
               TextBox4.Text,
               TextBox5.Text,
               box);
            App.Datos.PersonRepositorios data = new Datos.PersonRepositorios();
            data.addPerson(p);    
            Label7.Text = p.ToString();
            Server.Transfer("lista", true);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}