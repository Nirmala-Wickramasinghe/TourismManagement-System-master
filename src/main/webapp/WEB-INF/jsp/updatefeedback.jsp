<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg" style=" background-repeat: no-repeat; background-size: cover; background-image: url(https://t4.ftcdn.net/jpg/01/56/22/99/360_F_156229930_9qMNk5WVGzQRkf3pGNmm01RoV1ufYWMX.jpg)">

<h1 style="font-family: 'Arial Black'; margin-top: 20px; text-decoration: underline;">Update CustomerFeedback</h1>
<form:form method="post"  action="/update-feedback/${id}" style="border: 10px; border-style: groove; border-color: black; padding-bottom: 100px; padding-top: 100px; padding-left: 2px;">
    <table>
        <tr class="row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">Name: </td>
            <td><form:input class="form-control" path="name"/></td>
        </tr>
        <tr class="row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">Email: </td>
            <td><form:input class="form-control" path="email"/></td>
        </tr>
        <tr class="row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">Message: </td>
            <td><form:input class="form-control" path="message"/></td>
        </tr>
        <tr class="row">
            <td style=" font-weight: bold; font-family: 'Arial Black'">Ratings: </td>
            <td><form:input class="form-control" path="ratingsforthehotel"/></td>
        </tr>

        <tr class="row">
            <td></td>
            <td style="text-align: center; margin-top: 50px"><input class="btn btn-outline-primary" type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>

</body></center>
<script src="/js/bootstrap.js"></script>