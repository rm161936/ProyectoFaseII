using Microsoft.AspNetCore.Mvc;
using UdbPortal.Models.ContextModels;
using UdbPortal.Models.ViewModels;

namespace UdbPortal.Controllers
{
    public class CarreraController : Controller
    {
        private readonly ProyectoFinalDasContext _context;

        public CarreraController(ProyectoFinalDasContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var model = _context.Carreras
                .GroupBy(c => c.TipoId)
                .Select(c => new CarrerasViewModel((int)c.Key, c.FirstOrDefault().Tipo.Tipo, c.ToList()))
                .ToList();


            return View(model);
        }
    }
}
