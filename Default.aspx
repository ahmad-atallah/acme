<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="AAA._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ACME Archiving System</h2>
    <p>
        This application made to manage students archive by adding students to the 
        database by clicking on (<strong>Add new Student</strong>). The other options 
        are available such as <strong>Export</strong> to pdf file, <strong>Search
        </strong>by using filters.. and many other options.</p>
</asp:Content>
