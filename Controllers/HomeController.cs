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
/*
        [HttpGet]
        [Route("MostrarPasantias")]
        public ActionResult FiltrarPasantias(int id_)
        {
            var lista_pasantias=_formularioARMservice.FiltrarPasantias();
            return Ok(lista_pasantias);
        }
        */
    }
}
