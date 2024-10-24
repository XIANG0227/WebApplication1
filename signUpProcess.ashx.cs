using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.SessionState; // 因為有使用到 session，故須引用

namespace WebApplication1
{
    public class signUpProcess : IHttpHandler, IRequiresSessionState // 因為有使用到 session
    {
        public void ProcessRequest(HttpContext context)

        {

           
        // 取得連接字串
        string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["OrdersConnectionString"].ConnectionString;

            // 建立數據庫連接
            using (SqlConnection connection = new SqlConnection(s_data))
            {
                try
                {
                    string user = context.Request.Form["user"];
                    string passwd = context.Request.Form["passwd"];
                    string name = context.Request.Form["name"];
                    string email = context.Request.Form["email"];

                    // 確認輸入是否為空
                    if (string.IsNullOrEmpty(user) || string.IsNullOrEmpty(passwd) || string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email))
                    {
                        context.Response.Write("Error: All fields are required.");
                        return;
                    }

                    // 構建 SQL 語句並使用參數化查詢來防止 SQL Injection
                    string query = "INSERT INTO account1 (username, passwd, name, email) VALUES (@user, @passwd, @name, @email)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.Add("@user", SqlDbType.NVarChar).Value = user;
                        command.Parameters.Add("@passwd", SqlDbType.NVarChar).Value = passwd;
                        command.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
                        command.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;

                        // 開啟連接並執行查詢
                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();

                        // 回應成功訊息
                        context.Response.Write("Sign-up successful!");
                    }
                }
                catch (SqlException sqlEx) // 捕捉 SQL 相關的例外
                {
                    // 記錄例外訊息並回應錯誤給使用者
                    context.Response.Write("Database error: " + sqlEx.Message);
                }
                catch (Exception ex) // 捕捉其他所有例外
                {
                    // 處理非 SQL 例外
                    context.Response.Write("An error occurred: " + ex.Message);
                }
                finally
                {
                    // 確保數據庫連接已經關閉
                    if (connection.State == ConnectionState.Open)
                    {
                        connection.Close();
                    }
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
