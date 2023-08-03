using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;


namespace adodemo
{
    public partial class ado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-68AHC6HN\\SQLEXPRESS;Initial Catalog=login_credentials;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select password from login where username=@password", con);
            SqlParameter sp = new SqlParameter();
            sp.ParameterName = "password";
            sp.Value = TextBox1.Text.ToLower();
            cmd.Parameters.Add(sp);
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("Please enter both username and passwords");
            }
            else
            {

                try
                {
                    con.Open();
                    string passw = Convert.ToString((cmd.ExecuteScalar()));
                    if (TextBox2.Text.ToLower() == passw)
                    {
                        Response.Write("login succesful");
                    }
                    else
                    {
                        string ss = "Invalid";
                        Response.Write(ss);
                            
                       
                    }

                    con.Close();
                }
                catch (Exception ex)
                {
                    con.Close();
                }
            }
        }
    }
}
    

      
