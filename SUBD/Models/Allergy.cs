using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Models
{
    public class Allergy
    {

        public Allergy(DataRow dataRow)
        {
            AllergyName = (string)dataRow["allergy"];
            Date = (DateTime)dataRow["date"];
        }
        public string AllergyName { get; set; }
        public DateTime Date { get; set; }
        
    }
}
