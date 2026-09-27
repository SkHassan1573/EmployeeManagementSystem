<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EmployeeManagementSystem.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-container {
            padding: 20px;
            max-width: 900px;
            margin: 0 auto;
        }
        .page-heading {
            font-size: 32px;
            font-weight: bold;
            color: #111111;
            margin-bottom: 10px;
        }
        .page-description {
            color: #666666;
            margin-bottom: 25px;
        }
        .about-card {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.10);
            margin-bottom: 20px;
        }
        .about-card h2 {
            color: #111111;
            margin-bottom: 15px;
        }
        .about-card p {
            color: #555555;
            line-height: 1.7;
            margin: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="about-container">
        <h1 class="page-heading">About Employee Management System</h1>
        <p class="page-description">Learn more about our employee management system.</p>
        <div class="about-card">
            <h2>About the Project</h2>
            <p>Employee Management System is a web-based application developed to manage employee records efficiently. The administrator can add, view, update, delete and search employee information through the system.</p>
        </div>
        <div class="about-card">
            <h2>Project Purpose</h2>
            <p>The main purpose of this system is to simplify employee record management and reduce manual record keeping.</p>
        </div>
    </div>
</asp:Content>