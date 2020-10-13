using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PasantiasWebApi.Services;
<<<<<<< HEAD
using PasantiasWebApi.Models;
=======
>>>>>>> desarrollo

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
<<<<<<< HEAD
        }
        [HttpGet]
        [Route("MostrarSolicitudes")]
        public ActionResult MostrarSolicitudes()
        {
            try
            {
                var lista_solicitudes=_responsableService.MostrarSolicitudes();
                return Ok(lista_solicitudes);
=======
           
        }
        [HttpPost]
        [Route("ConfirmarPedido")]
        public ActionResult ConfirmarPedido()
        {
            try
            {
               if(_responsableService.confimar_pedido())
               {
               return Ok(true);
               }
               else
               {
                   return Ok(false);
               }
>>>>>>> desarrollo
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }
<<<<<<< HEAD

        [HttpPut]
        [Route("AceptarSolicitud/{id_solicitud}")]
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
        [Route("RechazarSolicitud/{id_solicitud}")]
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



=======
>>>>>>> desarrollo
    }
}