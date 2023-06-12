<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">

<center><body style=" background-repeat: no-repeat; background-size: cover; background-image: url(https://t4.ftcdn.net/jpg/01/56/22/99/360_F_156229930_9qMNk5WVGzQRkf3pGNmm01RoV1ufYWMX.jpg)">
<h1 class="text-dark text-center;" style="font-family: 'Book Antiqua'"> Read Customer Feedback Page</h1>
<table border="4" width="70%" cellpadding="4" style="border-collapse: collapse;">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Message</th>
        <th>Ratings</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="feedback" items="${feedbacks}">

        <tr>
            <td style="border: 1px solid black;">${feedback.id}</td>
            <td style="border: 1px solid black;">${feedback.name}</td>
            <td style="border: 1px solid black;">${feedback.email}</td>
            <td style="border: 1px solid black;">${feedback.message}</td>
            <td style="border: 1px solid black;">${feedback.ratingsforthehotel}</td>
            <td style="border: 1px solid black;"><a class="btn btn-warning" href="/update-feedback/${feedback.id}">Update</a></td>
            <td style="border: 1px solid black;"><a class="btn btn-danger" href="/delete-feedback/${feedback.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<br/>

<a class="btn btn-outline-primary" href="/create-feedback">Create Feedback</a>

</body></center>
<script src="/js/bootstrap.js"></script>


