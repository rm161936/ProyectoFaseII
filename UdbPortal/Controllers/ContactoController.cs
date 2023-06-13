using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using UdbPortal.Models.ContextModels;

namespace UdbPortal.Controllers
{
    public class ContactoController : Controller
    {
        private readonly ProyectoFinalDasContext _context;

        public ContactoController(ProyectoFinalDasContext context)
        {
            _context = context;
        }


        public IActionResult Create()
        {
            ViewBag.Tipo = new SelectList(_context.TipoConsulta.OrderBy(e => e.Tipo).OrderBy(e => e.Id), "Id", "Tipo");
            return View();
        }

        [HttpPost]
        public IActionResult Create(Consultum model)
        {
            ViewBag.Tipo = new SelectList(_context.TipoConsulta.OrderBy(e => e.Tipo).OrderBy(e => e.Id), "Id", "Tipo");
            if (ModelState.IsValid)
            {
                _context.Consulta.Add(model);
                _context.SaveChanges();
                ModelState.Clear();
                model = new Consultum();
                TempData["SuccessMessage"] = "Su consulta fue registrada con éxito.";
            }
            else
            {
                TempData["FailedMessage"] = "Por favor validar todos los datos ingresados.";
            }

            return View(model);
        }
    }
}
