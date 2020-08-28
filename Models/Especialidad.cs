
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class Especialidad
    {
        public int id_especialidad { get; set; }
        public bool estado { get; set; }    
        public string nombre { get; set; }

         public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<Especialidad> mapeoEspecialidad)
            {
                mapeoEspecialidad.HasKey(x=>x.id_especialidad);
                mapeoEspecialidad.Property(x=> x.estado);
                mapeoEspecialidad.Property(x=> x.nombre);
                mapeoEspecialidad.ToTable("Especialidad");
            }
        }
        
    }
}