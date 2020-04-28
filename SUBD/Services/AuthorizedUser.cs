using SUBD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Services
{
    public class AuthorizedUser
    {
        private UserService _userService;
        public AuthorizedUser(UserService userService)
        {
            _userService = userService;
        }
        public string Login { get; set; } = null;
        public int Id { get; set; } = -1;
        public bool isInRole(RoleEnum role)
        {
            if(Id != -1 && _userService.GetRole(Id) == role)
            {
                return true;
            }
            return false;
        }
    }
}
