using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;

namespace IRSLCRM.App_Code
{
    using IRSLCRM.Models;

    public class EmailUtility
    {

        //public static MailMessage CreateRequestAQuoteHTMLEmaailMessage(RequestAQuoteModel model)
        //{
           
        //    return new MailMessage
        //    {
        //        Body = new RequestAQuoteHTML(model).TransformText(),
        //        From = new MailAddress("info@irslconsulting.com", "IRSL Consulting", Encoding.UTF8),
        //        To = { new MailAddress(model.Email, model.ContactName) },
        //        BodyEncoding = Encoding.UTF8,
        //        Subject = model.Subject,
        //        IsBodyHtml = true
        //    };
        //}

        //public static void SendCreateRequestAQuoteHTMLEmaailMessageMail(RequestAQuoteModel model)
        //{
        //    var message = CreateRequestAQuoteHTMLEmaailMessage(model);
        //    SmtpClient client = new SmtpClient("locahost");
        //    client.Send(message);
        //}
    }
}