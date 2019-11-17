using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace IRSLCRM.App_Code
{    
    //public class Activation
    //{
    //    private static string connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString.ToString();
    //    private static bool Activated { get; set; }

    //    private static bool isActivated(string key)
    //    {
    //        using (SqlConnection sqlConn = new SqlConnection(connectionstring))
    //        {
    //            string CheckForActivation = "SELECT activated from ActivationTable where serialkey =@key";
    //            SqlCommand cmd = new SqlCommand(CheckForActivation, sqlConn);
    //            cmd.Parameters.AddWithValue("@key", key);
    //            sqlConn.Open();
    //            int result = Convert.ToInt32(cmd.ExecuteScalar());
    //            if (result > 0)
    //            {
    //                return true;
    //            }
    //            return false;
    //        }
    //    }
    //    private static void activateSoftware(string key)
    //    {
    //        if (!isActivated(key))
    //        {
    //            using (SqlConnection sqlConn = new SqlConnection(connectionstring))
    //            {
    //                string CheckForKeyQuery = "SELECT COUNT(*) from ActivationTable where serialkey =@key";
    //                SqlCommand cmd = new SqlCommand(CheckForKeyQuery, sqlConn);
    //                cmd.Parameters.AddWithValue("@key", key);
    //                sqlConn.Open();
    //                int result = Convert.ToInt32(cmd.ExecuteScalar());
    //                if (result > 0)
    //                {
    //                    UpdateActivation(key);
    //                    Activated = true;
    //                }
    //                else
    //                {
    //                    Activated = false;
    //                }                    
    //            }
    //        }
    //        else
    //        {
    //            string ret = "Software already activated";
    //        }

            
    //    }
    //    private static void UpdateActivation(string key)
    //    {
    //        using (SqlConnection sqlConn = new SqlConnection(connectionstring))
    //        {                
    //                string CheckForKeyQuery = "Update ActivationTable SET activated = 1 where serialkey =@key";
    //                SqlCommand cmd = new SqlCommand(CheckForKeyQuery, sqlConn);
    //                cmd.Parameters.AddWithValue("@key", key);
    //                sqlConn.Open();
    //                cmd.ExecuteNonQuery();
    //        }
    //        string ret = "Your software has been activated";
    //    }

    //}
}