<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<!--updating the record added-->
<center><body>
<h1 class="text-light text-center " style="background:#1D63ff"; ><b style="color:white";>Tourism Managment system</b> </h1>
<img src="/img/27846735.jpg" alt="">
<div class="container">
    <div class="card">
<h1 class="text-light text-center " style="background:#1D63ff;" ><b style="color:white";>Update Booking Details</b></h1>
<form:form method="post" action="/update-booking/${id}">
    <table>
        <tr>
            <td> Name: </td>
            <td><form:input path="firstname"/></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td>Package ID: </td>
            <td><form:input path="packageid"/></td>
        </tr>
        <tr>
            <td>Phone No: </td>
            <td><form:input path="phonenumber"/></td>
        </tr>
        <tr>
            <td>Number of days: </td>
            <td><form:input path="numberofdays"/></td>
        </tr>
        <tr>
            <td></td>
            <!--show updated in view page ,mapped in controller-->
            <td><input class="btn btn-primary" type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>
    </div>
 </div>
</body></center>
<script src="/js/bootstrap.js"></script>