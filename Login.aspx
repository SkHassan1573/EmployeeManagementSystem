<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeeManagementSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-container {
            min-height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-box {
            width: 400px;
            background-color: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
        }
        .login-title {
            text-align: center;
            color: #111111;
            font-size: 28px;
            margin-bottom: 10px;
        }
        .login-subtitle {
            text-align: center;
            color: #666666;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #222222;
        }
        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 15px;
        }
        .form-control:focus {
            outline: none;
            border-color: #111111;
        }
        .login-button {
            width: 100%;
            padding: 12px;
            background-color: #111111;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .login-button:hover {
            background-color: #333333;
        }
        .error-message {
            display: block;
            text-align: center;
            color: #cc0000;
            margin-top: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-container">
        <div class="login-box">
            <h1 class="login-title">Admin Login</h1>
            <p class="login-subtitle">Sign in to manage employee records</p>
            <div class="form-group">
                <label for="txtUsername">Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button" OnClick="btnLogin_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
        </div>
    </div>
</asp:Content>