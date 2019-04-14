using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileStoreEntityFramework
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection obj = new Connection();
            //delete the product from the record if it is 
            if (Request.QueryString["id"]!=null) {
                String Query= "";
                Query = "delete from Product where ID="+Convert.ToInt32(Request.QueryString["id"].ToString())+"";
                obj.InsDelUpdt(Query);
                Response.Redirect("ViewProduct.aspx");
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}