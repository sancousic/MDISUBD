using SUBD.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class DoctorViewModel
    {
        public uint Id { get; set; }        
        public uint PassportId { get; set; }
        [Display(Name = "Фамилия")]
        public string Name1 { get; set; }
        [Display(Name = "Имя")]
        public string Name2 { get; set; }
        [Display(Name = "Отчество")]
        public string Name3 { get; set; }
        [Display(Name = "Отделение")]
        public string Branch { get; set; }
        [Display(Name = "Специальность")]
        public string Spec { get; set; }
        [Display(Name = "Почтовый адресс")]
        public string Mail { get; set; }
        [Display(Name = "Телефон")]
        public string Phone { get; set; }
        [Display(Name = "Дата выдачи")]
        public DateTime Date1 { get; set; }
        [Display(Name = "Серия")]
        public string Series { get; set; }
        [Display(Name = "Номер")]
        public uint Number { get; set; }
        [Display(Name = "Кем выдан")]
        public string Authority { get; set; }
        [Display(Name = "Пол")]
        public GenderEnum Genger { get; set; }
        [Display(Name = "Идентификационный номер")]
        public string Identity { get; set; }
        [Display(Name = "Дата выдачи")]
        public DateTime Date5 { get; set; }
        [Display(Name = "Срок выдачи")]
        public DateTime Date6 { get; set; }
        [Display(Name = "Страна")]
        public string Country { get; set; }
        public DoctorViewModel()
        {
                
        }
        public DoctorViewModel(DataRow dataRow)
        {
            Id = (uint)dataRow["data_doctor_id"];
            PassportId = (uint)dataRow["passport_id"];
            Name1 = (string)dataRow["name1"];
            Name2 = (string)dataRow["name2"];
            Name3 = (string)dataRow["name3"];
            Branch = (string)dataRow["branch"];
            Spec = (string)dataRow["speciality"];
            Mail = (string)dataRow["mail"];
            Phone = (string)dataRow["phone"];
            Series = (string)dataRow["series"];
            Number = (uint)dataRow["number"];
            Identity = (string)dataRow["identity"];
            Authority = (string)dataRow["authority"];
            Country = (string)dataRow["country2"];
            Genger = Enum.Parse<GenderEnum>((string)dataRow["gender"]);
            Date1 = (DateTime)dataRow["date1"];
            Date5 = (DateTime)dataRow["date5"];
            Date6 = (DateTime)dataRow["date6"];            
        }        
    }
}
