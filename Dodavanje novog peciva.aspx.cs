using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pekara
{
	public partial class Dodavanje_novog_peciva : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void odustani_Click(object sender, EventArgs e)
		{
			string SifraPeciva = sifraPeciva.Value.Trim();
			string NazivPekare = nazivPekare.Value.Trim();
			string NazivPeciva = nazivPeciva.Value.Trim();
			string VrstaPeciva = vrstaPeciva.Value.Trim();
			string TipBrašna = tipBrasna.Value.Trim();
			string Cena = cena.Value.Trim();

			string filePath = Server.MapPath("~/pekara.txt");

			try
			{
				string dataLine = $"{SifraPeciva}|{NazivPekare}|{VrstaPeciva}|{TipBrašna}|{Cena}{Environment.NewLine}";

				File.AppendAllText(filePath, dataLine);

				sifraPeciva.Value = string.Empty;
				nazivPekare.Value = string.Empty;
				nazivPeciva.Value = string.Empty;
				vrstaPeciva.Value = string.Empty;
				tipBrasna.Value = string.Empty;
				cena.Value = string.Empty;

				Response.Redirect("Prikaz.aspx");
			}
			catch (Exception ex)
			{
				Response.Write($"Error writing to file: {ex.Message}");
			}
		}
	}
}