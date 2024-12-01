using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace website.classes
{
    public class connection
    {
        public static SqlConnection sqlconnection = new SqlConnection(@"data source=MSI;initial catalog=websitesql;integrated security=true;");

        public static void CheckConnection()
        {
            if (sqlconnection.State == System.Data.ConnectionState.Closed)
            {
                sqlconnection.Open();
            }
            else
            {

            }
        }
    }
}