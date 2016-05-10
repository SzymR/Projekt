using System;
using System.Xml.Linq;

namespace MasterPages.Menu_3
{
    public partial class Default : System.Web.UI.Page
    {
        private int indeksFilmy = 15;
        private int indeksAktorzy = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddFilm_Click(object sender, EventArgs e)
        {
            if (this.ddlSelectItem.SelectedIndex == 0)
            {
                string path = @"C:\Users\WioletaM\Source\Repos\Projekt2\Projekt\MasterPages\FilmList.xml";
                XDocument doc = XDocument.Load(path);

                XElement root = new XElement("Film");
                root.Add(new XAttribute("ID", ++indeksFilmy));
                root.Add(new XAttribute("Kategoria", this.DropDown_Kategorie.SelectedValue));
                root.Add(new XElement("Tytul", this.inputTytul.Text));
                root.Add(new XElement("Rezyser", this.inputRezyser.Text));
                root.Add(new XElement("Rok", this.inputRok.Text));

                doc.Element("FilmList").Add(root);
                doc.Save(path);
            }
            else if (this.ddlSelectItem.SelectedIndex == 1)
            {

                string path = @"C:\Users\WioletaM\Source\Repos\Projekt2\Projekt\MasterPages\Aktorzy.xml";
                XDocument doc = XDocument.Load(path);

                XElement root = new XElement("Aktor");
                root.Add(new XAttribute("ID", ++indeksAktorzy));
                root.Add(new XElement("Imie", this.inputImie.Text));
                root.Add(new XElement("Nazwisko", this.inputNazwisko.Text));

                doc.Element("Aktorzy").Add(root);
                doc.Save(path);
                
            }
        }

        protected void Unnamed_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ddlSelectItem_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.ddlSelectItem.SelectedIndex == 0)
            {
                MultiView1.ActiveViewIndex = -1;
                MultiView1.SetActiveView(ViewFilm);
            }
            else if (this.ddlSelectItem.SelectedIndex == 1)
            {
                MultiView1.ActiveViewIndex = -1;
                MultiView1.SetActiveView(ViewActor);
            }
        }
    }
}