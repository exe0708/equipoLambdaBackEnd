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
                lista_pasantias= _pasantiasDbContext.EspecialidadXARM.Include(x=>x.Especialidad).Include(x=>x.Formulario).ToList();
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
            var lista_pasantias = new List<EspecialidadXARM>();
            lista_pasantias= _pasantiasDbContext.EspecialidadXARM.Include(x=>x.Especialidad).Include(x=>x.Formulario).ToList();
            int[]filtros= new int[3]{0,0,0};
            if(id_especialidad!=0)
            {
                filtros[0]=1;
            }
            if(cantidad_años!=0)
            {
                filtros[1]=2;
            }
            if(cantidad_años!=0)
            {
                filtros[2]=3;
            }
            try
            {
                foreach (var filtro in filtros)
                {
                    switch(filtro)
                    {
                        case 1:
                                lista_pasantias.Where(x=>x.id_especialidad==id_especialidad);
                                break;
                        case 2:
                                lista_pasantias.Where(x=>x.Formulario.id_cantidadAños==cantidad_años);
                                break;
                        case 3:
                                lista_pasantias.Where(x=>x.Formulario.remuneracion>=remuneracion);
                                break;

                    }    
                }
                return lista_pasantias;
            }
            catch (System.Exception)
            {
                return lista_pasantias;
                throw;
            }
            

        }

    }
}