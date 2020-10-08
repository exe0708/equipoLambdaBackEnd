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
        private readonly AlumnoService _Alumnoservice;
        public AlumnoController(FormularioARMService formularioARMservice)
        {
            _formularioARMservice=formularioARMservice;
        }
}