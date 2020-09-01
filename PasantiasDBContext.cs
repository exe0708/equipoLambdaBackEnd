using Microsoft.EntityFrameworkCore;
using PasantiasWebApi.Models;
using System;
using System.Linq;
namespace PasantiasWebApi
{
    public class PasantiasDBContext : DbContext
    {
        public PasantiasDBContext(DbContextOptions options): base(options)
        {
        }
        public DbSet<barrio> barrio { get; set; }
        public DbSet<cantidadaniospasante> cantidadaniospasante { get; set; }
        public DbSet<empresa> empresa { get; set; }
        public DbSet<especialidad> especialidad { get; set; }
        public DbSet<especialidadxarm> especialidadxarm{ get; set; }
        public DbSet<estadoarm> estadoarm { get; set; }
        public DbSet<estadosucursal> estadosucursal { get; set; }
        public DbSet<formularioarm> formularioarm { get; set; }
        public DbSet<genero> genero { get; set; }
        public DbSet<localidad> localidad { get; set; }
        public DbSet<pais> pais { get; set; }
        public DbSet<provincia> provincia { get; set; }
        public DbSet<sucursalesxempresa> sucursalesxempresa { get; set; }
        public DbSet<tipoempresa> tipoempresa { get; set; }
        
         protected override void OnModelCreating(ModelBuilder modeloCreador)
         {
          
             new barrio.Mapeo(modeloCreador.Entity<barrio>());
             new cantidadaniospasante.Mapeo(modeloCreador.Entity<cantidadaniospasante>());
             new empresa.Mapeo(modeloCreador.Entity<empresa>());
             new especialidad.Mapeo(modeloCreador.Entity<especialidad>());
             new especialidadxarm.Mapeo(modeloCreador.Entity<especialidadxarm>());
             new estadoarm.Mapeo(modeloCreador.Entity<estadoarm>());
             new estadosucursal.Mapeo(modeloCreador.Entity<estadosucursal>());
             new formularioarm.Mapeo(modeloCreador.Entity<formularioarm>());
             new genero.Mapeo(modeloCreador.Entity<genero>());
             new localidad.Mapeo(modeloCreador.Entity<localidad>());
             new pais.Mapeo(modeloCreador.Entity<pais>());
             new provincia.Mapeo(modeloCreador.Entity<provincia>());
             new sucursalesxempresa.Mapeo(modeloCreador.Entity<sucursalesxempresa>());
             new tipoempresa.Mapeo(modeloCreador.Entity<tipoempresa>());   
            //modeloCreador.Entity<especialidadxarm>().HasQueryFilter(x=>x.formularioarm.id_estado==1 && DateTime.Compare(x.formularioarm.fechaBaja,DateTime.Now)<1);
            
         }

    }
}