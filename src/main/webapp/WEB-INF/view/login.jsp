<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <style type="text/css">
        html,
        body {
            height: 100%;
        }
    </style>

    <title>Login Page</title>
</head>

<body>
    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <div class="card border-info mb-3">
                <h5 class="card-header border-info bg-info text-white">Sign In</h5>
                <div class="card-body">
                    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" class="form-horizontal">

                        <!-- Place for messages: error, alert etc ... -->
                        <div class="form-group">
                            <div class="col-xs-15">
                                <div>

                                    <!-- Check for login error -->

                                    <c:if test="${param.error != null}">

                                        <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                            Invalid username and/or password
                                        </div>

                                    </c:if>

                                    <!-- Check for logout -->
                                    <c:if test="${param.logout != null}">

                                        <div class="alert alert-success col-xs-offset-1 col-xs-10">
                                            You have been logged out
                                        </div>
                                    </c:if>

                                </div>
                            </div>
                        </div>

                        <!-- User name -->
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" name="username" class="form-control form-control-lg" placeholder="username">
                        </div>

                        <!-- Password -->
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" class="form-control form-control-lg" placeholder="password">
                        </div>

                        <!-- Login/Submit Button -->
                        <button type="submit" class="btn btn-success btn-lg">Submit</button>
                    </form:form>
                    <div style="margin-top: 1rem">
                        <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Register New User</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>