﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Practical_Assignment
{
    public partial class CustomerArtManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Value"] = "AR1"; //test data

            if (Session["Value"] != "0" && Session["Value"] != null)
            {

                SqlConnection con;
                string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(strcon);

                con.Open();
                string strSelect = "Select count(*) From [OrderDetails] Where  DrawID = @DrawID";
                SqlCommand cmdSelect = new SqlCommand(strSelect, con);

                cmdSelect.Parameters.AddWithValue("@DrawID", HttpContext.Current.Request.QueryString["id"].ToString());
                int numRowAffected = (int)cmdSelect.ExecuteScalar();

                if (numRowAffected > 0)
                {
                    // return insert success
                    // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Delete successfully! " + "');", true);

                }
                else
                {
                   Label3.Text = "No record found";
                }
            }
        }
    }
}