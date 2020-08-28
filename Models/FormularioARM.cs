
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PasantiasWebApi.Models;
namespace PasantiasWebApi.Models
{
    public class FormularioARM
    {
        public int id_ARM { get; set; }
        public int cantidad_pasantes { get; set; }
        public string cargo_aCubrir { get; set; }
        public string codigoARM { get; set; }
        public string denegacion_debidoA { get; set; }
        public int duracion_meses { get; set; }
        public string mail { get; set; }
        public bool estudiante_docente { get; set; }
        public string experencia { get; set; }
        public DateTime fehca_alta { get; set; }
        public DateTime fecha_baja { get; set; }
        public DateTime hora_inicio { get; set; }
        public DateTime hora_fin { get; set; }
        public DateTime horario_inicioEntrevista { get; set; }
        public DateTime horario_finalEntrevista { get; set; }
        public string lugar_trabajo { get; set; }
        public string otros_conocimientos { get; set; }
        public string otros_requisitos { get; set; }
        public string perfil_solicitado { get; set; }
        public float remuneracion { get; set; }
        public string seofrece { get; set; }
        public bool sexo { get; set; }
        public int id_cantidadAños { get; set; }    
        public CantidadAñosPasante CantidadAños { get; set; }
        public int id_estado { get; set; }    
        public EstadoARM Estado { get; set; }
        
          public class Mapeo
        {
             public Mapeo(EntityTypeBuilder<FormularioARM> mapeoFormularioARM)
            {
                mapeoFormularioARM.HasKey(x=>x.id_ARM);
                mapeoFormularioARM.Property(x=> x.cantidad_pasantes);
                mapeoFormularioARM.Property(x=> x.cargo_aCubrir);
                mapeoFormularioARM.Property(x=> x.codigoARM);
                mapeoFormularioARM.Property(x=> x.denegacion_debidoA);
                mapeoFormularioARM.Property(x=> x.duracion_meses);
                mapeoFormularioARM.Property(x=> x.mail);
                mapeoFormularioARM.Property(x=> x.estudiante_docente);
                mapeoFormularioARM.Property(x=> x.experencia);
                mapeoFormularioARM.Property(x=> x.fecha_baja);
                mapeoFormularioARM.Property(x=> x.fehca_alta);
                mapeoFormularioARM.Property(x=> x.hora_inicio);
                mapeoFormularioARM.Property(x=> x.hora_fin);
                mapeoFormularioARM.Property(x=> x.horario_inicioEntrevista);
                mapeoFormularioARM.Property(x=> x.horario_finalEntrevista);
                mapeoFormularioARM.Property(x=> x.lugar_trabajo);
                mapeoFormularioARM.Property(x=> x.otros_conocimientos);
                mapeoFormularioARM.Property(x=> x.otros_requisitos);
                mapeoFormularioARM.Property(x=> x.perfil_solicitado);
                mapeoFormularioARM.Property(x=> x.remuneracion);
                mapeoFormularioARM.Property(x=> x.seofrece);
                mapeoFormularioARM.Property(x=> x.sexo);
                mapeoFormularioARM.HasOne(x=> x.CantidadAños);
                mapeoFormularioARM.HasOne(x=> x.Estado);
                mapeoFormularioARM.ToTable("FormularioARM");
                
            }
        }    
        
        
    }
}