<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="WebApplication1.signIn" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登入</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            align-items: center; /* 垂直居中 */
            justify-content: center; /* 水平居中 */
            background-color: #f8f9fa; /* 背景顏色 */
        }
        .form-signin {
            max-width: 400px; /* 調整寬度 */
            padding: 1.5rem;
            background-color: white; /* 表單背景 */
            border-radius: 0.5rem; /* 圓角 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 陰影 */
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            // Load the username from localStorage if available
            if (localStorage.getItem("rememberMe") === "true") {
                $("#rememberMe").prop("checked", true);
                $("#user").val(localStorage.getItem("username"));
            }

            function ajaxpost() {
                var user = document.getElementById("user").value;
                var passwd = document.getElementById("passwd").value;
                var rememberMe = document.getElementById("rememberMe").checked;

                // Save username to localStorage if 'Remember Me' is checked
                if (rememberMe) {
                    localStorage.setItem("username", user);
                    localStorage.setItem("rememberMe", "true");
                } else {
                    localStorage.removeItem("username");
                    localStorage.removeItem("rememberMe");
                }
                $.ajax({
                    type: "post",
                    data: { user: user, passwd: passwd },
                    url: "signInProcess2.ashx",
                    success: function (response) {
                        alert(response);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        console.log("Status: " + xhr.status);  // 顯示 HTTP 狀態碼
                        console.log("Error: " + thrownError);  // 顯示錯誤訊息
                        console.log(xhr.responseText);  // 顯示伺服器回應內容
                        alert("伺服器錯誤：" + xhr.responseText);
                    }
                });           
            }

            var submitBtn = $('#bt1');
            submitBtn.on('click', ajaxpost);
        });
    </script>
</head>
<body>
    <form id="form1" runat="server" class="form-signin">
        <h1 class="h3 mb-3 fw-normal text-center">登入</h1>
        <div class="mb-3">
            <label for="user" class="form-label">帳號</label>
            <asp:TextBox ID="user" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="passwd" class="form-label">密碼</label>
            <asp:TextBox ID="passwd" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
        </div>
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="rememberMe">
            <label class="form-check-label" for="rememberMe">記住我的帳號</label>
        </div>
        <button id="bt1" type="button" class="w-100 btn btn-lg btn-primary">登入</button>
        <p class="mt-3 text-center"><asp:Label ID="Message" runat="server" Text=""></asp:Label></p>
    </form>
</body>
</html>
