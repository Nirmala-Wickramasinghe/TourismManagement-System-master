<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">

<center><body class="bg">
<h1 class="text-white text-center " style="background:#1D63FF;">Customer SignIn  </h1>
<div class="container">

    <div class="form-group">
        <form:form method="post" action="/login-customer">
            <table>
                <tr class="row">
                    <td>Email: </td>
                    <td><form:input class="form-control" path="email"/></td>
                </tr>
                <tr class="row">
                    <td>Password: </td>
                    <td><form:input class="form-control" path="password"/></td>
                </tr>
                <tr class="row">
                    <td></td>
                </tr>
                <!-- Register buttons -->

            </table>
            <div class="text-center ">
                <td><input class="btn btn-primary" type="submit" value="Login"/></td>
                <p>Not a member? <a href="/add-customer">SignUp</a></p>
            </div>
        </form:form>
    </div>
</div>
</body></center>
<script src="/js/bootstrap.js"></script>
