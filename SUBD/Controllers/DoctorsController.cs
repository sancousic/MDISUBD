using Microsoft.AspNetCore.Mvc;
using SUBD.Services;
using SUBD.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SUBD.Controllers
{
    public class DoctorsController : Controller
    {
        private readonly UserService _userService;
        private readonly AuthorizedUser _authorizedUser;
        public DoctorsController(UserService userService, AuthorizedUser authorizedUser)
        {
            _authorizedUser = authorizedUser;
            _userService = userService;
        }
        [HttpGet]
        public IActionResult Index()
        {
            return View(new DoctorListViewModel() { Doctors = _userService.SearchDoctors() });  
        }
        public IActionResult Index(DoctorSearchViewModel viewModel)
        {
            DoctorListViewModel res = new DoctorListViewModel()
            {
                Doctors = _userService.SearchDoctors(viewModel.name1, viewModel.name2, viewModel.name3,
                viewModel.Branch, viewModel.Speciality)
            };
            return View("Index", res);
        }
        [HttpGet]
        public IActionResult Search()
        {
            ViewBag.Specs = _userService.GetSpecs();
            ViewBag.Branches = _userService.GetBranches();
            return View();
        }
        [HttpPost]
        public IActionResult Search(DoctorSearchViewModel viewModel)
        {
            return Index(viewModel);
        }
        [HttpGet]
        public IActionResult Info(uint id)
        {
            var res = _userService.GetDoctorInfoById(id);
            return View(res);
        }
        [HttpGet]
        public IActionResult Edit(uint id)
        {
            var doc = _userService.GetDoctorInfoById(id);
            return View(doc);
        }
        [HttpPost]
        public IActionResult Edit(DoctorViewModel viewModel)
        {
            _userService.UpdateDoctor(viewModel);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Add(DoctorAddViewModel viewModel)
        {
            if (ModelState.IsValid)
            {
                _userService.AddDoctor(viewModel);
                return RedirectToAction("Index");
            }
            var a = ModelState.ErrorCount;
            return View(viewModel);
        }
        [HttpGet]
        public IActionResult Delete(uint id)
        {
            _userService.DeleteDoctor(id);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public IActionResult Schedule(uint id)
        {
            var model = _userService.GetSceduleById(id);
            ViewBag.Id = id;
            return View("Schedule", model);
        }
        [HttpGet]
        public IActionResult AddSchedule(uint id)
        {
            return View(new AddScheduleViewModel() { DocId = id });
        }
        [HttpPost]
        public IActionResult AddSchedule(AddScheduleViewModel model)
        {
            _userService.AddSchedule(model);
            return Schedule(model.DocId);
        }
        [HttpGet]
        public IActionResult DeleteSchedule(uint id, uint d_id)
        {
            _userService.DeleteSchedule(id);
            return Schedule(d_id);
        }
        [HttpGet]
        public IActionResult AddTicket(uint id, uint d_id)
        {
            return View(new AddTicketViewModel() { UserId =(uint)_authorizedUser.Id, SchId = id, DocId = d_id });
        }
        [HttpPost]
        public IActionResult AddTicket(AddTicketViewModel model)
        {
            _userService.AddTicket(model);
            return Schedule(model.UserId); // TODO return to TICKET LIST
        }
        [HttpGet]
        public IActionResult Stats(uint id)
        {
            var model = _userService.GetDocStats(id);
            return View(model);
        }
    }
}
