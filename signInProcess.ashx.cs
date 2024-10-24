using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.SessionState;

namespace WebApplication1
{
    public class signInProcess : IHttpHandler, IRequiresSessionState
    {
        public void ProcessRequest(HttpContext context)
        {
            string user = context.Request.Form["user"];
            string passwd = context.Request.Form["passwd"];

            if (user == "admin" && passwd == "1234")  // 简单的用户验证
            {
                context.Response.Write("登入成功");
            }
            else
            {
                context.Response.Write("帳號密碼錯誤");
            }
        }

        public bool IsReusable
        {
            get { return false; }
        }
        // 資料庫連線字串
        /*string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["OrdersConnectionString"].ConnectionString;

            // 從前端接收使用者輸入
            string user = context.Request.Form["user"];
            string passwd = context.Request.Form["passwd"];

            // 驗證輸入是否為空
            if (string.IsNullOrEmpty(user) || string.IsNullOrEmpty(passwd))
            {
                context.Response.Write("帳號或密碼不能為空");
                return;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    // 開啟資料庫連線
                    connection.Open();

                    // 使用參數化查詢來避免SQL Injection
                    string query = "SELECT passwd FROM account1 WHERE username = @username";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@username", user);

                    // 執行查詢
                    SqlDataReader reader = command.ExecuteReader();

                    // 檢查是否有匹配的帳號
                    if (reader.HasRows)
                    {
                        reader.Read(); // 讀取資料
                        string passwdDb = reader["passwd"].ToString();

                        // 驗證密碼是否正確
                        if (passwd.Equals(passwdDb))
                        {
                            // 登入成功，設定Session或Cookie
                            context.Session["username"] = user;  // 也可以保存其他資料
                            context.Response.Write("登入成功");
                        }
                        else
                        {
                            context.Response.Write("密碼不正確");
                        }
                    }
                    else
                    {
                        context.Response.Write("帳號不存在");
                    }
                }
                catch (Exception ex)
                {
                    // 異常處理，回傳錯誤訊息
                    context.Response.Write("伺服器錯誤：" + ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public bool IsReusable
        {
            get { return false; }
        }*/
    }
}
