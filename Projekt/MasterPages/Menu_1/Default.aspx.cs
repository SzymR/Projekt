using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPages.Menu_1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //    string id = (String)GridView1.DataKeys[GridView1.SelectedIndex].Value; 
            XmlDataSource1.XPath = "/FilmList/Film[@ID=" + GridView1.SelectedDataKey.Value.ToString() + "]";
            
            DetailsView1.Visible = true;
        }
    }
}