using System;
using System.Collections.Generic;
using PasantiasWebApi.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace PasantiasWebApi.Services
{
    public class ResponsableService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public ResponsableService(PasantiasDBContext pasantiasDBContext)
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
            .Where(x=>x.formularioarm.id_estado==1 && x.id_estado==1 && DateTime.Compare(DateTime.Now,x.formularioarm.fechaBaja)<1 ).ToList();
            return lista_solicitudes;
        
        }

        public formularioarmxalumno AceptarSolicitud(int id_solicitud){
    
            var solicitud_modificada = _pasantiasDbContext.formularioarmxalumno
            .Where(x=>x.id_formularioArmXalumno == id_solicitud).SingleOrDefault();
            solicitud_modificada.fecha_respuesta = DateTime.Now;
            solicitud_modificada.id_estado = 2;

            _pasantiasDbContext.Entry(solicitud_modificada).State = EntityState.Modified;
            _pasantiasDbContext.Update(solicitud_modificada);
            _pasantiasDbContext.SaveChanges();

            return solicitud_modificada;

        }

        public formularioarmxalumno RechazarSolicitud(int id_solicitud,formularioarmxalumno solicitud){
    
            var solicitud_modificada = _pasantiasDbContext.formularioarmxalumno
            .Where(x=>x.id_formularioArmXalumno == id_solicitud).SingleOrDefault();
            solicitud_modificada.fecha_respuesta = DateTime.Now;
            solicitud_modificada.id_estado = 3;
            solicitud_modificada.observacion = solicitud.observacion;

            _pasantiasDbContext.Entry(solicitud_modificada).State = EntityState.Modified;
            _pasantiasDbContext.Update(solicitud_modificada);

            _pasantiasDbContext.SaveChanges();

            return solicitud_modificada;

        }

       


       

    }
}