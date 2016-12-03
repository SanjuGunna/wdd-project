<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Log in/Register</title>
    <link href="style.css" rel="stylesheet" />
   
    </head>
<body>
     <form id="form1" runat="server">
    <div style="height: 20%">
        <img src="photos2/Cover1.jpg" style="width: 100%; height: 447px; margin-bottom: 0px;" />
    </div>
   
    <div style="background-color : AppWorkspace ">
 
    <h4 style="color:blueviolet; text-align:left" >Just few steps...</h4>
    </div>
     <div id ="PersonalInfo">
     <h2 style="color:blueviolet; text-align:left" class="auto-style2" >Personal Information</h2>
    
    <div style=" text-align:left&gt; &lt">
        <h4 style="color:blueviolet; text-align:left" class="auto-style3" >Tell us a little about yourself.This information is <b>only</b>used
            so we can <b>pay</b> you, provide a <b>free shipping label</b> and communicate with you.</h4>
        
        <table>
            <tr>
                <td>Your Name: *</td>
                <td>
                     <asp:TextBox ID="Name" runat="server" Width="268px"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="Name" ValidationGroup="a" errormessage="Please enter your name!" />
                </td>
             
            </tr>
            <tr>
                <td>Address Line1: *</td>
                <td>
                    <asp:TextBox ID="Address1" runat="server" Width="342px"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" id="reqAdd" controltovalidate="Address1" ValidationGroup="a" errormessage="Please enter your Address!" />
                </td>
                
            </tr>
            <tr>
                <td>Address Line2</td>
                <td>
                  <asp:TextBox ID="Address2" runat="server" Width="342px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>City *</td>
                <td>
                    <asp:TextBox ID="City" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" id="reqCity" controltovalidate="City" ValidationGroup="a" errormessage="Please enter your City!" />
                </td>
               
            </tr>
            <tr>
                <td>Zip *</td>
                <td>
                     <asp:TextBox ID="Zip" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" id="reqZip" controltovalidate="Zip" ValidationGroup="a" errormessage="Please enter your name!" />
                </td>
                 
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <select  name="state1" id="state" runat="server">
	<option value="AL">AL</option>
	<option value="AK">AK</option>
	<option value="AZ">AZ</option>
	<option value="AR">AR</option>
	<option value="CA">CA</option>
	<option value="CO">CO</option>
	<option value="CT">CT</option>
	<option value="DE">DE</option>
	<option value="DC">DC</option>
	<option value="FL">FL</option>
	<option value="GA">GA</option>
	<option value="HI">HI</option>
	<option value="ID">ID</option>
	<option value="IL">IL</option>
	<option value="IN">IN</option>
	<option value="IA">IA</option>
	<option value="KS">KS</option>
	<option value="KY">KY</option>
	<option value="LA">LA</option>
	<option value="ME">ME</option>
	<option value="MD">MD</option>
	<option value="MA">MA</option>
	<option value="MI">MI</option>
	<option value="MN">MN</option>
	<option value="MS">MS</option>
	<option value="MO">MO</option>
	<option value="MT">MT</option>
	<option value="NE">NE</option>
	<option value="NV">NV</option>
	<option value="NH">NH</option>
	<option value="NJ">NJ</option>
	<option value="NM">NM</option>
	<option value="NY">NY</option>
	<option value="NC">NC</option>
	<option value="ND">ND</option>
	<option value="OH">OH</option>
	<option value="OK">OK</option>
	<option value="OR">OR</option>
	<option value="PA">PA</option>
	<option value="RI">RI</option>
	<option value="SC">SC</option>
	<option value="SD">SD</option>
	<option value="TN">TN</option>
	<option value="TX">TX</option>
	<option value="UT">UT</option>
	<option value="VT">VT</option>
	<option value="VA">VA</option>
	<option value="WA">WA</option>
	<option value="WV">WV</option>
	<option value="WI">WI</option>
	<option value="WY">WY</option>
</select>

                </td>
            </tr>
        </table>
    </div>
    <div>
       <h4 style="color:blueviolet; text-align:left" >Login Information</h4>
        <table class="style1">
            <tr>
                <td>Email address *</td>
                <td>
                  <asp:TextBox ID="Email" runat="server" Width="264px"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" id="reqEmail" controltovalidate="Email" ValidationGroup="a" errormessage="Please enter your Email!" />
                </td>
                
            </tr>
            <tr>
                <td>Passsword *</td>
                <td>
                    <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" id="reqPass" controltovalidate="Password" ValidationGroup="a" errormessage="Please enter Password!" />
                     
                </td>
             
               
                   
                   
            </tr>
            <tr>
                <td>Confirm password</td>
                <td>
                  <asp:TextBox ID="CPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
       <div>
       <h4 style="color:blueviolet; text-align:left" >Pay me by</h4>

     </div>
        <div>   
        <asp:RadioButton ID="r1" GroupName="payment" Text="Cheque" runat="server" />  
        <asp:RadioButton ID="r2" GroupName="payment" Text="PayPal" runat="server" />  
         
            <br />
            <asp:Button ID="myBtn" runat="server" Text="Go to main page" 
                OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="ConfirmUser" Text="Complete registration" ValidationGroup="a" Width="177px" />
         </div> 
    </div>
        
        <div id ="LoginInfo">
            <h2>Already have an account?</h2>
            <h4>Login</h4>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        Email Address
                    </asp:TableCell>
                    <asp:TableCell>
                    <asp:TextBox ID="LoginEmail" runat="server"> </asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" id="reqone" controltovalidate="LoginEmail" ValidationGroup="b" errormessage="Please enter Password!" />
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        Password
                    </asp:TableCell>
                    <asp:TableCell>
                     <asp:TextBox ID="Loginpwd" TextMode="Password" runat="server"> </asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" id="reqtwo" controltovalidate="Loginpwd" ValidationGroup="b" errormessage="Please enter Password!" />
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                       <asp:Button id="btnLogin" Text="Login" OnClick="Login" ValidationGroup="b" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:Button id="forgotpassword" Text="Forgot Password" OnClick="Forgot" runat="server"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>     

</body>
</html>

