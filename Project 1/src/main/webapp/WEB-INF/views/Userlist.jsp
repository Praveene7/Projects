<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@include file="/WEB-INF/views/header.jsp" %>


 <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h3>Customers List</h3>
					</div>

        <table class="table table-bordered table-striped fs13">
            <thead>
            <tr class="bg-success" >
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>User Name</th>
                <th>Enabled</th>

            </tr>
            </thead>
            <c:forEach items="${usersDetailList}" var="userdetails">
                <tr>
                    <td>${userdetails.fullname}</td>
                    <td>${userdetails.email}</td>
                    <td>${userdetails.contact}</td>
                    <td>${userdetails.username}</td>
                    <td>${userdetails.enabled}</td>
                </tr>
            </c:forEach>
        </table>
        </div>

        <%@include file="/WEB-INF/views/footer.jsp" %>
