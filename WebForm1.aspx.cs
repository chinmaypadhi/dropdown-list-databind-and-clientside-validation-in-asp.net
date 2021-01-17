using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace dropdown_in_asp.net
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.;database=master;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = "select *from chinmay";
                    cmd.Connection = con;
                    con.Close();
                    DataTable dt = new DataTable();
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    adp.Fill(dt);
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataBind();
                    DropDownList1.DataTextField = "ch_id";
                    DropDownList1.DataValueField = "ch_id";
                    DropDownList1.DataBind();

                }

            }

        }
    }
}