<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmployeeManagementSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .home-container {
            text-align: center;
            padding: 80px 20px;
        }
        .home-container h1 {
            font-size: 42px;
            color: #111111;
            margin-bottom: 15px;
        }
        .home-container p {
            font-size: 18px;
            color: #555555;
            margin-bottom: 30px;
        }
        .home-button {
            display: inline-block;
            background-color: #111111;
            color: white;
            padding: 12px 25px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
        }
        .home-button:hover {
            background-color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="home-container">
        <h1>Welcome to Employee Management System</h1>
        <p>Manage employees, departments and employee records easily.</p>
        <a href="Employees.aspx" class="home-button">Manage Employees</a>
    </div>
</asp:Content>