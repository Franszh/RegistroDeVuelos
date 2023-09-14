using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroDeVuelos
{
    public partial class FormCarga : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text.Equals("select") || TextBox1.Text == String.Empty || TextBox2.Text == String.Empty)
            {
                labelinfo.ForeColor = Color.Red;
                labelinfo.Text = "Seleccione los datos correspondientes";
            }
            else
            {
                StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/VuelosRegistrados.txt",true);

                streamWriter.WriteLine($"Vuelo: {DropDownList1.Text}");
                streamWriter.WriteLine($"Fecha: {TextBox1.Text}");
                streamWriter.WriteLine($"Hora: {TextBox2.Text}");
                streamWriter.Close();
                if (File.Exists($"{Server.MapPath(".")}/VuelosRegistrados.txt"))
                {
                    labelinfo.ForeColor = Color.Green;
                    labelinfo.Text = "Se ha creado el archivo correctamente";
                }
                else
                {
                    labelinfo.Text = "No se ha creado el archivo";
                }
            }
        }
    }
}