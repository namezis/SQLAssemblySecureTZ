using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.SqlServer.Server;
using System.Data;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Security.Cryptography;


namespace SQLAssemblySecureTZ
{
    public class EncryptDecrypt
    {

         [Microsoft.SqlServer.Server.SqlFunction()]
        public static string Enc(SqlString password, SqlString encStringOut)
        {
            //Encryption enc = new Encryption();
            //return enc.Encrypt(password.ToString(), encStringOut.ToString());
            return "Test";
        }
    
        [Microsoft.SqlServer.Server.SqlFunction()]
        public static string Dec(SqlString password, SqlString encStringOut)
        {
            //Encryption enc = new Encryption();
            //return enc.Decrypt(password.ToString(), encStringOut.ToString());
            return "Test";
        }


    }
}
