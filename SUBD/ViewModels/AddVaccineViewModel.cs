using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class AddVaccineViewModel
    {
        public uint Id { get; set; }
        [Display(Name = "Тип")]
        [Required(ErrorMessage ="Введите тип")]
        public string Type { get; set; }
        [Display(Name = "Результат")]
        [Required(ErrorMessage = "Введите результат")]
        public string Result { get; set; }
    }
}
