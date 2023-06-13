using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using UdbPortal.Models;
using UdbPortal.Models.ContextModels;

namespace UdbPortal.Controllers
{
    public class HomeController : Controller
    {
        private readonly ProyectoFinalDasContext _context;

        public HomeController(ProyectoFinalDasContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var model = _context.Bases.Where(b => b.Seccion.Equals("Principal")).FirstOrDefault();

            return View(model);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}