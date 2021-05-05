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
        .error {
            color: red
        }

        html,
        body {
            height: 100%;
        }
    </style>

    <title>Register New User Form</title>
</head>

<body>
    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <div class="card border-info w-100">
                <h5 class="card-header border-info bg-primary text-white">Register New User</h5>
                <div class="card-body">
                    <!-- Registration Form -->
                    <form:form action="${pageContext.request.contextPath}/register/processRegistrationForm" modelAttribute="crmUser" class="form-horizontal">
                        <!-- Place for messages: error, alert etc ... -->
                        <div class="form-group">
                            <div class="col-xs-15">
                                <div>

                                    <!-- Check for registration error -->
                                    <c:if test="${registrationError != null}">

                                        <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                            ${registrationError}
                                        </div>

                                    </c:if>

                                </div>
                            </div>
                        </div>

                        <!-- User name -->
                        <div class="form-group">
                            <label for="userName">Username</label>
                            <form:errors path="userName" cssClass="error" />
                            <input type="text" name="userName" class="form-control form-control-lg" placeholder="username">
                        </div>

                        <!-- Password -->
                        <div class="form-group">
                            <label for="password">Password</label>
                            <form:errors path="password" cssClass="error" />
                            <input type="password" name="password" class="form-control form-control-lg" placeholder="password">
                        </div>

                        <!-- Confirm Password -->
                        <div class="form-group">
                            <label for="matchingPassword">Confirm Password</label>
                            <form:errors path="matchingPassword" cssClass="error" />
                            <input type="password" name="matchingPassword" class="form-control form-control-lg" placeholder="password">
                        </div>


                        <!-- First name -->
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <form:errors path="firstName" cssClass="error" />
                            <input type="text" name="firstName" class="form-control form-control-lg" placeholder="first name">
                        </div>

                        <!-- Last name -->
                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <form:errors path="lastName" cssClass="error" />
                            <input type="text" name="lastName" class="form-control form-control-lg" placeholder="last name">
                        </div>

                        <!-- Email -->
                        <div class="form-group">
                            <label for="email">Email</label>
                            <form:errors path="email" cssClass="error" />
                            <input type="text" name="email" class="form-control form-control-lg" placeholder="email">
                        </div>

                        <!-- Register Button -->
                        <div class="btn-group">
                            <button type="submit" class="btn btn-primary btn-lg">Register</button>
                            <a href="${pageContext.request.contextPath}/showMyLoginPage" class="btn btn-secondary btn-lg" role="button">Cancel</a>
                        </div>
                    </form:form>
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