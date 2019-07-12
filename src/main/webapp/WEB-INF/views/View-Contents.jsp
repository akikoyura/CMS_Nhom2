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
<link href="<c:url value="/resources/css/myStyle.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="background">
		<div class="thanh1">
			<h2 style="padding-top: 10px">CMS</h2>
		</div>
		<div class="left">
			<div class="MenuL" style="height: 50px">
				<div class="topnav">
					<div class="search-container">
						<form action="/action_page.php">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
							<input type="text" placeholder="Search.." name="search">
						</form>
					</div>
				</div>
			</div>
			<div class="MenuL">
				<i class="fa fa-table"></i><a href="#"> View Contents</a>
			</div>
			<div class="MenuL">
				<i class="fa fa-edit"></i><a href="#"> Form Content</a>
			</div>
		</div>
		<div class="right">
			<div class="col-md-offset-1 col-md-10">
				<h2>View Content</h2>
				<hr />
				<div class="card-header">View Content List</div>
				<div class="card-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>#</th>
							<th class="text-center">Title</th>
							<th class="text-center">Brief</th>
							<th class="text-center">Create Date</th>
							<th class="text-center">Action</th>
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