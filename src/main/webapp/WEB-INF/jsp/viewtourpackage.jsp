<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-light text-center " style="background:#1D63FF;"> <strong> Tour Package </strong></h1>
<img  src="img/singapore.jpg" class="d-block w-100 " style="height:250px ; margin-bottom:20px;" alt="..." >
<h2 class="text-dark" style="background: yellow; text-align: left;"><strong>View Tour Package</strong></h2>
<br>
<br>
    <a class="btn btn-Primary float-right" href="/add-tourpackage">Add  Package</a>
<br>
<br>
<br>
<table border="5" width="90%" cellpadding="2">
    <tr>
        <th>Id</th>
        <th>Package</th>
        <th>Package Type</th>
        <th>Price(LKR)</th>
        <th>Description</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="packag" items="${packages}">
        <tr>
            <td>${packag.id}</td>
            <td>${packag.packagename}</td>
            <td>${packag.packagetype}</td>
            <td>${packag.packageprice}</td>
            <td>${packag.packagedescription}</td>
            <td><a class="btn btn-outline-primary" href="/update-tourpackage/${packag.id}">Update</a></td>
            <td><a class="btn btn-outline-danger" href="/delete-tourpackage/${packag.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<footer class="bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-light   text-center p-3" style="background-color: #1D63FF;"> 2023 Copyright:
        <a class="text-light" href="">Software System Development</a>
    </div>
    <!-- Copyright -->
</footer>
</body></center>
<script src="/js/bootstrap.js"></script>
