<%@ Page Title="Departments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="EmployeeManagementSystem.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .department-container {
            padding: 20px;
        }
        .page-heading {
            font-size: 32px;
            font-weight: bold;
            color: #111111;
            margin-bottom: 10px;
        }
        .page-description {
            color: #666666;
            margin-bottom: 30px;
        }
        .department-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .department-card {
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.10);
        }
        .department-card h2 {
            color: #111111;
            margin-bottom: 10px;
            font-size: 22px;
        }
        .department-card p {
            color: #666666;
            line-height: 1.6;
            margin: 0;
        }
        @media screen and (max-width: 900px) {
            .department-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
        @media screen and (max-width: 600px) {
            .department-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="department-container">
        <h1 class="page-heading">Departments</h1>
        <p class="page-description">Departments available in the organization.</p>
        <div class="department-grid">
            <div class="department-card">
                <h2>IT Department</h2>
                <p>Responsible for software development, technical support, systems and information technology services.</p>
            </div>
            <div class="department-card">
                <h2>Human Resources</h2>
                <p>Handles employee recruitment, records, training, development and employee related activities.</p>
            </div>
            <div class="department-card">
                <h2>Finance</h2>
                <p>Manages financial records, budgeting, salaries and other financial activities of the organization.</p>
            </div>
            <div class="department-card">
                <h2>Marketing</h2>
                <p>Responsible for promoting the organization, managing campaigns and developing marketing strategies.</p>
            </div>
            <div class="department-card">
                <h2>Sales</h2>
                <p>Handles customer relationships, sales activities and business development.</p>
            </div>
            <div class="department-card">
                <h2>Administration</h2>
                <p>Manages daily administrative operations, coordination and organizational activities.</p>
            </div>
        </div>
    </div>
</asp:Content>