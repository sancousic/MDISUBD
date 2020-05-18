using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class PacientViewModel
    {
        public uint Id { get; set; }
        [Display(Name = "Фамилия")]
        public string Name1 { get; set; }
        [Display(Name = "Имя")]
        public string Name2 { get; set; }
        [Display(Name = "Отчество")]
        public string Name3 { get; set; }
        public string Mail { get; set; }
        [Display(Name = "Телефон")]
        public string Phone { get; set; }
    }
}
