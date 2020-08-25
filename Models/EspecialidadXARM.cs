
using PasantiasWebApi.Models;

namespace PasantiasWebApi.EspecialidadXARM
{
    public class EspecialidadXARM
    {
        public int id_especialidadXARM { get; set; }
        public bool estado { get; set; }

        public int id_formularioARM { get; set; }

        public FormularioARM Formulario { get; set; }

    }
    
}