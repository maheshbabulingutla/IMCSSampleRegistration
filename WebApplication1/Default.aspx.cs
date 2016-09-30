using System;
using System.Web.UI;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page SessionPage = Page.PreviousPage;
            if (SessionPage != null)
            {
                firstname.Text = Session["fnm"].ToString();
                lastname.Text = Session["lanam"].ToString();
                username.Text = Session["usnam"].ToString();
                password.Text = Session["pw"].ToString();
                cnfpassword.Text = Session["cpw"].ToString();
                birthday.Text = Session["birt"].ToString();
                email.Text = Session["ema"].ToString();
                age.Text = Session["aged"].ToString();
                DropDownList1.Text = Session["gen"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
                //ExecuteInsert(firstname.Text,
                //    lastname.Text,
                //    username.Text,
                //    password.Text,
                //    cnfpassword.Text,
                //    DateTime.Now,
                //    email.Text,
                //    Convert.ToInt32(age.Text),
                //    Convert.ToString(DropDownList1.SelectedItem.Text));
            //Response.Redirect("review.aspx");

            AddDataToSession();
            Response.Redirect("review.aspx");

        }

        private void AddDataToSession()
        {
            Session.Add("faname", firstname.Text);
            Session.Add("laname", lastname.Text);
            Session.Add("usname", username.Text);
            Session.Add("pwd", password.Text);
            Session.Add("cpwd", cnfpassword.Text);
            Session.Add("birth", birthday.Text);
            Session.Add("em", email.Text);
            Session.Add("ag", age.Text);
            Session.Add("ge", DropDownList1.SelectedItem.Text);

        }


        //private void ExecuteInsert(string fname, string lname, string uname, string pword, string cnfpword, DateTime bday, string emaild, int ages, string genders)
        //{
        //    SqlConnection conn = new SqlConnection(GetConnectionString());
        //    string sql = "INSERT INTO registration(firstname, lastname, username, password, cfmpassword, birthday, email, age, gender ) " + " VALUES (@fname, @lname, @uname, @pword, @cnfpword, @bday, @emaild, @ages, @genders)";

        //        try
        //    {
        //        conn.Open();
        //        SqlCommand cmd = new SqlCommand(sql,conn);
        //        SqlParameter[] param = new SqlParameter[9];
        //        param[0] = new SqlParameter("@fname", SqlDbType.NChar, 10);
        //        param[1] = new SqlParameter("@lname", SqlDbType.NChar, 10);
        //        param[2] = new SqlParameter("@uname", SqlDbType.NChar, 10);
        //        param[3] = new SqlParameter("@pword", SqlDbType.NChar, 10);
        //        param[4] = new SqlParameter("@cnfpword", SqlDbType.NChar, 10);
        //        param[5] = new SqlParameter("@bday", SqlDbType.DateTime, 10);
        //        param[6] = new SqlParameter("@emaild", SqlDbType.NChar, 10);
        //        param[7] = new SqlParameter("@ages", SqlDbType.Int, 18);
        //        param[8] = new SqlParameter("@genders", SqlDbType.Char, 10);

        //        param[0].Value = fname;
        //        param[1].Value = lname;
        //        param[2].Value = uname;
        //        param[3].Value = pword;
        //        param[4].Value = cnfpword;
        //        param[5].Value = bday;
        //        param[6].Value = emaild;
        //        param[7].Value = ages;
        //        param[8].Value = genders;

        //        for (int i = 0; i < param.Length; i++)
        //        {
        //            cmd.Parameters.Add(param[i]);
        //        }

        //        cmd.CommandType = CommandType.Text;
        //        cmd.ExecuteNonQuery();
        //    }
        //    catch (System.Data.SqlClient.SqlException ex)
        //    {
        //        string msg = "Insert Error:";
        //        msg += ex.Message;
        //        throw new Exception(msg);
        //    }
        //    finally
        //    {
        //        conn.Close();
        //    }
        }
    }
