<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ISBN.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sell your books easily </title>
    
</head>
<body>
     <div style = "width : 100%">
         <img src="image/health_and_fitness_equipment.jpg"  alt="" style="height : 100% ; width : 100%"/>

    </div>
    <div style="background-color : aqua">
        <table>
            <tr>
                <td style="width : 320px">
                    <a href="faq.aspx">FAQ </a>
                </td>
            
                <td style ="width : 320px">
                    <a href="contact.aspx">Contact US</a>
                </td>
                <td style="width : 320px">
                    <a href="">Register</a>
                </td>
                <td style="width : 320px">
                    <a href="">Log In</a>
                </td>
                <td style="width : 320px">
                    <a href="">Your Orders</a>
                </td>
                <td style="width : 320px">
                    <a href="">Reviews</a>
                </td>
                </tr>
        </table>
    </div>

        <div>
            <h2>How do I find my book's ISBN?</h2>
            <p>Your book's ISBN number can usually be found on the back of the book above the barcode.</p>
            <img src="images/ISBN.jpg"/ width="400">
            <p>An ISBN can be a 10 or 13 digit number and the EasyAs123 pricing tool accepts both. If your book does not have a barcode or a sticker is covering the barcode, you can usually find the ISBN inside of the front title page where you would find publisher information. Books published before 1970 do not have ISBN numbers and we cannot buy them.</p>
        </div>
        <br />
        <div>
            <button type="button" onclick="window.location='Default.aspx';">Back to Main Page</button>
        </div>
</body>
</html>
