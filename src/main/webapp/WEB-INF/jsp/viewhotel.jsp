<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-light text-center " style="background:#1D63FF;"> <strong> Hotel Information </strong></h1>
<img  src="/img/hotel.jpg" class="d-block w-100 " style="height:250px ; margin-bottom:20px;" alt="..." >
<h2 class="text-dark" style="background: yellow; text-align: left;"><strong>View Hotel Information</strong></h2>
<table border="5" width="90%" cellpadding="2">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Street No1</th>
        <th>Street No2</th>
        <th>HotelDescription</th>
        <th>ContactNo</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="hotel" items="${hotels}">
        <tr>
            <td>${hotel.id}</td>
            <td>${hotel.hotelname}</td>
            <td>${hotel.street1}</td>
            <td>${hotel.street2}</td>
            <td>${hotel.hoteldes}</td>
            <td>${hotel.contactNo}</td>
            <td><a class="btn btn-outline-primary" href="/update-hotel/${hotel.id}">Update</a></td>
            <td><a class="btn btn-outline-danger" href="/remove-hotel/${hotel.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a class="btn btn-Primary" href="/add-hotel">Add Hotel Information</a>
</body></center>

<br>
<br>
<br>

<footer class="bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-light   text-center p-3" style="background-color: #1D63FF;"> 2023 Copyright:
        <a class="text-light" href="">Software System Development</a>
    </div>
    <!-- Copyright -->
</footer>
<script src="/js/bootstrap.js"></script>