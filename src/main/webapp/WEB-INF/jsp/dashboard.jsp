<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="">
<h1 class="text-white text-center " style="background:#1D63FF;"> CustomerDashboard</h1>
<img src="/img/0000001.jpg" alt="">

<div class="row" style= "margin-top:50px;">

    <div class="row">
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Package Managment</h3>
                <a href="/view-tourpackage" class="btn btn-primary">Click Button</a>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Booking</h3>
                <a href="/add-booking" class="btn btn-primary">Click Button</a>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Feedback</h3>
                <a href="/read-feedback" class="btn btn-primary">Click Button</a>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Hotel</h3>
                <a href="/view-hotel" class="btn btn-primary">Click Button</a>
            </div>
        </div>


</body></center>
<script src="/js/bootstrap.js"></script>