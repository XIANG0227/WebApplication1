<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- 引入 Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-mC2RpftfnrD0ovU/rL+n7Fl5c/tN0vHHDuQuzk0zEBCb+SH5fC/JoX1GR82z5q2l" crossorigin="anonymous">
<style>
  .navbar-nav .nav-link, h1, h5 {
    font-family: "Avenir Light", Times, serif;
    font-size: 1rem;
    letter-spacing: 0.08rem;
     margin-right: 3rem;
     color: #a9a57c;
     flex-direction: row; 
     justify-content: center;
   
   
}
    .navbar-brand {
      display: flex;
      justify-content: center; /* 水平置中 */
      align-items: center; /* 垂直置中 */
      background-color: #a9a57c; /* 可選的背景顏色 */
    }

h1 {
    font-weight: bold;
    color: #ffffff;
    font-size: 2.5rem;
    text-align: center;
}
.text-center {
    text-align: center;
}

.display-5 {
    font-family:"Helvetica Neue", Times, serif;
    font-size: 1.5rem;
    font-weight: bold;
    text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
    color: #d2cb6c;
}
.navbar-nav .nav-item:not(:last-child)::after {
    content: "•";
    color: #d2cb6c;
    padding: 0 1rem;
   
}
.card {
    border: none;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.card-title {
    font-family: 'Georgia', serif;
    font-size: 1.2rem;
    text-align: center;
    margin-top: 15px;
}
.fs-4 {
    color: #d2cb6c;
}

    .card-img-top {
    margin-bottom: 5px; /* 圖片之間的下方邊距 */
    justify-content: space-between;
}
    .btn{
        color:darkgrey;
      
    }


</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- 導航欄 -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <h1 class="navbar-brand" href="#">Art Online Shop</h1>
       
          <span class="navbar-toggler-icon"></span>
        
     <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav d-flex justify-content-evenly w-100">
        <li class="nav-item">
           
           

             <a class="nav-link" href="WebForm1.aspx">Home</a>

             <a class="nav-link" href="singIn.aspx">SignIn</a>

            <a class="nav-link" href="signUp.aspx">SignUp</a>
            
            <a class="nav-link" href="shopCar.aspx">Shopcar</a>
       
        </li>
    </ul>
</div>


      </div>
    </nav>

    <!-- 橫幅 -->
    <div class="p-5 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5 text-center">
        <a class="display-5 fw-bold">Welcome to oil painting's shop</a>
        <p class="col-md-8 fs-4 mx-auto ">In the Existence Between Reality and Illusion – SU Ming-hsin Solo Exhibition</p>
        
      </div>
    </div>

    <!-- 產品展示區 -->
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm text-center">
             <img src='/picture/picture/IMG_0270.jpg' class="card-img-top  mx-4" alt="Product 1"  height="100" weight="200"> 
             <img src='/picture/picture/IMG_8365.jpg' class="card-img-top  mx-4" alt="Product 2"  height="100" weight="200">
             <img src='/picture/picture/IMG_9459.jpg' class="card-img-top  mx-4" alt="Product 3"  height="100" weight="200">
             <img src='/picture/picture/IMG_0263.jpg' class="card-img-top  mx-4" alt="Product 4"  height="100" weight="200">
             <img src='/picture/picture/IMG_9966.jpg' class="card-img-top  mx-4" alt="Product 5"  height="100" weight="200">
             <img src='/picture/picture/IMG_0268.jpg' class="card-img-top  mx-4" alt="Product 6"  height="100" weight="200">
             
             </div>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card mb-4 shadow-sm text-center">
          <h5 class="card-title">Light and shadow series</h5>
             <img src='/picture/picture/IMG_8365.jpg' class="card-img-top" alt="Product 2"  height="100" weight="200">
            <div class="card-body">  
              <p class="card-text">$200.00</p>
              <a href="singIn.aspx" class="btn btn-light">View Item</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm text-center">
             <h5 class="card-title text-center">Oil Painting</h5>
            <img src='/picture/picture/IMG_8155.jpg' class="card-img-top" alt="Product 3"  height="100" weight="150">
            <div class="card-body">
              
              <p class="card-text">$300.00</p>
              <a href="singIn.aspx" class="btn btn-light">View Item</a>
            </div>
              <div class="card-body">

              </div>

          </div>
        </div>
      </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- 引入 Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Qg7q4Iqbg5+VXdEmhbD/NGZXck+q+Ip/CVt0LgOoS8/d4mJHgIuUpf5gPbF1K56p" crossorigin="anonymous"></script>
</asp:Content>