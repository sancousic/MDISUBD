using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Vaccination
    {
        public Vaccination(DataRow dataRow)
        {
            Type = (string)dataRow["type"];
            Result = (string)dataRow["result"];
            Date = (DateTime)dataRow["date"];
        }

        public DateTime Date { get; set; }
        public string Type { get; set; }
        public string Result { get; set; }
    }
}
