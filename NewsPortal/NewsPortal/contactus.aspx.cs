using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace NewsPortal
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {   
            try{ 
                if (Page.IsValid)
                
                { 
            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("mpjwebsign.se@gmail.com");
            mailMessage.To.Add("mpjwebsign.se@gmail.com");
            mailMessage.Subject = txtSubject.Text;

            mailMessage.Body = "<b>Sender Name : </b>" + txtName.Text + "<br/>"
                + "<b>Sender Email : </b>" + txtEmail.Text + "<br/>"
                + "<b>Message : </b>" + txtMessage.Text;
            mailMessage.IsBodyHtml = true;

            SmtpClient smtpClint = new SmtpClient("smtp.gmail.com", 587);
            smtpClint.EnableSsl = true;
            smtpClint.Credentials = new System.Net.NetworkCredential("mpjwebsign.se@gmail.com", "24262426g");
            smtpClint.Send(mailMessage);

            Labell.ForeColor = System.Drawing.Color.DarkGreen;
            Labell.Text = "Thank you for contacting us";

            txtName.Enabled = false;
            txtEmail.Enabled = false;
            txtMessage.Enabled = false;
            txtSubject.Enabled = false;
            Button1.Enabled = false;

              }
                 
    }    
      catch(Exception ex)
            {
                // log - Eve´nt Viewer or table
                Labell.ForeColor = System.Drawing.Color.DarkGreen;
                Labell.ForeColor = System.Drawing.Color.Red;
                Labell.Text = "There is an unknow problem. Please try later";
            }   
        }
    }
}