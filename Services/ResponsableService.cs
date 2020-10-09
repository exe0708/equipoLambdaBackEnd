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

    public bool confimar_pedido()
    {

        return true;
    }
    

    }
}