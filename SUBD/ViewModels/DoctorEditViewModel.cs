using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class DoctorEditViewModel
    {
        public uint Id { get; set; }
        public uint PassportId { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string Name3 { get; set; }
        public string Branch { get; set; }
        public string Spec { get; set; }
        public string Mail { get; set; }
        public string Phone { get; set; }        

    }
}
