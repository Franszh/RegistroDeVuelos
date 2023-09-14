using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroDeVuelos
{
    public partial class ConsultarVuelos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var myPath = $"{Server.MapPath(".")}/VuelosRegistrados.txt";

            if (File.Exists(myPath) && !String.IsNullOrWhiteSpace(File.ReadAllText(myPath))) 
            {
                StreamReader streamReader = new StreamReader($"{Server.MapPath(".")}/VuelosRegistrados.txt");
                String[] lines = (streamReader.ReadToEnd().Trim()).Split('\n');//Trim para evitar que las lineas se coloquen en cualquier lado
                streamReader.Close();
                Label1.Text = String.Empty;
                var countline = 1;
                foreach (var line in lines)
                {
                    if (countline % 3 == 0)
                    {
                        Label1.Text += $"{line}<br/>";
                        Label1.Text += "<hr>";
                    }
                    else { 
                        Label1.Text += $"{line}<br/>"; 
                    }
                    countline++;
                    
                }
                

                
            }else Label1.Text = "no hay ningun vuelo cargado";
        }
    }
}