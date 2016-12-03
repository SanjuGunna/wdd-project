using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{

    string regEmail = @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$";
    string regPass = @"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,10}$";
    string regZip = @"^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$";
    string regIsbn = @"^978[-][0-9]{10}$";
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
string connetionString = null;

connetionString = "Data Source=dcm.uhcl.edu;Initial Catalog=c563316sp01g4;User ID=c563316sp01g4;Password=4686686";
        cnn = new SqlConnection(connetionString);
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void ConfirmUser(object sender, EventArgs e)
    {
        if(Name.Text != "" && Email.Text != "" && Address1.Text != "" && Zip.Text != "" && Password.Text != "" && City.Text != "")
        {
        int emailValidator = isValidMail(Email.Text);
        int zipValidator = isValidZip();
        int passValidator = isValidPass();
     //   Response.Write("Email" + emailValidator + "zip" + zipValidator + "Pass" + passValidator);
        if(emailValidator == 1 && zipValidator == 1 && passValidator == 1)
        {
            User obj = new User();
            obj.Name = Name.Text;
            obj.Addressline1 = Address1.Text;
            obj.Addressline2 = Address2.Text;
            obj.City = City.Text;
            obj.Zip = Zip.Text;
            obj.State = state.Value;
            obj.Email = Email.Text;
            obj.Password = Password.Text;

           List<User> users = Application["user"] as List<User>;
            int counter = 0;
            cnn.Open();
            var query = "select * from [USER] where emailAddress=@email";
            SqlCommand que = new SqlCommand(query, cnn);
            que.Parameters.AddWithValue("@email", Email.Text);
            SqlDataReader data = que.ExecuteReader();
            
            while (data.Read())
            {
                counter++;
            }
            cnn.Close();
     /*       foreach(var ob in users)
            {
                if (ob.Email == Email.Text)
                {
                    counter++;
                }
                else
                {
                }
            }*/
           if(counter > 0)
           {
               string script = "<script type=\"text/javascript\">alert('This User is Already Rehgsitered.');</script>";
               ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
           }
           else
           {
               if(Password.Text == CPassword.Text)
               {
               users.Add(obj);
               Application["user"] = users;
               cnn.Open();

               query = "insert into [USER] VALUES (@emailAddress, @Name, @AddressLine1, @AddressLine2, @City,@Zip,@State,@Password)";
                
               que = new SqlCommand(query, cnn);
               que.Parameters.AddWithValue("@emailAddress", Email.Text);
               que.Parameters.AddWithValue("@Name", Name.Text);
               que.Parameters.AddWithValue("@AddressLine1", Address1.Text);
               que.Parameters.AddWithValue("@AddressLine2", Address2.Text);
               que.Parameters.AddWithValue("@City", City.Text);
               que.Parameters.AddWithValue("@Zip", Zip.Text);
               que.Parameters.AddWithValue("@State", state.Value);
               que.Parameters.AddWithValue("@Password", Password.Text);

               que.ExecuteNonQuery();
               cnn.Close();
               string script1 = "<script type=\"text/javascript\">alert('You are Registerd. Log in to start work.');</script>";
               ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
               }
               else
               {
                   string script2 = "<script type=\"text/javascript\">alert('Password and Confirm Password do not match.');</script>";
               ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script2);
               }
           }


        
        }
        else
        {
            
            if(emailValidator == 0 && zipValidator == 1 && passValidator == 1)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered email is not valid mail');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
            else if(emailValidator == 1 && zipValidator == 0 && passValidator == 1)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered zip is not valid zip');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
             else if(emailValidator == 1 && zipValidator == 1 && passValidator == 0)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered Password  is not a valid Password');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
             else if(emailValidator == 0 && zipValidator == 0 && passValidator == 1)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered Email and Zip  is not in valid format');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
             else if(emailValidator == 0 && zipValidator == 1 && passValidator == 0)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered Email and Password  is not in valid format');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
             else if(emailValidator == 1 && zipValidator == 0 && passValidator == 0)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered Zip and Password  is not in valid format');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
            else if(emailValidator == 0 && zipValidator == 1 && passValidator == 0)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered Email and Password  is not in valid format');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
            else if(emailValidator == 0 && zipValidator == 0 && passValidator == 0)
            {
                string script1 = "<script type=\"text/javascript\">alert('Entered Email , Password and Zip is not in valid format');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
            
          //  string script1 = "<script type=\"text/javascript\">alert('Entered deltails are not correct. Try again');</script>";
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
        }
        }
        
        else{

            string script1 = "<script type=\"text/javascript\">alert('One of the require field is Empty.');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
        }
        
       // Response.Redirect("Default.aspx");
    }
    protected void Login(object sender, EventArgs e)
    {

       // User current;
        if ((isValidMail(LoginEmail.Text) == 1) && (Loginpwd.Text != ""))
        {
            List<User> users = Application["user"] as List<User>;
            int counter = 0;
            cnn.Open();
            var query = "select * from [USER] where emailAddress = @email and Password=@password ";
            SqlCommand que = new SqlCommand(query, cnn);
            que.Parameters.AddWithValue("@email",LoginEmail.Text.ToString());
            que.Parameters.AddWithValue("@password", Loginpwd.Text.ToString());
            SqlDataReader data = que.ExecuteReader();

            while (data.Read())
            {
                counter++;
            }
            cnn.Close();
          /*  foreach (var ob in users)
            {
                if (ob.Email == LoginEmail.Text)
                {
                    if (ob.Password == Loginpwd.Text)
                    {
                    //    current = ob;
                        Session["current"] = ob;
                        counter++;
                    }
                    
                }
                else
                {
                }
            }
            */
            if (counter > 0)
            {
                
               // Application["user"] = users;
                Session["current"] = LoginEmail.Text;
                Response.Write("user Logged in");
                Response.Redirect("Default.aspx");
            }
            else
            {
                string script1 = "<script type=\"text/javascript\">alert('You are not  Registerd. Register First .');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script1);
            }
        }
     
       // Response.Redirect("Default.aspx");
    }
    protected void Forgot(object sender, EventArgs e)
    {
       
        Response.Redirect("password_recover.aspx");
    }
    
    int isValidMail(String s)
    {
        Regex Reg = new Regex(regEmail);
        if(Reg.IsMatch(s))
        return 1;
        else
        return 0;
    }
    int isValidPass()
    {
         Regex Reg = new Regex(regPass);
        if(Reg.IsMatch(Password.Text) && (Password.Text == CPassword.Text))
        return 1;
        else
        return 0;

    
    }

    int isValidZip()
    {

         Regex Reg = new Regex(regZip);
        if(Reg.IsMatch(Zip.Text))
        return 1;
        else
        return 0;
    }

    int isValidIsbn()
    {

        return 0;
    }


}