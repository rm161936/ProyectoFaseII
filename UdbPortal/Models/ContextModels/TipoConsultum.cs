using System;
using System.Collections.Generic;

namespace UdbPortal.Models.ContextModels;

public partial class TipoConsultum
{
    public int Id { get; set; }

    public string? Tipo { get; set; }

    public virtual ICollection<Consultum> Consulta { get; set; } = new List<Consultum>();
}
