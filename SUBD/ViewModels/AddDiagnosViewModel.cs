using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class AddDiagnosViewModel
    {
        public uint Id { get; set; } // card id
        public uint UserId { get; set; }
        [Display(Name = "Диагноз")]
        public string Type { get; set; }
    }
}
