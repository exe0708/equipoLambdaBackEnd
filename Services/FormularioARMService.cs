using System;
using System.Collections.Generic;
using PasantiasWebApi.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace PasantiasWebApi.Services
{
    public class FormularioARMService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public FormularioARMService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }

        public List<EspecialidadXARM> MostrarPasantias()
        {
            var lista_pasantias = new List<EspecialidadXARM>();
            try
            {
                lista_pasantias= _pasantiasDbContext.EspecialidadXARM.Where(x=>x.Formulario.id_estado==1&& DateTime.Compare(x.Formulario.fecha_baja,DateTime.Now)>1)
                .Include(x=>x.Especialidad).Include(x=>x.Formulario).ToList();
                return lista_pasantias;
            }
            catch (System.Exception)
            {
                return lista_pasantias;
                throw;
            }
            
        }
        public List<EspecialidadXARM> FiltrarPasantias(int id_especialidad, int cantidad_años,float remuneracion)
        {
            
            return null;

        }

    }
}