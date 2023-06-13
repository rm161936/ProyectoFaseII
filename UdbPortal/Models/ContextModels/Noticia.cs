using System;
using System.Collections.Generic;

namespace UdbPortal.Models.ContextModels;

public partial class Noticia
{
    public int Id { get; set; }

    public int? IdBase { get; set; }

    public string? Imagen { get; set; }

    public string? Titulo { get; set; }

    public string? Descripcion { get; set; }

    public virtual Base? IdBaseNavigation { get; set; }
}
