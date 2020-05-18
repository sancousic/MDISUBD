using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class AddScheduleViewModel
    {
        [Display(Name ="День")]
        public string Day { get; set; }
        [Display(Name = "Время")]
        [DataType(DataType.Time)]
        public TimeSpan Time { get; set; }
        [Display(Name = "Продолжительность")]
        [DataType(DataType.Time)]
        public TimeSpan Duration { get; set; }
        [Display(Name = "Кабинет")]
        public string Cabinet { get; set; }
        public uint DocId { get; set; }
    }
}
