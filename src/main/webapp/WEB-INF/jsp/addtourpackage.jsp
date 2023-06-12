<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<center><body class="bg">
 <h1 class="text-light text-center " style="background:#1D63FF;"> <strong> Tour Package </strong></h1>
    <img  src="img/singapore.jpg" class="d-block w-100 " style="height:250px ; margin-bottom:20px;" alt="..." >
    <div class="card">
        <h2 class="text-dark" style="background: yellow; text-align: left;"><strong>Add Tour Package</strong></h2>

        <form:form method="post" action="/add-tourpackage">

            <table>

                    <td>Package Name: <form:input path="packagename"/></td>
                    <td>Package Type:<form:input path="packagetype"/> </td>
                    <td>Price:   <form:input path="packageprice"/> </td>
                    <td>Details:  <form:input path="packagedescription"/> </td>


                    <td><input class="btn btn-outline-primary" type="submit" value="Create"/></td>

            </table>
        </form:form>

</div>
</body></center>

<script src="/js/bootstrap.js"></script>
<section>
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
</section>