using System.Collections.Generic;
using MimeKit;
using MailKit.Net.Smtp;
using MailKit.Security;
using PasantiasWebApi.Models;

namespace PasantiasWebApi.Services
{
    public class CorreoService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public CorreoService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }
        
        public void postular(formularioarmxalumno alumnoxarm)
        {
            string asunto="Postulacion a Pasantia";
            string cuerpo="Felicitaciones usted se inscribio a la pasantia nnnn con exito";
            string mail=alumnoxarm.alumno.mail;
            enviarMail(asunto,cuerpo,mail);
        }
         public void aceptarPasantia(formularioarmxalumno alumnoxarm)
        {
            string asunto="Pasantia Aceptada";
            string cuerpo="Felicitaciones usted se fue pre-seleccionado a la pasantia nnnn con exito";
            string mail=alumnoxarm.alumno.mail;
            enviarMail(asunto,cuerpo,mail);
        }
         public void denegarPasantia(formularioarmxalumno alumnoxarm)
        {
            string asunto="Rechazo Postulacion";
            string cuerpo="Lamentamos informarle que la empresa rechazo su solicitud a la pasantia nnnn ";
            string mail=alumnoxarm.alumno.mail;
            enviarMail(asunto,cuerpo,mail);
        }

        public void enviarMail(string asunto,  string cuerpo,string mail)
        {
            try
            {
                
                var message = new MimeMessage();
                var Replymessage = new MimeMessage();
                message.From.Add(new MailboxAddress("Secretaria de Extensión Universitaria-Area Pasantías", "noreply-pasantias@frc.utn.edu.ar"));
                message.To.Add(new MailboxAddress("No-reply", mail));
                
            

                message.Subject = asunto;
                var body = new TextPart("html")
                {
                    Text =cuerpo
                };
                var multipart = new Multipart("mixed");
                multipart.Add(body);
                message.Body = multipart;
                
                using (var client = new SmtpClient())
                {
                    client.ServerCertificateValidationCallback = (s, c, h, e) => true;
                    client.Connect("smtp.gmail.com", 587, SecureSocketOptions.StartTls);
                    client.AuthenticationMechanisms.Remove("XOAUTH2");
                    client.Authenticate("pasantiautn01", "pasantiasutn");
                    client.Send(message);
                    client.Disconnect(true);
                   
                }
            }
            catch (System.Exception)
            {
                throw;
            }
        }
        
    }
}