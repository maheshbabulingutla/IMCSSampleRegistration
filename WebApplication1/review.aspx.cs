using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDataFromSession();
        }

        public string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["imcsgroupdbConnectionString"].ConnectionString;
        }

        private void GetDataFromSession()
        {
            lbfirstname.Text = Session["faname"].ToString();
            lblastname.Text = Session["laname"].ToString();
            lbusername.Text = Session["usname"].ToString();
            lbpassword.Text = Session["pwd"].ToString();
            lbcnfpassword.Text = Session["cpwd"].ToString();
            lbbirthday.Text = Session["birth"].ToString();
            lbemail.Text = Session["em"].ToString();
            lbage.Text = Session["ag"].ToString();
            lbgender.Text = Session["ge"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SendDataToSession();

            Server.Transfer("~/Default.aspx");
        }

        private void SendDataToSession()
        {
            Session.Add("fnm", lbfirstname.Text);
            Session.Add("lanam", lblastname.Text);
            Session.Add("usnam", lbusername.Text);
            Session.Add("pw", lbpassword.Text);
            Session.Add("cpw", lbcnfpassword.Text);
            Session.Add("birt", lbbirthday.Text);
            Session.Add("ema", lbemail.Text);
            Session.Add("aged", lbage.Text);
            Session.Add("gen", lbgender.Text);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ExecuteInsert(lbfirstname.Text,
                lblastname.Text,
                lbusername.Text,
                lbpassword.Text,
                lbcnfpassword.Text,
                DateTime.Now,
                lbemail.Text,
                Convert.ToInt32(lbage.Text),
                Convert.ToString(lbgender.Text));
            Response.Redirect("admin.aspx");

        }

        private void ExecuteInsert(string fname, string lname, string uname, string pword, string cnfpword, DateTime bday, string emaild, int ages, string genders)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO registration(firstname, lastname, username, password, cfmpassword, birthday, email, age, gender ) " + " VALUES (@fname, @lname, @uname, @pword, @cnfpword, @bday, @emaild, @ages, @genders)";

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlParameter[] param = new SqlParameter[9];
                param[0] = new SqlParameter("@fname", SqlDbType.NChar, 10);
                param[1] = new SqlParameter("@lname", SqlDbType.NChar, 10);
                param[2] = new SqlParameter("@uname", SqlDbType.NChar, 10);
                param[3] = new SqlParameter("@pword", SqlDbType.NChar, 10);
                param[4] = new SqlParameter("@cnfpword", SqlDbType.NChar, 10);
                param[5] = new SqlParameter("@bday", SqlDbType.DateTime, 10);
                param[6] = new SqlParameter("@emaild", SqlDbType.NChar, 10);
                param[7] = new SqlParameter("@ages", SqlDbType.Int, 18);
                param[8] = new SqlParameter("@genders", SqlDbType.Char, 10);

                param[0].Value = fname;
                param[1].Value = lname;
                param[2].Value = uname;
                param[3].Value = pword;
                param[4].Value = cnfpword;
                param[5].Value = bday;
                param[6].Value = emaild;
                param[7].Value = ages;
                param[8].Value = genders;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}