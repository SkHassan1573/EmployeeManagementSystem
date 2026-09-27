<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EmployeeManagementSystem.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-container {
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
        .contact-card {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.10);
            margin-bottom: 20px;
        }
        .contact-card h2 {
            color: #111111;
            margin-bottom: 15px;
        }
        .contact-card p {
            color: #555555;
            line-height: 1.7;
            margin: 8px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="contact-container">
        <h1 class="page-heading">Contact Us</h1>
        <p class="page-description">Get in touch with the Employee Management System administrator.</p>
        <div class="contact-card">
            <h2>Contact Information</h2>
            <p><strong>Email:</strong> admin@employeemanagement.com</p>
            <p><strong>Phone:</strong> +91 98765 43210</p>
            <p><strong>Address:</strong> Mumbai, Maharashtra, India</p>
            <p><strong>Working Hours:</strong> Monday - Friday, 9:00 AM - 6:00 PM</p>
        </div>
    </div>
</asp:Content>