
using System;
using System.Collections.Generic;
using PasantiasWebApi.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;
namespace PasantiasWebApi.Services
{
    public class AlumnoService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public AlumnoService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }
        public alumno obtenerAlumno(int legajo)
        {
            var alumno = _pasantiasDbContext.alumno.Include(x=>x.especialidad).Where(x=> x.legajo== legajo).SingleOrDefault();
            return alumno;
        }
        public bool actualizarAlumno(alumno alumno)
        {
            bool respuesta =false;
            try 
            {
                _pasantiasDbContext.alumno.Update(alumno);
                _pasantiasDbContext.SaveChanges();
                respuesta = true;
            }
            catch(System.Exception)
            {
                throw;
            }
            return respuesta;
        }

        public bool postularAlumno(formularioarmxalumno modelo)
        {
            try
            {
                _pasantiasDbContext.formularioarmxalumno.Add(modelo);
                _pasantiasDbContext.SaveChanges();
            }
            catch (System.Exception)
            {
                
                throw;
            }
            
            return true;
        }



        
    }
}