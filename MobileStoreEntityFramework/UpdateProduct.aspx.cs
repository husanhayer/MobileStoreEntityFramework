using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
namespace MobileStoreEntityFramework
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"]!=null) {
                int id = Convert.ToInt32(Request.QueryString["ID"].ToString());

                String query = "select * from Product where ID=" + id + "";
                DataTable tb = new DataTable();
                tb = obj.Srch(query);
                rsltrec.InnerHtml = "Complete Details ofd Phone to Update <br/>";
                if (tb.Rows.Count>0) {
                    rsltrec.InnerHtml = rsltrec.InnerHtml + "ID--" + tb.Rows[0]["ID"] + "<br/>";
                    rsltrec.InnerHtml = rsltrec.InnerHtml + "Company Name--" + tb.Rows[0]["MCompany"]+"<br/>";
                    rsltrec.InnerHtml = rsltrec.InnerHtml + "Model No--" + tb.Rows[0]["MModel"] + "<br/>";
                    rsltrec.InnerHtml = rsltrec.InnerHtml + "Price--" + tb.Rows[0]["MPrice"] + "<br/>";
                    rsltrec.InnerHtml = rsltrec.InnerHtml + "Specification--" + tb.Rows[0]["MSpecification"] + "<br/>";
                      rsltrec.InnerHtml = rsltrec.InnerHtml + "Qty--" + tb.Rows[0]["MQty"] + "Pecs <br/>";
                    

                }


            }


        }

        protected void btnSend_Click(object sender, EventArgs e)
        {


            Random rdx = new Random();

            int rdxNumber = rdx.Next(200, 20000);

            string filename = Path.GetFileName(txtFile.FileName);
            txtFile.SaveAs(Server.MapPath("~/Mobile/") + rdxNumber + filename);

            filename = rdxNumber + filename;





            String qry = "update Product set MCompany='"+ txtCompany.Text +"',MModel='"+TxtModelNo.Text +"',MPrice="+Convert.ToInt32(TxtPrice.Text)+",MSpecification='"+TxtSpec.Text+"',MQty="+Convert.ToInt32(TxtQty.Text)+" , MPhoto='"+filename+"' where ID="+Convert.ToInt32(txtID.Text.ToString())+" ";
            obj.InsDelUpdt(qry);


            Response.Redirect("UpdateProduct.aspx");
        }

    }
}