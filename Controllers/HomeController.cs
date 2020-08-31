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
    [Route("[controller]")]
    public class HomeControler : ControllerBase
    {
        private readonly FormularioARMService _formularioARMservice;
        public HomeControler(FormularioARMService formularioARMservice)
        {
            _formularioARMservice=formularioARMservice;
        }
        [HttpGet]
        [Route("MostrarPasantias")]
        public ActionResult MostrarPasantias()
        {
            var lista_pasantias=_formularioARMservice.MostrarPasantias();
            return Ok(lista_pasantias);
        }

        [HttpGet]
        [Route("FiltrarPasantias")]
        public ActionResult FiltrarPasantias(int id_especialidad=0, int cantidad_años=0,float remuneracion=0)
        {
            var lista_pasantias=_formularioARMservice.FiltrarPasantias(id_especialidad,cantidad_años,remuneracion);
            return Ok(lista_pasantias);
        }
        
    }
}
