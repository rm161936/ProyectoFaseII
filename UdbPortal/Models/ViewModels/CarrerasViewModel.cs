using UdbPortal.Models.ContextModels;

namespace UdbPortal.Models.ViewModels
{
    public class CarrerasViewModel
    {
        public CarrerasViewModel(int id, string tipoCarrera, List<Carrera> carreras)
        {
            Id = id;
            TipoCarrera = tipoCarrera;
            Carreras = carreras;
        }

        public int Id { get; set; }
        public string TipoCarrera { get; set; }
        public List<Carrera> Carreras { get; set; }

    }
}
