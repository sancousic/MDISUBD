using Microsoft.AspNetCore.Mvc;
using SUBD.ViewModels;
using SUBD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SUBD.Services;

namespace SUBD.Controllers
{
    public class PacientController : Controller
    {
        private readonly UserService _userService;
        private readonly AuthorizedUser _authorizedUser;
        public PacientController(UserService userService, AuthorizedUser authorizedUser)
        {
            _authorizedUser = authorizedUser;
            _userService = userService;
        }
        [HttpGet]
        public IActionResult Index(PacientSearchViewModel model)
        {
            var pacients = _userService.SearchPacient(model.HomeNumber, model.CardNumber, model.name1, model.name2, model.name3,
                model.Country, model.Town, model.Region, model.District, model.HomeIndex);
            return View("Index", pacients);
        }
        [HttpGet]
        public IActionResult Search()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Search(PacientSearchViewModel viewModel)
        {
            return Index(viewModel);
        }
        [HttpGet]
        public IActionResult Card(uint id, string _str = "")
        {
            return View("Card", _userService.SearchCard(id, _str));
        }
        [HttpGet]
        public IActionResult AddVaccine(uint id)
        {
            ViewBag.id = id;
            return View(new AddVaccineViewModel() { Id = id });
        }
        [HttpPost]
        public IActionResult AddVaccine(AddVaccineViewModel model)
        {
            _userService.AddVaccine(model);
            return Card(model.Id);
        }
        [HttpGet]
        public IActionResult AddDiagnos(uint id)
        {
            return View(new AddDiagnosViewModel() { Id = id, UserId = (uint)_authorizedUser.Id });
        }
        [HttpPost]
        public IActionResult AddDiagnos(AddDiagnosViewModel model)
        {
            _userService.AddDiagnos(model);
            return Card(model.Id);
        }
        [HttpGet]
        public IActionResult ConfirmDiagnose(uint id, uint d_id)
        {
            _userService.ConfirmDiagnose(_authorizedUser.Id, d_id);
            return Card(id);
        }
        [HttpGet]
        public IActionResult AddExam(uint id)
        {
            return View(new AddExamViewModel() { CardId = id, UserId = (uint)_authorizedUser.Id });
        }
        [HttpPost]
        public IActionResult AddExam(AddExamViewModel model)
        {
            _userService.AddExam(model);
            return Card(model.CardId);
        }
        [HttpGet]
        public IActionResult Stats()
        {
            ViewBag.Min = new DateTime();
            ViewBag.Max = DateTime.Now;
            var model = _userService.GetCardStats("", ViewBag.Min, ViewBag.Max);
            return View(model);
        }
        [HttpPost]
        public IActionResult Stats(DateTime max, string _str = "", DateTime min = new DateTime())
        {
            ViewBag.Min = min;
            ViewBag.Max = max;
            var model = _userService.GetCardStats(_str, min, max);
            return View(model);
        }
        [HttpGet]
        public IActionResult Tickets()
        {
            var model = _userService.GetTikets(_authorizedUser.Id);
            return View("Tickets", model);
        }
        [HttpGet]
        public IActionResult AbortTicket(uint id)
        {
            _userService.AbortTicket(id);
            return Tickets();
        }
    }
}
