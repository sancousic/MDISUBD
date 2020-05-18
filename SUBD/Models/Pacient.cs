using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Pacient
    {
        public uint Id { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public string Mail { get; set; }
        public string Phone { get; set; }
        public string Country { get; set; }
        public string Town { get; set; }
        public string Street { get; set; }
        public byte HomeNumber { get; set; }
        public string HomeIndex { get; set; }
        public uint CardNumber { get; set; }        
        public string Region { get; set; }        
        public string District { get; set; }        
        public Pacient(DataRow dataRow)
        {
            Id = (uint)dataRow["data_pacient_id"];
            Name1 = (string)dataRow["name1"];
            Name2 = (string)dataRow["name2"];
            Name3 = (string)dataRow["name3"];            
            Mail = (string)dataRow["mail"];
            Phone = (string)dataRow["phone"];
            Country = (string)dataRow["country2"];
            Town = (string)dataRow["town"];
            Street = (string)dataRow["street"];
            HomeNumber = (byte)dataRow["home_number"];
            HomeIndex = (string)dataRow["home_index"];
            Region = (string)dataRow["region"];
            District = (string)dataRow["district"];
            CardNumber = (uint)dataRow["contacts.id"];
        }
    }
}

