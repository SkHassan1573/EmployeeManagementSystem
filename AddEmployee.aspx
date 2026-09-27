<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EmployeeManagementSystem.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .add-container {
            padding: 20px;
            max-width: 700px;
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
        .form-card {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.10);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-label {
            display: block;
            font-weight: bold;
            color: #111111;
            margin-bottom: 8px;
        }
        .form-input {
            width: 100%;
            padding: 12px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 15px;
            box-sizing: border-box;
        }
        .form-input:focus {
            outline: none;
            border-color: #111111;
        }
        .button-container {
            margin-top: 25px;
            display: flex;
            gap: 10px;
        }
        .add-button {
            padding: 12px 25px;
            background-color: #111111;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
        }
        .add-button:hover {
            background-color: #333333;
        }
        .back-button {
            display: inline-block;
            padding: 12px 25px;
            background-color: #dddddd;
            color: #111111;
            border-radius: 5px;
            text-decoration: none;
            font-size: 15px;
        }
        .back-button:hover {
            background-color: #bbbbbb;
        }
        .message {
            display: block;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="add-container">
        <h1 class="page-heading">Add Employee</h1>
        <p class="page-description">Enter employee details to add a new employee.</p>
        <div class="form-card">
            <div class="form-group">
                <asp:Label ID="lblFullName" runat="server" Text="Full Name" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPhone" runat="server" Text="Phone" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDepartment" runat="server" Text="Department" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDesignation" runat="server" Text="Designation" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblSalary" runat="server" Text="Salary" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtSalary" runat="server" CssClass="form-input"></asp:TextBox>
            </div>
            <div class="button-container">
                <asp:Button ID="btnAddEmployee" runat="server" Text="Add Employee" CssClass="add-button" OnClick="btnAddEmployee_Click" />
                <a href="Employees.aspx" class="back-button">Back</a>
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </div>
</asp:Content>