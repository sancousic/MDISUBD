using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class PacientSearchViewModel
    {
        [Display(Name = "Фамилия")]
        public string name1 { get; set; } = "";
        [Display(Name = "Имя")]
        public string name2 { get; set; } = "";
        [Display(Name = "Отчество")]
        public string name3 { get; set; } = "";
        [Display(Name = "Страна")]
        public string Country { get; set; }
        [Display(Name = "Город")]
        public string Town { get; set; }
        [Display(Name = "Улица")]
        public string Street { get; set; }
        [Display(Name = "Номер дома")]
        public byte HomeNumber { get; set; }
        [Display(Name = "Индекс дома")]
        public string HomeIndex { get; set; }
        [Display(Name = "Номер карты")]
        public uint CardNumber { get; set; }
        [Display(Name = "Область")]
        public string Region { get; set; }
        [Display(Name = "Район")]
        public string District { get; set; }
    }
}
