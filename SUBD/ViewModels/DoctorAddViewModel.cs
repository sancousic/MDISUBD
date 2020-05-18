using SUBD.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class DoctorAddViewModel
    {
        [Required(ErrorMessage = "Введите логин.")]
        [Display(Name = "Логин")]
        public string login { get; set; }

        [Required(ErrorMessage = "Введите пароль.")]
        [DataType(DataType.Password)]
        [Display(Name = "Пароль")]
        public string password { get; set; }
        [Required(ErrorMessage = "Введите фамилию.")]
        [DataType(DataType.Text)]
        [Display(Name = "Фамилия")]
        public string Name1 { get; set; }
        [Required(ErrorMessage = "Введите имя.")]
        [DataType(DataType.Text)]
        [Display(Name = "Имя")]
        public string Name2 { get; set; }
        [Required(ErrorMessage = "Введите отчество.")]
        [DataType(DataType.Text)]
        [Display(Name = "Отчество")]
        public string Name3 { get; set; }
        [Required(ErrorMessage = "Введите отделение.")]
        [DataType(DataType.Text)]
        [Display(Name = "Отделение")]
        public string Branch { get; set; }
        [Required(ErrorMessage = "Введите специальность.")]
        [DataType(DataType.Text)]
        [Display(Name = "Специальность")]
        public string Spec { get; set; }
        [Required(ErrorMessage = "Введите адресс.")]
        [DataType(DataType.EmailAddress)]
        [Display(Name = "Почтовый адресс")]
        public string Mail { get; set; }
        [Required(ErrorMessage = "Введите телефон.")]
        [DataType(DataType.PhoneNumber)]
        [Display(Name = "Телефон")]
        public string Phone { get; set; }
        [Required(ErrorMessage = "Введите дату выдачи.")]
        [DataType(DataType.Date)]
        [Display(Name = "Дата выдачи")]
        public DateTime Date1 { get; set; }
        [Required(ErrorMessage = "Введите серию.")]
        [DataType(DataType.Text)]
        [Display(Name = "Серия")]
        public string Series { get; set; }
        [Required(ErrorMessage = "Введите номер.")]
        [DataType(DataType.Text)]
        [Display(Name = "Номер")]
        public uint Number { get; set; }
        [Required(ErrorMessage = "Введите кем выдан.")]
        [DataType(DataType.Text)]
        [Display(Name = "Кем выдан")]
        public string Authority { get; set; }
        [Display(Name = "Пол")]
        public GenderEnum Genger { get; set; }
        [Required(ErrorMessage = "Введите кем id.")]
        [DataType(DataType.Text)]
        [Display(Name = "Идентификационный номер")]
        public string Identity { get; set; }
        [Required(ErrorMessage = "Введите дату выдачи.")]
        [DataType(DataType.Date)]
        [Display(Name = "Дата выдачи")]
        public DateTime Date5 { get; set; }
        [Required(ErrorMessage = "Введите срок выдачи.")]
        [DataType(DataType.Date)]
        [Display(Name = "Срок выдачи")]
        public DateTime Date6 { get; set; }
        [Required(ErrorMessage = "Введите страну.")]
        [DataType(DataType.Text)]
        [Display(Name = "Страна")]
        public string Country { get; set; }
    }
}
