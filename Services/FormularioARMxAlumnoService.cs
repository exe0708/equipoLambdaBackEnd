using System;
using System.Collections.Generic;
using PasantiasWebApi.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace PasantiasWebApi.Services
{
    public class FormularioARMxAlumnoService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public FormularioARMxAlumnoService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }

        public List<formularioarmxalumno> MostrarSolicitudes()
        {
            var lista_solicitudes = new List<formularioarmxalumno>();
         
            lista_solicitudes= _pasantiasDbContext.formularioarmxalumno
            .Include(x=>x.formularioarm)
            .Include(x=>x.alumno)
            .Include(x=>x.responsable)
            .Include(x=>x.formularioarm.sucursal)
            .Include(x=>x.estadoarmxalumno)
            .Where(x=>x.formularioarm.id_estado==1 && x.estadoarmxalumno.id_estado==1 && DateTime.Compare(DateTime.Now,x.formularioarm.fechaBaja)<1 ).ToList();
            return lista_solicitudes;
        
        }


       

    }
}