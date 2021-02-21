﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace Practical_Assignment
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con;
            string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();

            string strSelect = "Select * from Gallery where DrawID=@DrawID";

            SqlCommand cmdSelect = new SqlCommand(strSelect, con);

            cmdSelect.Parameters.AddWithValue("@DrawID", "DR001");

            SqlDataReader dtrGallery = cmdSelect.ExecuteReader();

            //String test = dtrGallery["Image"].ToString();
            //byte[] testByte = Encoding.ASCII.GetBytes(test);

            //byte[] imgBytes = (byte[])dtrGallery["Image"];
            //string strBase64 = Convert.ToBase64String(imgBytes);

            if (dtrGallery.HasRows)
            {
                while (dtrGallery.Read())
                {
                    //msg = "Draw Name = " + dtrGallery["Name"].ToString();
                    //Image1.Image = "data:image/png;base64," + strBase64;
                }
            }

            con.Close();

            /*
            con.Open();

            SqlCommand cmd = new SqlCommand("spGetImageById", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramId = new SqlParameter()
            {
                ParameterName = "@Id",
                Value = Request.QueryString["Id"]
            };
            cmd.Parameters.Add(paramId);

            byte[] bytes = (byte[])cmd.ExecuteScalar();
            string strBase64 = Convert.ToBase64String(bytes);

            Image1.ImageUrl = "data:Image/png;base64," + strBase64;
            */
        }
        
    }
}