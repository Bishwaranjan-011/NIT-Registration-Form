using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIT_Registration_Form
{

    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string type = Session["RegType"]?.ToString();

                pnlStudent.Visible = (type == "Student");
                pnlFaculty.Visible = (type == "Faculty");
                pnlNonFaculty.Visible = (type == "NonFaculty");
            }
        }

        protected void btnSRegister_Click(object sender, EventArgs e)
        {
            Insert("INSERT INTO StudentRegistration VALUES (@A,@B,@C,@D,@E)",
                txtSName.Text, txtSEmail.Text, txtSPhone.Text, ddlStream.Text, rblSType.SelectedValue);

            lblMsg.Text = "Student Registered Successfully!";
        }

        protected void btnFRegister_Click(object sender, EventArgs e)
        {
            Insert("INSERT INTO FacultyRegistration VALUES (@A,@B,@C,@D,@E)",
                txtFName.Text, txtFEmail.Text, txtFPhone.Text, txtFSubject.Text, txtFQual.Text);

            lblMsg.Text = "Faculty Registered Successfully!";
        }

        protected void btnNFRegister_Click(object sender, EventArgs e)
        {
            Insert("INSERT INTO NonFacultyRegistration VALUES (@A,@B,@C,@D,@E)",
                txtNFName.Text, txtNFEmail.Text, txtNFPhone.Text, ddlNFTYPE.Text, txtNFQual.Text);

            lblMsg.Text = "Non-Faculty Registered Successfully!";
        }


        private void Insert(string query, string a, string b, string c, string d, string e)
        {
            using (SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["CollegeDBConn"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@A", a);
                cmd.Parameters.AddWithValue("@B", b);
                cmd.Parameters.AddWithValue("@C", c);
                cmd.Parameters.AddWithValue("@D", d);
                cmd.Parameters.AddWithValue("@E", e);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}