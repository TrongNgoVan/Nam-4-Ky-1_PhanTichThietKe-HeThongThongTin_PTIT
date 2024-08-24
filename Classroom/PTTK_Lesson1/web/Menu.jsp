<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-danger">
    <div class="container">
         <a class="navbar-brand" href="home"<li><i class="fa fa-home mr-2"></i>Phòng Trọ PTIT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Manager Account</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1 || sessionScope.acc.isSell == 0}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Room</a>
                    </li>
                </c:if>
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

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
<!--               <a class="btn btn-success btn-sm ml-3" href="cart">
                    <i class="fa fa-check"></i> ROOM SAVED
                    <span class="badge badge-light">0</span>
               </a>-->

            </form>
        </div>
    </div>
</nav>
<style>
    .red-text {
        color: red;
    }
</style>
<style>
    .jumbotron {
/*        background-image: url('image/Toa_nha_A2_PTIT.jpg');*/
         background-image: url('image/ptitnen.jpg');
        background-size: cover;
        background-position: center;
        color: #000000; /* Đổi màu chữ thành đen */
        /* Thêm các thuộc tính khác cho phần tử của bạn nếu cần thiết */
    }
</style>




<style>
    .map-container {
        position: relative;
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
    }
    .logo-container {
        margin-right: 20px;
    }

    .logo-container img {
        max-width: 100%;
        height: auto;
        border-radius: 5px; /* Optional: Add border-radius for rounded corners */
    }

    .map-description {
        max-width: 400px; /* Adjust the width as needed */
        padding: 30px;
        background-color: #fff; /* Set the background color */
        border: 10px solid #ddd; /* Set the border color */
        border-radius: 20px; /* Optional: Add border-radius for rounded corners */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Optional: Add a box shadow */
      
    }
</style>


<!--end of menu-->
