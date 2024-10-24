<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopCar.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Checkout Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.rtl.min.css" rel="stylesheet" integrity="sha384-mC2RpftfnrD0ovU/rL+n7Fl5c/tN0vHHDuQuzk0zEBCb+SH5fC/JoX1GR82z5q2l" crossorigin="anonymous">
    <style>
        body {
            background-color: #f5f5f5;
        }
        .checkout-container {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            margin-top: 50px;
            padding: 20px;
        }

        .checkout-form {
            width: 60%;
            background-color: dodgerblue;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .checkout-form h4 {
            text-align: center;
            margin-bottom: 40px;
        }

        .checkout-form form {
            width: 100%;
        }

        .checkout-form .form-label {
            margin-bottom: 10px;
            font-weight: bold;
        }

        .checkout-form .form-control {
            margin-bottom: 20px;
            padding: 8px; /*欄位高度*/
        }

        .cart-summary {
            width: 40%;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .cart-summary h4 {
            margin-bottom: 30px;
            text-align: center;
        }

        .cart-summary ul {
            list-style-type: none;
            padding-left: 0;
        }

        .cart-summary ul li {
            padding: 15px 0;
            border-bottom: 1px solid #e0e0e0;
        }

        .total-price {
            font-weight: bold;
            font-size: 20px;
        }

        .promo-code {
            display: flex;
            justify-content: space-between;
        }

        button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="checkout-container">
                <!-- Form Section -->
                <div class="checkout-form">
                    <h4 class="mb-3">帳單地址</h4>
                    <form novalidate>
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="firstName" class="form-label">姓</label>
                                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">名</label>
                                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                            </div>

                            <div class="col-12">
                                <label for="username" class="form-label">使用者名稱</label>
                                <div class="input-group">
                                    <span class="input-group-text">@</span>
                                    <input type="text" class="form-control" id="username" placeholder="使用者名稱" required>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="email" class="form-label">電子郵件 <span class="text-muted">( 可選 )</span></label>
                                <input type="email" class="form-control" id="email" placeholder="你@example.com">
                            </div>

                            <div class="col-12">
                                <label for="address" class="form-label">地址</label>
                                <input type="text" class="form-control" id="address" placeholder="第一街1234號" required>
                            </div>

                            <div class="col-12">
                                <label for="address2" class="form-label">標題 2 <span class="text-muted">( 可選 )</span></label>
                                <input type="text" class="form-control" id="address2" placeholder="24號公寓">
                            </div>
                        </div>

                        <button class="w-100 btn btn-primary btn-lg" type="submit">確認</button>
                    </form>
                </div>

                <!-- Shopping Cart Summary -->
                <div class="cart-summary">
                    <h4>購物車</h4>
                    <ul class="list-group">
                        <li class="d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">產品名稱</h6>
                                <small class="text-body-secondary">簡要說明</small>
                            </div>
                            <span class="text-body-secondary">美元 12</span>
                        </li>
                        <li class="d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">第二個產品</h6>
                                <small class="text-body-secondary">簡要說明</small>
                            </div>
                            <span class="text-body-secondary">美元 8</span>
                        </li>
                        <li class="d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">第三項</h6>
                                <small class="text-body-secondary">簡要說明</small>
                            </div>
                            <span class="text-body-secondary">美元 5</span>
                        </li>
                        <li class="d-flex justify-content-between lh-sm promo-code">
                            <div class="text-success">
                                <h6 class="my-0">促銷代碼</h6>
                                <small>範例程式碼</small>
                            </div>
                            <span class="text-success">−$5</span>
                        </li>
                        <li class="d-flex justify-content-between total-price">
                            <span>總計 ( 美元 )</span>
                            <strong>美元 20</strong>
                        </li>
                    </ul>

                    <form class="card p-2 mt-3">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="促銷代碼">
                            <button type="submit" class="btn btn-secondary">兌換</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Qg7q4Iqbg5+VXdEmhbD/NGZXck+q+Ip/CVt0LgOoS8/d4mJHgIuUpf5gPbF1K56p" crossorigin="anonymous"></script>
</body>
</html>
