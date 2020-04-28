using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SUBD.Models;
using SUBD.Services;
using SUBD.ViewModels;

namespace SUBD.Controllers
{
    public class UserController : Controller
    {
        private UserService _userService;
        private AuthorizedUser _authorizedUser;
        public UserController(UserService userService, AuthorizedUser authorizedUser)
        {
            _userService = userService;
            _authorizedUser = authorizedUser;
        }
        [HttpGet]
        public IActionResult Registration()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Registration(UserViewModel user)
        {
            if (ModelState.IsValid)
            {
                var id = _userService.RegistrationUser(user);
                if (id != -1)
                {
                    _authorizedUser.Id = id;
                    _authorizedUser.Login = user.login;
                    return RedirectToAction("Index", "Home");

                }
                ModelState.AddModelError("Login", "Пользователь с таким логином уже существует");
            }
            return View(user);
        }
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Login(LoginViewModel user)
        {
            if (ModelState.IsValid)
            {
                 int id =_userService.LoginUser(user);
                switch(id)
                {
                    case -3:
                        ModelState.AddModelError("", "Somethink bad was happend");
                        break;
                    case -2:
                        ModelState.AddModelError("", "Пользователь заблокирован.");
                        break;
                    case -1:
                        ModelState.AddModelError("", "Неверное имя пользователя или пароль");
                        break;
                    default:
                        _authorizedUser.Id = id;
                        _authorizedUser.Login = user.Login;
                        return RedirectToAction("Index", "Home");
                }
            }
            return View();
        }
        [HttpGet]
        public IActionResult Logout()
        {
            _authorizedUser.Id = -1;
            _authorizedUser.Login = null;
            return RedirectToAction("Index", "Home");
        }
        [HttpGet]
        public IActionResult Users(int id)
        {
            if (_userService.GetRole(_authorizedUser.Id) == RoleEnum.admin)
            {
                // TODO 
            }
            return RedirectToAction("Index", "Home");
        }
        [HttpGet]
        public IActionResult Index()
        {
            return View(_userService.SearchUsers());
        }
        [HttpGet]
        public IActionResult Delete(uint id, string login)
        {
            ViewBag.login = login;
            return View(id);
        }
        [HttpPost, ActionName("Delete")]
        public IActionResult DeleteConfiurmed(uint id)
        {
            _userService.DeleteUser(id);
            return RedirectToAction("Index", "User");
        }
        [HttpGet]
        public IActionResult Edit(string login)
        {
            List<User> users = _userService.SearchUsers(login: login);
            return View(new EditUserViewModel(users[0]));            
        }
        [HttpPost]
        public IActionResult Edit(EditUserViewModel model)
        {
            if (ModelState.IsValid)
            {
                _userService.UpdateUser(model);
                return RedirectToAction("Index", "User");
            }
            return Edit(model);
        }
    }
}