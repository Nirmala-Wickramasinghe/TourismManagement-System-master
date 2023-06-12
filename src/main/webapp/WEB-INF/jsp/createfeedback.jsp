<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body style=" background-repeat: no-repeat; background-size: cover; background-image: url(https://t4.ftcdn.net/jpg/01/56/22/99/360_F_156229930_9qMNk5WVGzQRkf3pGNmm01RoV1ufYWMX.jpg)">
<div class="container">
<h1 style="font-family: 'Arial Black'; margin-top: 20px; text-decoration: underline;">Create Customer Feedback</h1>
    <br>
    <br>
<%-- Creating a form to collect data from the User--%>
<form:form  method="post" action="/create-feedback" style="border: 10px; border-style: groove; border-color: black; padding-bottom: 100px; padding-top: 100px; background-image:url(https://www.cxtoday.com/wp-content/uploads/2022/11/Top-10-Reasons-to-Invest-in-Customer-Feedback-Tools-in-2022.jpg); background-size: cover; background-position: center;">
    <table>
        <tr class = "row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">First Name: </td>

            <td><form:input class="form-control" path="name"/></td>
        </tr>
         <tr class = "row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">Email Address: </td>
            <td><form:input class="form-control" path="email"/></td>
        </tr>
         <tr class = "row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">Your Comments: </td>
            <td><form:input class="form-control" path="message"/></td>
        </tr>
         <tr class = "row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">Ratings from 100%</td>
            <td><form:input class="form-control" path="ratingsforthehotel"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td style="text-align: center; margin-top: 10px"><input class="btn btn-primary" type="submit" value="Create"/></td>

        </tr>
    </table>
</form:form>
 </div>
</body></center>
<script src="/js/bootstrap.js"></script>