using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileStoreEntityFramework
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String query = "",data="";
            Connection conn = new Connection();

            query = "select * from Product";
            DataTable tbl = new DataTable();
            tbl = conn.Srch(query);
            if (tbl.Rows.Count>0) {
                for (int y=0;y<tbl.Rows.Count;y++) {
                    data = data+"<div class='ok'><a href='#'><h2>"+tbl.Rows[y]["MCompany"]+"</h2><div class='thumbnail'>";
                    data = data + "<img src='Mobile/" + tbl.Rows[y]["MPhoto"] + "' height='300px' width='200px'/></div>";
                    data = data + "<div class='caption'>Price--"+tbl.Rows[y]["MPrice"]+"<br/>Specification--"+tbl.Rows[y]["MSpecification"]+"</div></div></a></div>";

                }
                record.InnerHtml = data;

            }



        }
    }
}