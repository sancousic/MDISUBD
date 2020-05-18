using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Schedule
    {
        public Schedule(DataRow dataRow)
        {
            Id = (uint)dataRow["id"];
            CabinetId = (uint)dataRow["cabinet_id"];
            DocId = (uint)dataRow["doctor_id"];
            Cabinet = (string)dataRow["name"];
            Day = (string)dataRow["name"];
            Time = (TimeSpan)dataRow["time"];
            Duration = (TimeSpan)dataRow["dutation"];            
        }

        public uint Id { get; set; }
        public string Day { get; set; }
        public TimeSpan Time { get; set; }
        public TimeSpan Duration { get; set; }
        public string Cabinet { get; set; }
        public uint CabinetId { get; set; }
        public uint DocId { get; set; }
    }
}
