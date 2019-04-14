using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileStoreEntityFramework
{
    public partial class ContactView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //get the id from the url and delte the specific record from the table
            if (Request.QueryString["id"]!=null) {
                Connection conn = new Connection();
                //passing the query to the main method and then delete the record
                String query = "delete from Contact where ID="+Convert.ToInt32(Request.QueryString["id"].ToString())+"";
                
                conn.InsDelUpdt(query);
                Response.Redirect("ContactView.aspx");


            }
            
        }
    }
}