using System;
using System.Collections.Generic;

namespace UdbPortal.Models.ContextModels;

public partial class Base
{
    public Base(string seccion, string enlace, string urlContenido, string descripcion)
    {
        Seccion = seccion;
        Enlace = enlace;
        UrlContenido = urlContenido;
        Descripcion = descripcion;
    }

    public int Id { get; set; }

    public string Seccion { get; set; }

    public string Enlace { get; set; }

    public string UrlContenido { get; set; }

    public string Descripcion { get; set; }

    public virtual ICollection<Carrera> Carreras { get; set; } = new List<Carrera>();

    public virtual ICollection<Consultum> Consulta { get; set; } = new List<Consultum>();

    public virtual ICollection<Noticia> Noticia { get; set; } = new List<Noticia>();
}
