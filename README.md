# 👨‍💼 Employee Management System

> A web-based **Employee Management System** built using **ASP.NET Web Forms, C#, ADO.NET and SQL Server** to efficiently manage employee records through a secure and user-friendly admin panel.

---

## ✨ Overview

The **Employee Management System** is an admin-based web application designed to simplify employee record management.

The system allows an administrator to securely log in and perform essential employee management operations such as **adding, viewing, updating, deleting and searching employee records**.

The project follows a structured **CRUD-based architecture** with database integration using **ADO.NET and SQL Server**.

---

## 🚀 Features

* 🔐 Secure Admin Login
* 🛡️ Session-Based Authentication
* ➕ Add Employee
* 👁️ View Employee Records
* ✏️ Update Employee Details
* 🗑️ Delete Employee Records
* 🔎 Search Employees by Name
* ✅ Form Validation
* 🗄️ SQL Server Database Integration
* 🔗 ADO.NET Database Connectivity
* 🧩 Master Page for Common Layout
* 📱 Responsive and Clean UI
* 🚪 Secure Logout

---

## 🛠️ Technologies Used

| Technology               | Purpose                     |
| ------------------------ | --------------------------- |
| **ASP.NET Web Forms**    | Web Application Development |
| **C#**                   | Backend Programming         |
| **ADO.NET**              | Database Connectivity       |
| **SQL Server / LocalDB** | Database Management         |
| **HTML5**                | Page Structure              |
| **CSS3**                 | Styling and UI              |
| **Master Page**          | Common Layout               |
| **Visual Studio**        | Development Environment     |

---

## 📂 Project Structure

```text
EmployeeManagementSystem
│
├── Login.aspx
├── Home.aspx
├── Employees.aspx
├── AddEmployee.aspx
├── Departments.aspx
├── About.aspx
├── Contact.aspx
├── Logout.aspx
│
├── Site.Master
│
├── App_Data
│   └── EmployeeDB.mdf
│
└── Web.config
```

---

## 🗃️ Database

The project uses a SQL Server LocalDB database named:

```text
EmployeeDB
```

### Employees Table

```text
EmployeeId
FullName
Email
Phone
Department
Designation
Salary
```

### Admins Table

```text
AdminId
Username
PasswordHash
```

---

## 🔄 CRUD Operations

The system supports complete CRUD functionality:

```text
CREATE  → Add Employee
READ    → View Employee Records
UPDATE  → Edit Employee Details
DELETE  → Remove Employee Records
```

---

## 🔐 Security

The application uses **session-based authentication** to protect administrative pages.

If an unauthenticated user tries to access protected pages directly, the system redirects them to the login page.

Passwords are stored using **SHA-256 hashing** rather than plain text.

---

## 🔍 Search

The employee management page provides a search feature that allows the administrator to search employee records
