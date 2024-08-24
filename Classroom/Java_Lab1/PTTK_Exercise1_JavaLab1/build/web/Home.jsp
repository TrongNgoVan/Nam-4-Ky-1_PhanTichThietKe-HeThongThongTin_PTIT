<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="icon" href ="image/logo.png"
              type="image/x-icon">
       
      <title>Exercise_1_LogIn_SignIn</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
    .product .card {
        margin-bottom: 20px;
    }

    .product .card-img-top {
        object-fit: cover; /* Đảm bảo ảnh bao phủ toàn bộ kích thước của thẻ img */
        height: 200px; /* Thiết lập chiều cao của ảnh theo ý muốn của bạn */
    }
    </style>
    <body>
     <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                     <li><i class="fa fa-home mr-2"></i><a href="home">Home</a>
                                </li>
                     
             
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
    </body>

  
</html>