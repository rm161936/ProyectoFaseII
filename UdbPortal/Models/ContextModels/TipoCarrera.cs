using System;
using System.Collections.Generic;

namespace UdbPortal.Models.ContextModels;

public partial class TipoCarrera
{

    public int Id { get; set; }

    public string Tipo { get; set; } = string.Empty;

    public virtual ICollection<Carrera> Carreras { get; set; } = new List<Carrera>();
}
