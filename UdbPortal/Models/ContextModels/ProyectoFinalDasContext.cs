using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace UdbPortal.Models.ContextModels;

public partial class ProyectoFinalDasContext : DbContext
{
    public ProyectoFinalDasContext()
    {
    }

    public ProyectoFinalDasContext(DbContextOptions<ProyectoFinalDasContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Base> Bases { get; set; }

    public virtual DbSet<Carrera> Carreras { get; set; }

    public virtual DbSet<Consultum> Consulta { get; set; }

    public virtual DbSet<Noticia> Noticias { get; set; }

    public virtual DbSet<TipoCarrera> TipoCarreras { get; set; }

    public virtual DbSet<TipoConsultum> TipoConsulta { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Base>(entity =>
        {
            entity.ToTable("Base");

            entity.Property(e => e.Descripcion)
                .HasMaxLength(1000)
                .IsUnicode(false);
            entity.Property(e => e.Enlace)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Seccion)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.UrlContenido)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Navigation(e => e.Noticia)
                .AutoInclude();
        });

        modelBuilder.Entity<Carrera>(entity =>
        {
            entity.Property(e => e.Descripcion)
                .HasMaxLength(700)
                .IsUnicode(false)
                .HasColumnName("descripcion");
            entity.Property(e => e.Titulo)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdBaseNavigation).WithMany(p => p.Carreras)
                .HasForeignKey(d => d.IdBase)
                .HasConstraintName("FK__Carreras__IdBase__29572725");

            entity.HasOne(d => d.Tipo).WithMany(p => p.Carreras)
                .HasForeignKey(d => d.TipoId)
                .HasConstraintName("FK_TipoCarrera");

            entity.Navigation(d => d.Tipo).AutoInclude();
        });

        modelBuilder.Entity<Consultum>(entity =>
        {
            entity.Property(e => e.Consulta)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdBaseNavigation).WithMany(p => p.Consulta)
                .HasForeignKey(d => d.IdBase)
                .HasConstraintName("FK__Consulta__IdBase__2F10007B");

            entity.HasOne(d => d.IdTipoNavigation).WithMany(p => p.Consulta)
                .HasForeignKey(d => d.IdTipo)
                .HasConstraintName("FK__Consulta__IdTipo__2E1BDC42");
        });

        modelBuilder.Entity<Noticia>(entity =>
        {
            entity.Property(e => e.Descripcion)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Imagen)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Titulo)
                .HasMaxLength(200)
                .IsUnicode(false);

            entity.HasOne(d => d.IdBaseNavigation).WithMany(p => p.Noticia)
                .HasForeignKey(d => d.IdBase)
                .HasConstraintName("FK__Noticias__IdBase__267ABA7A");
        });

        modelBuilder.Entity<TipoCarrera>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__TipoCarr__3214EC076216A9A9");

            entity.ToTable("TipoCarrera");

            entity.Property(e => e.Tipo)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TipoConsultum>(entity =>
        {
            entity.Property(e => e.Tipo)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
