﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TenderManagementSystem
{
    public partial class CallUsBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			Dictionary<string, string> parameters = new Dictionary<string, string>();
			foreach (string key in Request.Form.Keys)
			{
				parameters.Add(key.Trim(), Request.Form[key].Trim());
			}
			string paymentStatus = parameters["txStatus"];
			string paymode = parameters["paymentMode"];
			string txnId = parameters["orderId"];
			pTxnId.InnerText = "Transaction Id : " + txnId;
			h1Message.InnerText = "Your payment is " + paymentStatus;
			pMode.InnerText = "Payment Mode : " + paymode;
		}
    }
}