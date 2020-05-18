using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Ticket
    {
        public Ticket(DataRow dataRow)
        {
            Id = (uint)dataRow["id"];
            CabinetId = (uint)dataRow["cabinet_id"];
            Time = (TimeSpan)dataRow["time"];
            Duration = (TimeSpan)dataRow["dutation"];
            Name1 = (string)dataRow["name1"];
            Name2 = (string)dataRow["name2"];
            Name3 = (string)dataRow["name3"];
            Day = (string)dataRow["day"];
            Cabinet = (string)dataRow["name"];
            Date = (DateTime)dataRow["date"];
        }

        public uint Id { get; set; }
        public uint CabinetId { get; set; }
        public DateTime Date { get; set; }
        public TimeSpan Time { get; set; }
        public TimeSpan Duration { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public string Day { get; set; }
        public string Cabinet { get; set; }

    }
}
