using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Net.Mail;
using System.Data.SqlClient;

public partial class password_recover : System.Web.UI.Page
{
    string regEmail = @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    int isValidMail(String s)
    {
        Regex Reg = new Regex(regEmail);
        if (Reg.IsMatch(s))
            return 1;
        else
            return 0;
    }
    protected void pwd_Click(object sender, EventArgs e)
    {
        if ((isValidMail(Email.Text) == 1))
        {

            string connetionString = null;

            connetionString = "Data Source=dcm.uhcl.edu;Initial Catalog=c563316sp01g4;User ID=c563316sp01g4;Password=4686686";
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            var query = "select * from [USER] where emailAddress = @email ";
            SqlCommand que = new SqlCommand(query, cnn);
            que.Parameters.AddWithValue("@email", Email.Text);
            SqlDataReader data = que.ExecuteReader();
            int counter = 0;
            while (data.Read())
            {
                counter++;
            }
            cnn.Close();
            if (counter > 0)
            {
                MailMessage objeto_mail = new MailMessage();
                SmtpClient client = new SmtpClient();
                client.Port = 587;
                client.EnableSsl = true;
                client.Host = "smtp.gmail.com";
                client.Timeout = 10000;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("uhclwad@gmail.com", "Nishil123");
                objeto_mail.From = new MailAddress("uhclwad@gmail.com");
                objeto_mail.To.Add(new MailAddress(Email.Text));
                objeto_mail.Subject = "Password Recover";
                cnn.Open();
                data = que.ExecuteReader();
                //  objeto_mail.Body = "Message";

                //MailMessage mail = new MailMessage("uhclwad@gmail.com", Email.Text);
                //SmtpClient client = new SmtpClient();
                //client.Port = 25;
                //client.DeliveryMethod = SmtpDeliveryMethod.Network;
                //client.UseDefaultCredentials = false;
                //client.Host = "smtp.google.com";
                //mail.Subject = "Your Account Password";
                while (data.Read())
                {
                    //    Response.Write(data["Password"].ToString());
                    objeto_mail.Body = "We have sent you this mail for your password recovery request. Your password is " + data["Password"].ToString();
                }

                //  client.Send(mail);
                client.Send(objeto_mail);
                cnn.Close();
                string script = "<script type=\"text/javascript\">alert('Mail with your password is sent to You.');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
            else
            {
                string script = "<script type=\"text/javascript\">alert('We don't have this mail in our system.');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }

        }
        else
        {
            string script = "<script type=\"text/javascript\">alert('Not a valid Email Address.');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }
    }
}