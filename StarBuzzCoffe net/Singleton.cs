using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.Sql;

namespace StarBuzzCoffe_net
{
    public class Singleton
    {
        // Propiedades
        private static SqlConnection conn = null;
        private String driver;
        private String url;
        private String usuario;
        private String password;

        // Constructor
        private Singleton()
        {
            //SqlConnection conexion = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=BDFactura_aspnet;Integrated Security=True");
            String url = @"Data Source=.\SQLEXPRESS;Initial Catalog=BDFactura_aspnet;Integrated Security=True";
            String usuario = "";
            String password = "";

            try
            {
                
                conn = new SqlConnection(url+usuario+password);
            }
            catch ( SqlException e){
                e.ToString();
            }
            } // Fin constructor

            // Métodos
            public static SqlConnection getConnection()
            {

                if (conn == null)
                {
                    new Singleton();
                }

                return conn;
            } // Fin getConnection
        }
}