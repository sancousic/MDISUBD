using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class AddExamViewModel
    {
        public uint CardId { get; set; }
        public uint UserId { get; set; }
        [Display(Name ="Тип")]
        public string Type { get; set; }
        [Display(Name = "Заключение")]
        public string Result { get; set; }
    }
}
