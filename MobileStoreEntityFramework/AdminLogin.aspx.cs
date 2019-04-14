using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace MobileStoreEntityFramework
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            if (!txtUserName.Text.ToString().Equals("") && !txtPassword.Text.ToString().Equals("")) {


                Connection obj = new Connection();
                // admin login to check the user name is correct or not if its correct then the next page will be open other wise generate an error message
                String query = "select * from AdminLogin where MUserName='"+txtUserName.Text.ToString()+"' and MPassword='"+txtPassword.Text.ToString()+"'";
                DataTable tbl = new DataTable();
                tbl = obj.Srch(query);
                if (tbl.Rows.Count>0) {
                    Response.Redirect("MainPage.aspx");
                    error.InnerHtml = "";
                    
                }
                else {
                    error.InnerHtml = "Invalid User Name or Password";
                }

            }

                            

        }
    }
}