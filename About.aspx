<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
    <p>This application provide users with flexible search of different gym equipment for sale. </p>
    <p>The user can search for different models of equipment and buy it. </p>
    <p>Every user can search for equipment but a registered user can only buy an equipment. </p>
    <p>User can register by providing some details like first name, last name, identification number like passport number or driver's licence number or social security number. </p>
    <p>Using login credentials like username and password a user can login and book a equipment. Users can also see suppliments and workout tips if they are logged in. By using different payment methods he/she can pay the amount. </p>
</asp:Content>
