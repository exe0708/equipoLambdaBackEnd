using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PasantiasWebApi.Services;
using PasantiasWebApi.Models;

namespace PasantiasWebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
     public class AlumnoController : ControllerBase
    {
        private readonly AlumnoService _alumnoService;
        public AlumnoController(AlumnoService alumnoService)
        {
            _alumnoService =alumnoService;
        }
/*
        [HttpPost]
        [Route("postularAlumno")]
        public IActionResult postularAlumno([FromBody] formularioarmxalumno alumnoxarm)
        {
            try
            {
                var postulado= _alumnoService.postularAlumno(alumnoxarm);
                if(postulado)
                    {
                        return Ok();
                    }
                else
                    {
                        return BadRequest();
                    }
            }
            catch(System.Exception)
            {
                throw;
            }
        }        
        
        [HttpPost]
        [Route("actualizarAlumno")]
        public IActionResult actualizarAlumno([FromBody] alumno alumno)
        {
            try
            {
                
                var actualizar= _alumnoService.actualizarAlumno(alumno);    
                if(actualizar)
                    {
                        return Ok();
                    }
                else
                    {
                        return BadRequest();
                    }
                
            }
            catch (System.Exception)
                {
                    throw;
                }
        }
       */
    }
}