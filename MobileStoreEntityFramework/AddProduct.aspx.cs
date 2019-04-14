using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace MobileStoreEntityFramework
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            //random class is used to store the pic of the pic to the server with uniq name of the file and also store the 
            Random rdx = new Random();

            int rdxNumber = rdx.Next(200, 20000);

            if (txtFile.HasFile)
            {
                /* try
                 {
                  */
                    Connection obj = new Connection();

                    string filename = Path.GetFileName(txtFile.FileName);
                    txtFile.SaveAs(Server.MapPath("~/Mobile/") + rdxNumber + filename);

                    filename = rdxNumber + filename;

                    String query = "";
                    DataTable tbl = new DataTable();
                //insert the code to the table for working 
                    query = "select * from Stock where MCompany='" + txtCompany.Text.ToString() + "' and MModel='" + TxtModelNo.Text.ToString() + "'";
                    tbl = obj.Srch(query);
               // error.InnerHtml = " mitti  "+tbl.Rows.Count;
                    if (tbl.Rows.Count > 0)
                    {
                        int oldqty = Convert.ToInt32(tbl.Rows[0]["MQty"].ToString());
                    //inser the code in the stock table to check the already exist or not if its is exist then update other wise enter new record 

                        oldqty = oldqty + Convert.ToInt32(TxtQty.Text.ToString());
                        query = "";
                        query = "update Stock set MQty="+oldqty+ " where MCompany='" + txtCompany.Text.ToString() + "' and MModel='" + TxtModelNo.Text.ToString()+ "'";

                        obj.InsDelUpdt(query);
                        


                    }
                    else {
                    //record theproduct if it is new 
                    query = "";
                        query = "insert into Stock(MCompany,MModel,MQty) values('" + txtCompany.Text.ToString() + "','" + TxtModelNo.Text.ToString() + "'," + Convert.ToInt32(TxtQty.Text.ToString()) + ")";

                        obj.InsDelUpdt(query);
                        

                    }

                    query = "";
                    query = "insert into Product(MCompany,MModel,MPrice,MSpecification,MQty,MPhoto) values('" + txtCompany.Text.ToString() + "','" + TxtModelNo.Text.ToString() + "'," + Convert.ToInt32(TxtPrice.Text.ToString()) + ",'" + TxtSpec.Text.ToString() + "'," + Convert.ToInt32(TxtQty.Text.ToString()) + ",'" + filename + "')";

                    obj.InsDelUpdt(query);
                    error.InnerHtml = "Product is Saved ";
                    Response.Redirect("AddProduct.aspx");
                /*}
                catch (Exception ex) {


                }*/
            }
        }
    }
}