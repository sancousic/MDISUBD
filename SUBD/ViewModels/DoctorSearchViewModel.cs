using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class DoctorSearchViewModel
    {
        [Display(Name = "Фамилия")]
        public string name1 { get; set; } = "";
        [Display(Name = "Имя")]
        public string name2 { get; set; } = "";
        [Display(Name = "Отчество")]
        public string name3 { get; set; } = "";
        [Display(Name = "Специальность")]
        public string Speciality { get; set; } = "";
        [Display(Name = "Отделение")]
        public string Branch { get; set; } = "";
    }
}
