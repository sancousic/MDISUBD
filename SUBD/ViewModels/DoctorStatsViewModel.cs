using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class DoctorStatsViewModel
    {public DoctorStatsViewModel(DataSet data)
        {
            Count = (Int64)data.Tables[0].Rows[0]["c"];
            if(data.Tables[1].Rows[0]["summ"].GetType() != typeof(System.DBNull))
                Duration = (TimeSpan)data.Tables[1].Rows[0]["summ"];
        }

        [Display(Name = "Количество пациентов за месяц")]
        public Int64 Count { get; set; }
        [Display(Name = "Рабочее время за месяц")]
        public TimeSpan Duration { get; set; }
    }
}
