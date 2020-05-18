using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class AddTicketViewModel
    {
        [Display(Name ="Выберите дату")]
        [DataType(DataType.Date)]        
        public DateTime Date { get; set; }
        public uint SchId { get; set; }
        public uint UserId { get; set; }
        public uint DocId { get; set; }
    }
}
