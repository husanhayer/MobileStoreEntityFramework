using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileStoreEntityFramework
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Connection con = new Connection();
            String query = "";
            //insert the record into the table for getting the information of the messages 
            query = "insert into  Contact (MName,MEmail,MPhone,MMsg) values('" + txtName.Text.ToString()+"','"+txtEmail.Text.ToString()+"','"+txtContact.Text.ToString()+"','"+txtMsg.Text.ToString()+"')";
            con.InsDelUpdt(query);
            error.InnerHtml = "We Will Contact u Soon ";

        }
    }
}