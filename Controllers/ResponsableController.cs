
using System;
using Microsoft.AspNetCore.Mvc;
using PasantiasWebApi.Models;
using PasantiasWebApi.Services;

namespace PasantiasWebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ResponsableController : ControllerBase
    {
        private readonly ResponsableService _responsableService;
        public ResponsableController(ResponsableService responsableService)
        {
            _responsableService=responsableService;
        }
               [HttpGet]
        [Route("obtenerResponsable/{legajo}")]
        public ActionResult obtenerResponsable(int legajo)
        {
            try
            {
                var responsable=_responsableService.obtenerResponsable(legajo);
                return Ok(responsable);
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }

        [HttpGet]
        [Route("mostrarSolicitudes")]
        public ActionResult MostrarSolicitudes()
        {
            try
            {
                var lista_solicitudes=_responsableService.MostrarSolicitudes();
                return Ok(lista_solicitudes);
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }

        [HttpPut]
        [Route("aceptarSolicitud/{id_solicitud}")]
        public ActionResult AceptarSolicitud(int id_solicitud){
            try
            {
                var respuesta = _responsableService.AceptarSolicitud(id_solicitud);
                return Ok(respuesta);

            }
            catch (Exception ex) 
            {
                return BadRequest(ex.Message);
            }
        
        }

        [HttpPut]
        [Route("rechazarSolicitud/{id_solicitud}")]
        public ActionResult RechazarSolicitud(int id_solicitud, formularioarmxalumno solicitud)
        {
            try
            {
               var respuesta = _responsableService.RechazarSolicitud(id_solicitud, solicitud);
               return Ok(respuesta); 
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }



    }
}