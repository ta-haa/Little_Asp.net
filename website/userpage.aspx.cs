using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using website.classes;
using Label = System.Web.UI.WebControls.Label;

namespace website
{
    public partial class userpage1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnclicklogin(object sender, EventArgs e)
        {
            SqlCommand cmdlogin = new SqlCommand("select username,usereposta,userpassword from useraccount where username=@name and usereposta=@eposta and userpassword=@password", connection.sqlconnection);
            connection.CheckConnection();
            cmdlogin.Parameters.AddWithValue("@name", txtloginname.Text);
            cmdlogin.Parameters.AddWithValue("@eposta", txtlogineposta.Text);

            string shapassword = sha256converter.ComputeSha256Hash(txtloginpassword.Text);

            cmdlogin.Parameters.AddWithValue("@password", shapassword);
            SqlDataAdapter dalogin = new SqlDataAdapter(cmdlogin);
            DataTable tablo = new DataTable();
            dalogin.Fill(tablo);
            if (tablo.Rows.Count > 0)
            {
                lblwelcome.Text = "Welcome " + txtloginname.Text;
                Response.Redirect("userafterlogin.aspx");
            }
            else
            {
                lblloginmesaj.Text = "Eposta or Password Wrong ";
            }


            




        }
        protected void btnclicksignin(object sender, EventArgs e)
        {
            

                if (lblsignincaptcha.Text == txtsignincaptcha.Text)
                {
                    SqlCommand cmdsignin = new SqlCommand("insert into useraccount(username,usereposta,userpassword) values (@name,@eposta,@password) ", connection.sqlconnection);
                    connection.CheckConnection();
                    cmdsignin.Parameters.AddWithValue("@name", txtsigninname.Text);
                    cmdsignin.Parameters.AddWithValue("@eposta", txtsignineposta.Text);

                    string shapassword = sha256converter.ComputeSha256Hash(txtsigninpassword.Text);

                    cmdsignin.Parameters.AddWithValue("@password", shapassword);
                    cmdsignin.ExecuteNonQuery();
                }
                else
                {
                    lblsigninmesaj.Text = "hata";
                }









            }





        }
}
