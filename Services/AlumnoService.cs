
namespace PasantiasWebApi.Services
{
    public class AlumnoService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public AlumnoService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }



        
    }
}