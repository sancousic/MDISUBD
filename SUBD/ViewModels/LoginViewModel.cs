using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.ViewModels
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Введите логин.")]
        [Display(Name = "Логин")]
        public string Login { get; set; }
        [Required(ErrorMessage = "Введите пароль.")]
        [DataType(DataType.Password)]
        [Display(Name = "Пароль")]
        public string Password { get; set; }
        public MySqlParameter[] GetParamets()
        {
            MySqlParameter login = new MySqlParameter { ParameterName = "login", Value = Login };
            MySqlParameter pswd = new MySqlParameter { ParameterName = "pswd", Value = Password };
            return new MySqlParameter[] { login, pswd };
        }
    }
}
