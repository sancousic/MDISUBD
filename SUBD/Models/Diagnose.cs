using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Diagnose
    {
        public Diagnose(DataRow dataRow)
        {
            Status = (string)dataRow["status"];
            Id = (uint)dataRow["id"];
            Name1 = (string)dataRow["name1"];
            Name2 = (string)dataRow["name2"];
            Name3 = (string)dataRow["name3"];
            Type = (string)dataRow["type"];
            Date = (DateTime)dataRow["date"];
            if (Status == "подтвержден")
            {
                CName1 = (string)dataRow["un1"];
                CName2 = (string)dataRow["un2"];
                CName3 = (string)dataRow["un3"];
                Date2 = (DateTime)dataRow["date2"];
            }
        }
        public uint Id { get; set; }
        public string Type { get; set; }
        public DateTime Date { get; set; }
        public DateTime Date2 { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public string CName1 { get; set; }
        public string CName2 { get; set; }
        public string CName3 { get; set; }
        public string Status { get; set; }
    }
}
