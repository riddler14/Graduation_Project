using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TenderManagementSystem
{
    public partial class Checkout_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
		private string CreateToken(string message, string secret)
		{
			secret = secret ?? "";
			var encoding = new System.Text.ASCIIEncoding();
			byte[] keyByte = encoding.GetBytes(secret);
			byte[] messageBytes = encoding.GetBytes(message);
			using (var hmacsha256 = new HMACSHA256(keyByte))
			{
				byte[] hashmessage = hmacsha256.ComputeHash(messageBytes);
				return Convert.ToBase64String(hashmessage);
			}
		}

        protected void Button2_Click1(object sender, EventArgs e)
        {
			string secret = "Your Secreet Key";
			string data = "";
			string Merchantkey = "Your Merchant Key";
			SortedDictionary<string, string> formParams = new SortedDictionary<string, string>();
			formParams.Add("appId", Merchantkey);
			formParams.Add("orderId", TextBox1.Text);
			formParams.Add("orderAmount", TextBox6.Text);
			formParams.Add("customerName", TextBox2.Text);
			formParams.Add("customerPhone", TextBox5.Text);
			formParams.Add("customerEmail", TextBox3.Text);
			formParams.Add("returnUrl", "http://localhost:");
			foreach (var kvp in formParams)
			{
				data = data + kvp.Key + kvp.Value;
			}
			string signature = CreateToken(data, secret);
			Console.Write(signature);
			string outputHTML = "<html>";
			outputHTML += "<head>";
			outputHTML += "<title>Merchant Check Out Page</title>";
			outputHTML += "</head>";
			outputHTML += "<body>";
			outputHTML += "<center>Please do not refresh this page...</center>";  // you can put h1 tag here
			outputHTML += "<form id='redirectForm' method='post' action='https://www.gocashfree.com/checkout/post/submit'>";
			outputHTML += "<input type='hidden' name='appId' value='" + Merchantkey + "'/>";
			outputHTML += "<input type='hidden' name='orderId' value='" + TextBox1.Text + "'/>";
			outputHTML += "<input type='hidden' name='orderAmount' value='" + TextBox6.Text + "'/>";
			outputHTML += "<input type='hidden' name='customerName' value='" + TextBox2.Text + "'/>";
			outputHTML += "<input type='hidden' name='customerEmail' value='" + TextBox3.Text + "'/>";
			outputHTML += "<input type='hidden' name='customerPhone' value='" + TextBox5.Text + "'/>";
			outputHTML += "<input type='hidden' name='returnUrl' value='return URL'/>";
			outputHTML += "<input type='hidden' name='signature' value='" + signature + "'/>";
			outputHTML += "<table border='1'>";
			outputHTML += "<tbody>";
			foreach (string keys in formParams.Keys)
			{
				outputHTML += "<input type='hidden' name='" + keys + "' value='" + formParams[keys] + "'>";
			}
			outputHTML += "</tbody>";
			outputHTML += "</table>";
			outputHTML += "<script type='text/javascript'>";
			outputHTML += "document.getElementById('redirectForm').submit();";
			outputHTML += "</script>";
			outputHTML += "</form>";
			outputHTML += "</body>";
			outputHTML += "</html>";
			Response.Write(outputHTML);
		}
    }
}