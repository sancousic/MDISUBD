using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Examination
    {
        public Examination(DataRow dataRow)
        {
            Name1 = (string)dataRow["name1"];
            Name2 = (string)dataRow["name2"];
            Name3 = (string)dataRow["name3"];
            Type = (string)dataRow["type"];
            Result = (string)dataRow["result"];
            Date = (DateTime)dataRow["date"];
        }

        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public string Type { get; set; }
        public string Result { get; set; }
        public DateTime Date { get; set; }
    }
}
