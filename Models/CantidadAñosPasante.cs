using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class CantidadAñosPasante
    {

        public int id_cantidadAños { get; set; }
        public string descripcion { get; set; }
        public string nombre { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<CantidadAñosPasante> mapeoCantidadAños)
            {
                mapeoCantidadAños.HasKey(x=>x.id_cantidadAños);
                mapeoCantidadAños.Property(x=> x.nombre);
                mapeoCantidadAños.Property(x=> x.descripcion);
                mapeoCantidadAños.ToTable("CantidadAñosPasante");
            }
        }
    }
}