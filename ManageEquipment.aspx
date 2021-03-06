﻿
<%@ Page Title="Update Cars" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ManageEquipment.aspx.cs" Inherits="ManageCars" Async="true" %>


 <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <center>
         
    <div style="position:relative;top:20px">
    <div style="width:800px;float:left;">
        <h1>Manage Equipments</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="carId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="carId" HeaderText="Equipment Id" ReadOnly="True" SortExpression="carId" />
                <asp:BoundField DataField="carname" HeaderText="Equipment Name" SortExpression="carname" />
                <asp:BoundField DataField="bid" HeaderText="Brand ID" SortExpression="bid" />
                <asp:BoundField Visible="false" DataField="mileage" HeaderText="mileage" SortExpression="mileage" />
                <asp:BoundField DataField="rent" HeaderText="Rent" SortExpression="rent" />
                <asp:BoundField VISIBLE="false" DataField="seating" HeaderText="Seating" SortExpression="seating" />
                <asp:BoundField DataField="Availability" HeaderText="Availabile" SortExpression="Availability" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=dcm.uhcl.edu;Initial Catalog=c563316sp01g4;Persist Security Info=True;User ID=c563316sp01g4;Password=4686686" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [carId],[carname], [bid], [rent], [Availability]  FROM [cars]" UpdateCommand="UPDATE [cars] SET [carname]=@carname,[bid]=@bid,[rent]=@rent,[availability]=@availability where [carId]=@carId" DeleteCommand="DELETE from [cars] where [carId]=@carId"></asp:SqlDataSource>
    
        
       </div>
        </br>
        </br>
        <div style="display:none;">
        <h2>Add New Equipment</h2>
        <table>
            <tr>
                
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=dcm.uhcl.edu;Initial Catalog=c563316sp01g4;Persist Security Info=True;User ID=c563316sp01g4;Password=4686686" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [bname] FROM [brands] ORDER BY [bname]"></asp:SqlDataSource>
        <th>Brand    :</th><td> 
            <asp:DropDownList ID="brand" runat="server" DataSourceID="SqlDataSource3" DataTextField="bname" DataValueField="bId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=dcm.uhcl.edu;Initial Catalog=c563316sp01g4;Persist Security Info=True;User ID=c563316sp01g4;Password=4686686" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [bId], [bname] FROM [brands]"></asp:SqlDataSource>
           </td>
                </tr>
            <tr>
                <th>
                    Equipment Name :
                </th>
                <td>
                    <asp:TextBox ID="carname" runat="server"></asp:TextBox>
                </td>
            </tr>
                    <asp:TextBox ID="mileage" style="width:174px;" Type="hidden" value="5" runat="server"></asp:TextBox>
            <tr>
                <th>
                    Cost :
                </th>
                <td>
                    $<asp:TextBox ID="rent" runat="server" Type="Number" min="250" style="width:166px;"></asp:TextBox>
                </td>
            </tr>
            
                    <asp:TextBox ID="seating" runat="server" value="4" Type="hidden" style="width:174px;"></asp:TextBox>
            <tr>
                <th>
                    Availabile :
                </th>
                <td>
                    <asp:TextBox ID="availability" Type="Number" min="0" max="100" style="width:174px;" runat="server"></asp:TextBox>
                </td>
            </tr>
            </table>
        <asp:Button ID="carInsert" OnClick="Car_Insert" runat="server" Text="Add" />
         <asp:Label ID="Label11" runat="server" Visible="false" Font-Size="15px" ForeColor="Green" />
            </div>
    </div>
     </center>
          </asp:Content>
 
