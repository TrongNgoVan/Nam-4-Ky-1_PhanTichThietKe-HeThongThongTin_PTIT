<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-danger">
    <div class="container">
        <a class="navbar-brand" href="home">
            <i class="fa fa-home mr-2"></i>Design - System Information - PTIT
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav">
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

<section class="jumbotron text-center">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-3 d-flex justify-content-center">
                <img src="image/logo.png" alt="Logo" class="img-fluid">
            </div>
            <div class="col-md-9">
                <h1 class="jumbotron-heading">Phân tích thiết kế hệ thống thông tin - PTIT</h1>
                <h3 class="jumbotron-heading">Giảng viên: TS. Đỗ Thị Bích Ngọc</h3>
                <h2 class="jumbotron-heading red-text">Posts and Telecommunications Institute of Technology</h2>
            </div>
        </div>
    </div>

    <div class="map-container container mt-4">
        <div class="row justify-content-left">
            <div class="text-left">
                <h5 class="d-inline text-info">Sinh viên: ${sessionScope.acc.user}</h5>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-10 map-description p-4 bg-light rounded shadow-sm text-center">
                <p class="mb-0">Bài tập 1 - Java Lab 1 - Form Giao diện đăng nhập, đăng ký!</p>
            </div>
        </div>
    </div>


</section>

<style>
    .red-text {
        color: red;
    }

    .jumbotron {
        background-size: cover;
        background-position: center;
        color: #000; /* Đổi màu chữ thành đen */
    }

    .map-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px 0;
    }

    .map-description {
        max-width: 800px; /* Tăng chiều rộng tối đa */
        padding: 40px; /* Tăng padding để làm cho nội dung bên trong có nhiều không gian hơn */
        background-color: #fff;
        border: 2px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
        font-size: 1.5rem; /* Tăng kích thước chữ */
}


    iframe {
        border: none;
        border-radius: 10px;
    }
</style>
