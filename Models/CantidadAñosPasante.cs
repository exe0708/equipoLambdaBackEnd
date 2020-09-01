using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace PasantiasWebApi.Models
{
    public class cantidadañospasante
    {
        
        public int id_cantidad_añospasante { get; set; }
        public string descripcion { get; set; }
        public string nombre { get; set; }
        
        public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<cantidadañospasante> mapeoCantidadAños)
            {
                mapeoCantidadAños.HasKey(x=>x.id_cantidad_añospasante);
              
            }
        }
    }
}