using SUBD.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class CardViewModel
    {
        public uint PacientId { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public uint Id { get; set; }
        public DateTime IssueDate { get; set; }
        public List<Diagnose> Diagnoses { get; set; } = new List<Diagnose>();
        public List<Examination> Examinations { get; set; } = new List<Examination>();
        public List<Allergy> Allergies { get; set; } = new List<Allergy>();
        public List<Vaccination> Vaccinations { get; set; } = new List<Vaccination>();
        public CardViewModel(DataSet data, uint id)
        {
            Id = id;
            PacientId = (uint)data.Tables[0].Rows[0]["id"];
            Name1 = (string)data.Tables[0].Rows[0]["name1"];
            Name2 = (string)data.Tables[0].Rows[0]["name2"];
            Name3 = (string)data.Tables[0].Rows[0]["name3"];
            for(int i = 0; i < data.Tables[1].Rows.Count; i++)
            {
                Allergies.Add(new Allergy(data.Tables[1].Rows[i]));
            }
            for (int i = 0; i < data.Tables[2].Rows.Count; i++)
            {
                Vaccinations.Add(new Vaccination(data.Tables[2].Rows[i]));
            }
            for (int i = 0; i < data.Tables[3].Rows.Count; i++)
            {
                Examinations.Add(new Examination(data.Tables[3].Rows[i]));
            }
            for (int i = 0; i < data.Tables[4].Rows.Count; i++)
            {
                Diagnoses.Add(new Diagnose(data.Tables[4].Rows[i]));
            }
        }
    }
}
