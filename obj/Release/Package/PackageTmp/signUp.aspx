<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="WebApplication1.signUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sign Up</title>
    <!-- 引入 Bootstrap 5 樣式 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        html, body {
            height: 100%; /* 設定整個頁面高度為 100% */
        }

        body {
            /*display: flex;
            justify-content: center;*/ /* 水平置中 */
            /*align-items: center;*/ /* 垂直置中 */
            /*background-color: #f8f9fa;*/ /* 可選的背景顏色 */
        }

        .container {
            max-width: 550px; /* 限制表單的最大寬度 */
            padding: 8rem;
            background-color: white; /* 表單背景顏色 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 添加陰影 */
            border-radius: 10px; /* 添加圓角 */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <h4 class="mb-3 text-center">註冊</h4>
                    <div class="mb-3">
                        <label for="user" class="form-label">帳號</label>
                        <asp:TextBox ID="user" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="passwd" class="form-label">密碼</label>
                        <asp:TextBox ID="passwd" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">姓名</label>
                        <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <button id="bt1" type="button" class="btn btn-primary w-100">註冊</button>
                    <asp:Label ID="Message" runat="server" Text="" CssClass="mt-3 text-success"></asp:Label>
                </div>
            </div>
        </div>
    </form>

    <!-- 引入 jQuery 和 Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

   <script>
       $(document).ready(function () {
           function ajaxpost() {
               var user = document.getElementById("user").value;
               var passwd = document.getElementById("passwd").value;
               var name = document.getElementById("name").value;
               var email = document.getElementById("email").value;

               $.ajax({
                   type: "post",
                   data: { user: user, passwd: passwd, name: name, email: email },
                   url: "signUpProcess.ashx",

                   success: function (response) {
                       alert(response);
                   },

                   error: function (xhr, ajaxOptions, thrownError) {
                       alert("錯誤資料 " + xhr.responseText);
                   }
               });
           }

           var submitBtn = $('#bt1');
           submitBtn.on('click', ajaxpost);
       });
   </script>
</body>
</html>
