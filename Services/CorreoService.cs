using System.Collections.Generic;
using MimeKit;
using MailKit.Net.Smtp;
using MailKit.Security;


namespace PasantiasWebApi.Services
{
    public class CorreoService
    {
        private readonly PasantiasDBContext _pasantiasDbContext;
        public CorreoService(PasantiasDBContext pasantiasDBContext)
        {
                _pasantiasDbContext=pasantiasDBContext;
        }


        public bool enviarMail(string asunto,  string cuerpo,string mail)
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
                    client.Authenticate("noreply-pasantias@frc.utn.edu.ar", "3.A%qoW7+296T");
                    client.Send(message);
                    client.Disconnect(true);
                    return true;
                }
            }
            catch (System.Exception)
            {
                return false;
            }
        }
        
    }
}