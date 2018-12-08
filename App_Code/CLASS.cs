using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for XLDL
/// </summary>
public class CLASS
{
    public string strCon = ConfigurationManager.ConnectionStrings["CONLOTTERIA"].ConnectionString.ToString();
    public CLASS()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataTable GetData(string lenhSQL)
    {
        SqlConnection sqlCon = new SqlConnection(strCon);
        try
        {
            SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
            DataTable dt = new DataTable();
            sqlDa.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public void Excute(string lenhSQL)
    {
        using (SqlConnection sqlCon = new SqlConnection(strCon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
        }
    }
    public string GetValue(string lenhSQL)
    {
        using (SqlConnection sqlCon = new SqlConnection(strCon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
            string value = sqlCmd.ExecuteScalar().ToString();
            sqlCon.Close();
            return (value);
        }
    }
}