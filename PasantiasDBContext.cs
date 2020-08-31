using Microsoft.EntityFrameworkCore;
using PasantiasWebApi.Models;
using System;
namespace PasantiasWebApi
{
    public class PasantiasDBContext : DbContext
    {
        public PasantiasDBContext(DbContextOptions<PasantiasDBContext> options): base(options)
        {
        }

        public DbSet<Especialidad> Especialidad { get; set; }

        public DbSet<EspecialidadXARM> EspecialidadXARM{ get; set; }
        public DbSet<EstadoARM> EstadoARM { get; set; }
         public DbSet<Especialidad> FormularioARM { get; set; }

         protected override void OnModelCreating(ModelBuilder modeloCreador)
         {
             new Especialidad.Mapeo(modeloCreador.Entity<Especialidad>());
             new EspecialidadXARM.Mapeo(modeloCreador.Entity<EspecialidadXARM>());
             new EstadoARM.Mapeo(modeloCreador.Entity<EstadoARM>());
             new FormularioARM.Mapeo(modeloCreador.Entity<FormularioARM>());
            modeloCreador.Entity<FormularioARM>().HasQueryFilter(x=>x.id_estado==0 && DateTime.Compare(x.fecha_baja,DateTime.Now)>1);
         }

    }
}