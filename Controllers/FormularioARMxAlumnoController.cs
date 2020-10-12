using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PasantiasWebApi.Services;

namespace PasantiasWebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class FormularioARMxAlumnoController : ControllerBase
    {
        private readonly FormularioARMxAlumnoService _formularioARMxAlumnoService;
        public FormularioARMxAlumnoController(FormularioARMxAlumnoService formularioARMxAlumnoService)
        {
            _formularioARMxAlumnoService=formularioARMxAlumnoService;
        }
        [HttpGet]
        [Route("MostrarSolicitudes")]
        public ActionResult MostrarSolicitudes()
        {
            try
            {
                var lista_solicitudes=_formularioARMxAlumnoService.MostrarSolicitudes();
                return Ok(lista_solicitudes);
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }



    }
}
