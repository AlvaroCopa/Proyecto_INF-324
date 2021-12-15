using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Dato
    {
        public static DataSet consulta(string cmd)
        {
            SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = Textura; Integrated Security = True");
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter ada = new SqlDataAdapter(cmd, con);
            ada.Fill(ds);
            con.Close();
            return (ds);
        }
    }
}
