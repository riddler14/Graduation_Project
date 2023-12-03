using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TenderManagementSystem
{
    public partial class Issuer_Tender_Issuing : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('This User ID Already Exists');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Tenders WHERE RefNo='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;

                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Tenders(RefNo,Company,description,category,cost,submission_deadline,downloaddeadline,tenderclosingdate,downloadcost,duration_of_contract,email,full_address,payment) values(@RefNo,@Company,@description,@category,@cost,@submission_deadline,@downloaddeadline,@tenderclosingdate,@downloadcost,@duration_of_contract,@email,@full_address,@payment)", con);
                cmd.Parameters.AddWithValue("@RefNo", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Company", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@cost", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@submission_deadline", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@downloaddeadline", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@tenderclosingdate", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@downloadcost", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@duration_of_contract", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@payment", TextBox11.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert(' Tender Issued Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}

