using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication10
{
    public partial class AjouterOuvrage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrNum.Visible = false;
        }
        protected void btnOk_Click(object sender, EventArgs e)
        {
            shadowBox1.Style["display"] = "none";
        }
            protected void btnValider_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("data source=.\\sqlexpress;initial catalog=librairie;user id=sa;password=P@ssw0rd");
            cn.Open();

            string req = "select * from ouvrage where numouvr = " + TextBox1.Text;
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            bool flag = false;
            if (dr.Read())
                flag = true;
 
            dr.Close();
            dr = null;

            if (flag)
            {
                lblErrNum.Visible = true;
            }
            else
            {


                req = "insert into ouvrage values (@num, @nom, @annee, @rub, @ed)";
                cmd.CommandText = req;
                cmd.Parameters.AddWithValue("@num", TextBox1.Text);
                cmd.Parameters.AddWithValue("@nom", TextBox2.Text);
                cmd.Parameters.AddWithValue("@annee", TextBox3.Text);
                cmd.Parameters.AddWithValue("@rub", TextBox4.Text);
                cmd.Parameters.AddWithValue("@ed", TextBox5.Text);
                cmd.ExecuteNonQuery(); 
                shadowBox1.Style["display"] = "block";
            }
            cmd = null;
            cn.Close();
            cn = null;

       
        
        }
    }
}