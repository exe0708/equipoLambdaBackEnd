

using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class EstadoARM
    {
        public int id_estado { get; set; }
        public bool estado { get; set; }
        public string nombre { get; set; }  

     public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<EstadoARM> mapeoEstadoARM)
            {
                mapeoEstadoARM.HasKey(x=>x.id_estado);
                mapeoEstadoARM.Property(x=> x.estado);
                mapeoEstadoARM.Property(x=>x.nombre);
                mapeoEstadoARM.ToTable("EstadoARM");
                
            }
        }    
    }
}