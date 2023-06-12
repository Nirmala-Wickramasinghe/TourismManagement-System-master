<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-white text-center " style="background:#1D63FF;">View Customers</h1>

<table border="2" width="70%" cellpadding="2">
    <tr>
        <th>ID</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Street 1</th>
        <th>Country</th>
        <th>Mobile</th>
        <th>Email</th>

        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="customer" items="${customer}">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.firstname}</td>
            <td>${customer.lastname}</td>
            <td>${customer.mobile}</td>
            <td>${customer.address}</td>
            <td>${customer.country}</td>
            <td>${customer.email}</td>

            <td><a class="btn btn-warning" href="/update-customer/${customer.id}">Update</a></td>
            <td><a class="btn btn-danger" href="/delete-customer/${customer.id}">Delete</a></td>
            <td><a class="btn btn-warning" href="">Back</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a class="btn btn-Primary" href="/add-customer">Create Customer</a>
</body></center>
<script src="/js/bootstrap.js"></script>