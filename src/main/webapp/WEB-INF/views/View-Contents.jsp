<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>CRM - Customer Relationship Manager</h2>
			<hr />

			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-primary" /> <br /> <br />
			<div class="card">
				<div class="card-header">Customer List</div>
				<div class="card-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>#</th>
							<th  class="text-center">Title</th>
							<th  class="text-center">Brief</th>
							<th  class="text-center">Create Date</th>
							<th  class="text-center">Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempcontent" items="${contents}">
							<tr>
								<td>${tempcontent.id}</td>
								<td>${tempcontent.title}</td>
								<td>${tempcontent.brief}</td>
								<td>${tempcontent.createDate}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>
	</div>
</body>
</html>