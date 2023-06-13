using System;
using System.Collections.Generic;

namespace UdbPortal.Models.ContextModels;

public partial class Carrera
{
    public Carrera(int id, string? titulo, int? idBase, int? tipoId, string? descripcion)
    {
        Id = id;
        Titulo = titulo;
        IdBase = idBase;
        TipoId = tipoId;
        Descripcion = descripcion;
    }

    public int Id { get; set; }

    public string? Titulo { get; set; }

    public int? IdBase { get; set; }

    public int? TipoId { get; set; }

    public string? Descripcion { get; set; }

    public virtual Base? IdBaseNavigation { get; set; }

    public virtual TipoCarrera Tipo { get; set; } = new TipoCarrera();
}
