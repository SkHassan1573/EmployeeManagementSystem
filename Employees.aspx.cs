using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class Employees : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadEmployees();
            }
        }

        private void LoadEmployees()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT EmployeeId, FullName, Email, Phone, Department, Designation, Salary FROM Employees ORDER BY EmployeeId";

                using (SqlDataAdapter da = new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvEmployees.DataSource = dt;
                    gvEmployees.DataBind();
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchText = txtSearch.Text.Trim();

            if (searchText == "")
            {
                LoadEmployees();
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT EmployeeId, FullName, Email, Phone, Department, Designation, Salary FROM Employees WHERE FullName LIKE @Search ORDER BY EmployeeId";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Search", "%" + searchText + "%");

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvEmployees.DataSource = dt;
                        gvEmployees.DataBind();
                    }
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            LoadEmployees();
        }

        protected void gvEmployees_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEmployees.EditIndex = e.NewEditIndex;
            LoadEmployees();
        }

        protected void gvEmployees_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmployees.EditIndex = -1;
            LoadEmployees();
        }

        protected void gvEmployees_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int employeeId = Convert.ToInt32(gvEmployees.DataKeys[e.RowIndex].Value);

            string fullName = e.NewValues["FullName"].ToString();
            string email = e.NewValues["Email"].ToString();
            string phone = e.NewValues["Phone"].ToString();
            string department = e.NewValues["Department"].ToString();
            string designation = e.NewValues["Designation"].ToString();

            decimal salary;

            if (!decimal.TryParse(e.NewValues["Salary"].ToString(), out salary))
            {
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"UPDATE Employees SET FullName = @FullName, Email = @Email, Phone = @Phone, Department = @Department, Designation = @Designation, Salary = @Salary WHERE EmployeeId = @EmployeeId";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@FullName", fullName);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@Department", department);
                    cmd.Parameters.AddWithValue("@Designation", designation);
                    cmd.Parameters.AddWithValue("@Salary", salary);
                    cmd.Parameters.AddWithValue("@EmployeeId", employeeId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvEmployees.EditIndex = -1;
            LoadEmployees();
        }

        protected void gvEmployees_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int employeeId = Convert.ToInt32(gvEmployees.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"DELETE FROM Employees WHERE EmployeeId = @EmployeeId";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@EmployeeId", employeeId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadEmployees();
        }
    }
}