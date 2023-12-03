using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TenderManagementSystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("none"))
                {
                    LinkButton4.Visible = true; // user login link button
                    LinkButton1.Visible = true; // sign up link button
                    LinkButton2.Visible = true;
                    LinkButton5.Visible = true;
                    LinkButton10.Visible = false; // apply for tender button
                    LinkButton12.Visible = false;
                    LinkButton13.Visible = true;
                    LinkButton14.Visible = true;
                    LinkButton15.Visible = false;
                    LinkButton16.Visible = false;
                    LinkButton17.Visible = false;
                    

                    LinkButton9.Visible = false; // add new tender button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = false; // user management link button
                    LinkButton8.Visible = false; // issuer management link button


                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton4.Visible = false; // user login link button
                    LinkButton1.Visible = false; // sign up link button
                    LinkButton2.Visible = false; // user login link button
                    LinkButton5.Visible = false; // sign up link button
                    LinkButton10.Visible = true; // apply for tender button
                    LinkButton9.Visible= false;
                    LinkButton12.Visible = false;
                    LinkButton13.Visible = false;
                    LinkButton14.Visible = false;
                    LinkButton15.Visible = true;
                    LinkButton16.Visible = false;
                    LinkButton17.Visible = false;

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = false; // user management link button
                    LinkButton8.Visible = false; // issuer management link button

                }
                else if (Session["role"].Equals("issuer"))
                {
                    LinkButton4.Visible = false; // user login link button
                    LinkButton1.Visible = false; // sign up link button
                    LinkButton2.Visible = false; // user login link button
                    LinkButton5.Visible = false; // sign up link button
                    LinkButton10.Visible = false; // apply for tender button
                    LinkButton9.Visible = true; //   add new tender button
                    LinkButton12.Visible = true;
                    LinkButton13.Visible = false;
                    LinkButton14.Visible = false;
                    LinkButton16.Visible = true;
                    LinkButton15.Visible = false;
                    LinkButton17.Visible = true;



                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = false; // user management link button
                    LinkButton8.Visible = false; // issuer management link button

                }
            
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton4.Visible = false; // user login link button
                    LinkButton1.Visible = false; // sign up link button
                    LinkButton2.Visible = false; // user login link button
                    LinkButton5.Visible = false; // sign up link button
                    LinkButton10.Visible = false; // apply for tender button
                    LinkButton12.Visible = false;
                    LinkButton13.Visible = false;
                    LinkButton14.Visible = false;
                    LinkButton16.Visible = false;
                    LinkButton15.Visible = false;
                    LinkButton17.Visible = false;


                    LinkButton9.Visible = false; // add new tender button
                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello Admin";


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = true; // user management link button
                    LinkButton8.Visible = true; // issuer management link button
                   
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin Login.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin User Management.aspx");
        }

       

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Issuer Login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("User Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User SignUp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Issuer SignUp.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton4.Visible = true; // user login link button
            LinkButton1.Visible = true; // sign up link button
            LinkButton2.Visible = true; // user login link button
            LinkButton5.Visible = true; // sign up link button


            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button


            LinkButton6.Visible = true; // admin login link button
            LinkButton11.Visible = false; // author management link button
            LinkButton8.Visible = false; // publisher management link button
            Response.Redirect("Homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("My Profile.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Issuer Management.aspx");
        }

       

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Issuer Tender Issuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Available Tenders.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit Tenders.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("About Us.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("User Profile.aspx");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("Issuer Profile.aspx");
        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("Apply Tender.aspx");
        }

        protected void LinkButton17_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Application.aspx");
        }
    }
    }
