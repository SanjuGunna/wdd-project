<%@ Page Language="C#" AutoEventWireup="true" CodeFile="password_recover.aspx.cs" Inherits="password_recover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <link href="style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div style="height: 20%; width: 100%">
        <img src="photos2/Cover1.jpg" style="width: 100%; height: 447px; margin-bottom: 0px;" />
    </div>
    <form id="form1" runat="server">
    <div>
     
     <div id="recovery">
         <center>
         <h2>Password Recovery</h2>
         <asp:Label ID="label" runat="server" Text="Email Address"></asp:Label>
         <asp:TextBox ID="Email" runat="server" width="300px" />
          <asp:Button id="pwd" OnClick="pwd_Click" Text="Recover Password" runat="server" /><br />
          <a href="Default.aspx">Go Back to Main Page</a>
        </center>
     </div>
    </div>
    </form>
</body>
</html>
