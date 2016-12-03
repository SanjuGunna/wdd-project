<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <center>
        <div style="width:1024px;">
    <div style="position:relative;width:1024px;height:40px;">

    </div>
        <asp:TextBox ID="search" placeholder="Search by Brand or Equipment.." runat="server" Height="60px" style="max-width:800px;padding-left:10px;padding-right:10px;font-size:30px;" Width="800px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="search" onclick="Button1_Click" style="position:relative;height:60px;width:200px;top:-6px;"></asp:Button>
         <div style="position:relative;width:1024px;padding:8px;">

             <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
        

            <div style="width:494px;height:204px;background-color:red;float:left;margin:5px;    border: 2px solid #73AD21;">
                <div style="width:290px;height:200px;float:left;background-color:white;">
                    <img src="images/cars/<%#Eval("bid")%>-<%#Eval("carid")%>.png" width="290px" >
                </div>
                <div style="width:200px;height:200px;float:left;text-align:left;padding:10px;background-color:white;">
                    <p><b>Equipment Name: </b><a href="Search?name=<%#Eval("carname") %>"><%#Eval("carname") %></a></p>
                    <p><b>Brand Name: </b><a href="Search?name=<%#Eval("bname") %>"><%#Eval("bname") %></a></p>
                    <p><b>Cost: </b><%#Eval("rent") %></p>
                    <p><b>Available: </b><%#Eval("availability") %></p>
                    <a href="Equipment?id=<%#Eval("carid") %>"><input type="button" value="Buy"></a>
                </div>
            </div>

               </ItemTemplate>
            </asp:Repeater>
        
        </div>
        

    </div>
    <div style="position:relative;width:100%;height:40px;"></div>
        </div>
    </center>
</asp:Content>

