using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class CardStatsViewModel
    {
        public CardStatsViewModel(DataRow dataRow)
        {
            Type = (string)dataRow["type"];
            Count = (Int64)dataRow["_count"];
        }

        [Display(Name ="Заболевание")]
        public string Type { get; set; }
        [Display(Name ="Количество")]
        public Int64 Count { get; set; }
    }
}
