<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%@ include file="theme/header.jsp" %>

<header class="w3-container" style="padding-top:22px">
    <h5><b><i class="fa fa-dashboard"></i> Manage Users > Edit Users</b></h5>
</header>

<div class="w3-row-padding w3-half w3-margin-bottom">

    <div class="w3-card-4">
        <div class="w3-container w3-blue">
            <h2>Header</h2>
        </div>

        <form:form method="POST" action="/impulse/users/editsave" cssClass="w3-container" commandName="users">
            <form:hidden path="username"  />

            <div class="w3-padding-8">
                <label><b>Name</b></label>
                <form:input path="name" cssClass="w3-input w3-border"  />
                <form:errors path="name" cssClass="w3-red w3-padding-8 w3-panel" cssStyle="display: block; width: 100%; font-weight:bold;" />
            </div>
            <div class="w3-padding-8">
                <label><b>Password</b></label>
                <form:password path="password" cssClass="w3-input w3-border"  />
                <form:errors path="password" cssClass="w3-red w3-padding-8 w3-panel" cssStyle="display: block; width: 100%; font-weight:bold;" />
            </div>
            <div class="w3-padding-8">
                <label><b>Roles</b></label>
                <form:select  multiple="true" path="rolelist" cssClass="w3-select w3-border">

                    <form:options items="${users.roles}"  />
                </form:select>
                Ctrl + click to select multiple items.
            </div>
            <div class="w3-padding-8">
                <label><b>Enabled</b></label>
                <form:select path="enabled" cssClass="w3-select w3-border">

                    <form:options items="${users.enableMap}"  />
                </form:select>
            </div>


            <div class="w3-padding-8">
                <button type="submit" class="w3-btn w3-padding w3-blue" style="width:120px">Save</button>
            </div>
        </form:form>

    </div>
</div>

<%@ include file="theme/footer.jsp" %>