using System;
using System.Configuration;
using System.Data.SqlClient;

namespace EmployeeManagementSystem
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string department = txtDepartment.Text.Trim();
            string designation = txtDesignation.Text.Trim();
            string salaryText = txtSalary.Text.Trim();

            if (fullName == "" || email == "" || phone == "" || department == "" || designation == "" || salaryText == "")
            {
                lblMessage.Text = "Please fill all fields.";
                return;
            }

            decimal salary;

            if (!decimal.TryParse(salaryText, out salary))
            {
                lblMessage.Text = "Please enter a valid salary.";
                return;
            }

            string connectionString = ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Get next available Employee ID
                string idQuery = @"
                    SELECT ISNULL(MIN(E.EmployeeId + 1), 1)
                    FROM Employees E
                    WHERE NOT EXISTS
                    (
                        SELECT 1
                        FROM Employees E2
                        WHERE E2.EmployeeId = E.EmployeeId + 1
                    )
                    AND E.EmployeeId =
                    (
                        SELECT MAX(EmployeeId)
                        FROM Employees
                    )";

                int employeeId;

                using (SqlCommand idCommand = new SqlCommand(idQuery, con))
                {
                    object result = idCommand.ExecuteScalar();

                    if (result == null || result == DBNull.Value)
                    {
                        employeeId = 1;
                    }
                    else
                    {
                        employeeId = Convert.ToInt32(result);
                    }
                }

                // Insert employee
                string query = @"
                    INSERT INTO Employees
                    (
                        EmployeeId,
                        FullName,
                        Email,
                        Phone,
                        Department,
                        Designation,
                        Salary
                    )
                    VALUES
                    (
                        @EmployeeId,
                        @FullName,
                        @Email,
                        @Phone,
                        @Department,
                        @Designation,
                        @Salary
                    )";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@EmployeeId", employeeId);
                    cmd.Parameters.AddWithValue("@FullName", fullName);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@Department", department);
                    cmd.Parameters.AddWithValue("@Designation", designation);
                    cmd.Parameters.AddWithValue("@Salary", salary);

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Redirect("Employees.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Employee could not be added.";
                    }
                }
            }
        }
    }
}