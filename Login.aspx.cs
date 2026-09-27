using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
namespace EmployeeManagementSystem{
    public partial class Login : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}
        protected void btnLogin_Click(object sender, EventArgs e){
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string passwordHash = GenerateHash(password);
            string connectionString =
                ConfigurationManager.ConnectionStrings["EmployeeDBConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT COUNT(*) FROM Admins WHERE Username = @Username AND PasswordHash = @PasswordHash";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@PasswordHash", passwordHash);
                    con.Open();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count == 1)
                    {
                        Session["UserName"] = username;
                        Response.Redirect("Employees.aspx");
                    }
                    else{
                        lblMessage.Text = "Invalid username or password.";}}}}

        private string GenerateHash(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(password);
                byte[] hash = sha256.ComputeHash(bytes);
                StringBuilder builder = new StringBuilder();

                foreach (byte b in hash)
                {
                    builder.Append(b.ToString("x2"));
                }

                return builder.ToString();
            }
        }
    }
}