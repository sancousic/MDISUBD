using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Database
{
    public class DBConfig
    {
        public string Host { get; set; }
        public string Port { get; set; }
        public string User { get; set; }
        public string Password { get; set; }
        public string Database { get; set; }
        public string Charset { get; set; }
        public bool AllowUserVariables { get; set; }
    }
}
