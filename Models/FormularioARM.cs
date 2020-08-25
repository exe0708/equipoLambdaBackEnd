
using System;
using PasantiasWebApi.Models;
namespace PasantiasWebApi.Models
{
    public class FormularioARM
    {
        public int id_ARM { get; set; }
        public int cantidad_pasantes { get; set; }
        public string cargo_aCubrir { get; set; }
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
        
        
        
    }
}