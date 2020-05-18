using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Doctor
    {
        public uint Id { get; set; }
        public uint PassportId { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public string Branch { get; set; }
        public string Speciality { get; set; }
        public string Mail { get; set; }
        public string Phone { get; set; }
        public Doctor(DataRow dataRow)
        {
            Id = (uint)dataRow["data_doctor_id"];
            Name1 = (string)dataRow["name1"];
            Name2 = (string)dataRow["name2"];
            Name3 = (string)dataRow["name3"];
            Branch = (string)dataRow["branch"];
            Speciality = (string)dataRow["speciality"];
            Mail = (string)dataRow["mail"];
            Phone = (string)dataRow["phone"];
        }
    }
}
