<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body >
<h1 class="text-white text-center " style="background:#1D63FF;"> Admin Dashboard</h1>
<img src="/img/0000001.jpg" alt="">

<div class="row" style= "margin-top:50px;">
<section class="Admin">

    <div class="row">
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Customer Managment</h3>
                <a href="/read-customer" class="btn btn-warning">View Customers</a>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Feedback Information</h3>
                <a href="/read-feedback" class="btn btn-warning">View Feedback</a>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Hotel Information</h3>
                <a href="/view-hotel" class="btn btn-warning">View Hotel</a>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card card-block">
                <h3 class="card-title">Package Information</h3>
                <a href="/view-tourpackage" class="btn btn-warning">View Package</a>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card card-block">
            <h3 class="card-title">Booking  Information</h3>
            <a href="/read-booking" class="btn btn-warning">View Booking</a>
        </div>
    </div>


</section>






</body></center>
<script src="/js/bootstrap.js"></script>