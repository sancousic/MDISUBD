using MySql.Data.MySqlClient;
using SUBD.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class UserViewModel
    {
        public UserViewModel()
        {
        }
        public UserViewModel(User user)
        {
            name1 = user.Name1;
            name2 = user.Name2;
            name3 = user.Name3;
            login = user.Login;
            Role = user.Role;
        }
        [Required(ErrorMessage = "Введите фамилию.")]
        [Display(Name = "Фамилия")]
        public string name1 { get; set; }

        [Required(ErrorMessage = "Введите имя.")]
        [Display(Name = "Имя")]
        public string name2 { get; set; }

        [Required(ErrorMessage = "Введите отчество.")]
        [Display(Name = "Отчество")]
        public string name3 { get; set; }

        [Required(ErrorMessage = "Введите логин.")]
        [Display(Name = "Логин")]
        public string login { get; set; }

        [Required(ErrorMessage = "Введите пароль.")]
        [DataType(DataType.Password)]
        [Display(Name = "Пароль")]
        public string password { get; set; }
        public RoleEnum Role { get; set; } = RoleEnum.pacient;
        public MySqlParameter[] GetParamets()
        {
            MySqlParameter name1 = new MySqlParameter { ParameterName = "n1", Value = this.name1 };
            MySqlParameter name2 = new MySqlParameter { ParameterName = "n2", Value = this.name2 };
            MySqlParameter name3 = new MySqlParameter { ParameterName = "n3", Value = this.name3 };
            MySqlParameter login = new MySqlParameter { ParameterName = "log", Value = this.login };
            MySqlParameter pswd = new MySqlParameter { ParameterName = "pass", Value = password };
            MySqlParameter role = new MySqlParameter { ParameterName = "rol", Value = Role };
            return new MySqlParameter[] { name1, name2, name3, login, pswd, role };
        }
    }
}
