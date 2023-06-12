<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">

<!--after created new record this page view the details -->
<center><body >
<h1 class="text-light text-center " style="background:#1D63ff"; ><b style="color:white";>Tourism Managment system</b> </h1>

<img src="/img/vfvv.jpg" alt="">

    <table border="2" width="70%" cellpadding="2">

        <tr>
            <h1 class="text-dark text-center " style="background:#1D63ff; "><b style="color:white";>View booking</b></h1>
            <th>Id</th>
            <th>first Name</th>
            <th>Email</th>
            <th>Package ID</th>
            <th>phone number</th>
            <th>Number of days</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.firstname}</td>
                <td>${booking.email}</td>
                <td>${booking.packageid}</td>
                <td>${booking.phonenumber}</td>
                <td>${booking.numberofdays}</td>
                <td><a class="btn btn-primary" href="/update-booking/${booking.id}">Update</a></td>
                <td><a class="btn btn-danger" href="/delete-booking/${booking.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<!--redirect to add booking page-->
<a class="btn btn-Primary" href="/add-booking">Create Bookings</a>
</body></center>
<script src="/js/bootstrap.js"></script>