<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
    <title>Impulse Manager</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}</style>
    <body class="w3-light-grey">

        <!-- Top container -->
        <div class="w3-container w3-top w3-black w3-large w3-padding" style="z-index:4">
            <button class="w3-btn w3-hide-large w3-padding-0 w3-hover-text-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
            <span class="w3-right">Impulse</span>
        </div>

        <!-- Sidenav/menu -->
        <nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidenav"><br>
            <div class="w3-container w3-row">
                <div class="w3-col s4">
                    <img src="<c:url value="/media/img/Breland-1.jpg" />" class="w3-circle w3-margin-right" style="width:46px">
                </div>
                <div class="w3-col s8">
                    <sec:authorize access="hasRole('ROLE_USER')">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <span>Welcome, <strong>${pageContext.request.userPrincipal.name}</strong></span><br>
                        </c:if>
                        
                    </sec:authorize>
                </div>
            </div>
            <hr>

            <a href="#" class="w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
            <a href="<c:url value="/" />" class="w3-padding"><i class="fa fa-dashboard fa-fw"></i>  Dashboard</a>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div class="w3-dropdown-hover">

                    <a href="<c:url value="/users/viewusers" />" class="w3-padding w3-blue"><i class="fa fa-neuter fa-fw"></i>  Users  <i class="fa fa-caret-down"></i></a>
                    <a href="<c:url value="/users/usersform" />" class="w3-padding w3-blue"><i class="fa fa-neuter fa-fw"></i>  Add User  <i class="fa fa-caret-down"></i></a>
                </div>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_USER')">
                <div class="w3-dropdown-hover">
                    <a href="<c:url value="/client/viewclient" />" class="w3-padding w3-blue"><i class="fa fa-neuter fa-fw"></i>  Clients  <i class="fa fa-caret-down"></i></a>
                    <a href="<c:url value="/client/clientform" />" class="w3-padding w3-blue"><i class="fa fa-neuter fa-fw"></i>  Add Client  <i class="fa fa-caret-down"></i></a>
                    <a href="<c:url value="/interactions/viewinteractions" />" class="w3-padding w3-blue"><i class="fa fa-neuter fa-fw"></i>  Interactions  <i class="fa fa-caret-down"></i></a>
 <a href="<c:url value="/interactions/interactionsform" />" class="w3-padding w3-blue"><i class="fa fa-neuter fa-fw"></i>   Add Interaction  <i class="fa fa-caret-down"></i></a>
                </div>
            </sec:authorize>
           
            <a href="#" onclick="logoutFormSubmit();" class="w3-padding"><i class="fa fa-sign-out fa-fw"></i>  Logout</a><br><br>

            <form action="<c:url value="/j_spring_security_logout" />" method="post" id="logoutForm">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
        </nav>


        <!-- Overlay effect when opening sidenav on small screens -->
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px;margin-top:43px;">