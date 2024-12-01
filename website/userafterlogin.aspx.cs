using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website.classes;

namespace website
{
    public partial class userafterlogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclicklogin(object sender, EventArgs e)
        {
            SqlCommand cmdlogin = new SqlCommand("select adminname,admineposta,adminpassword from adminaccount where adminname=@name and admineposta=@eposta and adminpassword=@password", connection.sqlconnection);
            connection.CheckConnection();
            cmdlogin.Parameters.AddWithValue("@name", txtsigninname.Text);
            cmdlogin.Parameters.AddWithValue("@eposta", txtsignineposta.Text);

            //string shapassword = sha256converter.ComputeSha256Hash(txtloginpassword.Text);

            cmdlogin.Parameters.AddWithValue("@password", txtsigninpassword.Text);
            SqlDataAdapter dalogin = new SqlDataAdapter(cmdlogin);
            DataTable tablo = new DataTable();
            dalogin.Fill(tablo);
            if (tablo.Rows.Count > 0)
            {
                Response.Redirect("adminpage.aspx");
            }
            else
            {
                lblsigninmesaj.Text = "Eposta or Password Wrong ";
            }
        }
    }
}