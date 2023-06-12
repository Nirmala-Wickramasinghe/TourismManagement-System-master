<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-light text-center " style="background:#1D63FF;"> <strong> Hotel Information </strong></h1>
<img  src="img/hotel.jpg" class="d-block w-100 " style="height:250px ; margin-bottom:20px;" alt="..." >

    <div class="card">
        <h2 class="text-dark" style="background: yellow; text-align: left;"><strong>Add Hotel Information</strong></h2>
        <form:form method="post" action="/add-hotel">
            <table>

                <td>HotelName:
                    <form:input path="hotelname"/></td>
                <td>Street No1:
                <form:input path="street1"/></td>
                <td>Street No2:
                <form:input path="street2"/></td>
                <td>Hotel Description:
                <form:input path="hoteldes"/></td>
                <td>Contact No:
                <form:input path="contactNo"/></td>
            </table>
            <br>
            <input class="btn btn-outline-primary" type="submit" value="Create"/>
        </form:form>
    </div>

</body></center>
<script src="/js/bootstrap.js"></script>
<br>
<br>
<footer class="bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-light   text-center p-3" style="background-color: #1D63FF;"> 2023 Copyright:
        <a class="text-light" href="">Software System Development</a>
    </div>
    <!-- Copyright -->
</footer>