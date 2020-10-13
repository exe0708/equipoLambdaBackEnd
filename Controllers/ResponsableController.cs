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
    public class ResponsableController : ControllerBase
    {
        private readonly ResponsableService _responsableService;
        public ResponsableController(ResponsableService responsableService)
        {
            _responsableService=responsableService;
           
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
            }
            catch(Exception e)
            {
                return Ok(e.Message);
            }
        }
    }
}