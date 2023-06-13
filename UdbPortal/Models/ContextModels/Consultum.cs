using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace UdbPortal.Models.ContextModels;

public partial class Consultum
{
    public int Id { get; set; }

    [EmailAddress, Required(ErrorMessage = "La dirección de correo electrónico es obligatoria")]
    public string? Email { get; set; }
    [Required(ErrorMessage = "La consulta es obligatoria")]
    public string? Consulta { get; set; }
    [Display(Name = "Tipo de consulta"), Required(ErrorMessage = "El tipo de consulta es obligatorio")]
    public int? IdTipo { get; set; }

    public int? IdBase { get; set; }

    public virtual Base? IdBaseNavigation { get; set; }

    public virtual TipoConsultum? IdTipoNavigation { get; set; }
}
