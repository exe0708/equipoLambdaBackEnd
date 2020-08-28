
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PasantiasWebApi.Models;

namespace PasantiasWebApi.Models
{
    public class EspecialidadXARM
    {
        public int id_especialidadXARM { get; set; }
        public bool estado { get; set; }
        public int id_formularioARM { get; set; }
        public FormularioARM Formulario { get; set; }
         public int id_especialidad { get; set; }
        public Especialidad Especialidad { get; set; }

         public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<EspecialidadXARM> mapeoEspecialidadXARM)
            {
                mapeoEspecialidadXARM.HasKey(x=>x.id_especialidadXARM);
                mapeoEspecialidadXARM.Property(x=> x.estado);
                mapeoEspecialidadXARM.HasOne(x=>x.Formulario);
                mapeoEspecialidadXARM.HasOne(x=>x.Especialidad);
                mapeoEspecialidadXARM.ToTable("EspecialidadXARM");

            }
        }

    }
    
}