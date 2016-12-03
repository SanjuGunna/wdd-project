<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <center>
    
    <div style="position:relative;top:30px;width:1024px;">
    

    <div style="position:relative;width:800px;padding-right:112px;margin-top:20px;margin-bottom:20px;">
        <img src="images/Cover1.jpg" width="800px">
    </div>
    <asp:TextBox ID="search" placeholder="Search by Brand or Equipment.." runat="server" Height="60px" style="max-width:800px;padding-left:10px;padding-right:10px;font-size:30px;" Width="800px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="search" onclick="Button1_Click" style="position:relative;height:60px;width:200px;top:-6px;"></asp:Button>
    </div>
     </center>
    <center>



<!------>


    <div style="position:relative; margin-top:30px;">

        <div style="width : 100%;background-color:powderblue; height : auto ; align-items : center;"">
        
        <table width="100%" style="margin-left:50px;">
            <tbody><tr>
                <td class="auto-style1">
                    <img src="./images/Fitness-Equipment-Women.jpg" alt="image" style="height: 55px; width:49px; margin-top: 0px;">
                </td>
                <td>
                    <span style="color:green">
                        &nbsp;Best Price:
                    </span>
                    <span>
                        We update our <br>
                        Prices continously to
                        <br>
                        offer the best price online!
                    </span>
                </td>

                <td class="auto-style1">
                    <img src="./images/k2-_cd80c168-8e13-4f09-94e1-97892316e253.v1.jpg-a2db58ebbb415e045ea0f2047ebc838bd4029dc2-optim-450x450.jpg" alt="image" style="height: 55px; width: 49px; margin-top: 0px;">
                </td>
                <td>
                    <span style="color:green">
                        &nbsp;Free Shipping:
                    </span>
                    <span>
                        We<br>
                        always offer Free
                        <br>
                        Shipping. Print a label
                        <br>
                        and you're done!
                    </span>
                </td>

                <td class="auto-style1">
                    <img src="./images/Used-Fitness-Equipment-Could-Be-Hazardous.jpg" alt="image" style="height: 55px; width: 49px; margin-top: 0px;">
                </td>
                <td>
                    <span style="color:green">
                        &nbsp;Fast Payment:
                    </span>
                    <span>
                        We pay fast! All <br>
                        payments are processes within
                        <br>
                        three business days of your
                        <br>
                        item arriving!
                    </span>
                </td>
            </tr>
        </tbody></table>

       
    </div>

    </div>







<!----->





        <div style="background-color : azure;width : 100%; margin-top:30px; ">
        <marquee scrollamount="20">
            <img src="images/rsz_payment.jpg">
        </marquee>
    </div>
            
   <div style="position:relative;top:30px;">
       <h1>Brands</h1> 
       <div style="position:relative;width:1024px;background:yellow;">
            
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <a href="search.aspx?name=<%#Eval("bname") %>">
            <div style="position:relative;width:240px;float:left;margin:5px;color:white;">
            
                <div style="position:relative;width:160px;height:160px;float:left;margin:40px;">
                    <img src="images/<%#Eval("bid") %>.png" width="160px" height="160px">
                </div>
                <div style="position:relative;width:240px;height:40px;padding:10px;background-color:#3498db;float:left;">
                   <b> <%#Eval("bname") %> </b>
                </div>
            </div>
            </a>
        </ItemTemplate>
        
        </asp:Repeater>
        </div>
       </center>
       </div>
    
</asp:Content>
