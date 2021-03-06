<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RetailIn Department Information</title>
<!-- Resources link -->
<jsp:include page="resources.jsp" />
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<jsp:include page="menu.jsp"/>
	<!-- Content -->
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card card-register mx-auto mt-5">
				<div class="card-header">Department Information Form</div>
				<div class="card-body">
					<form:form action="save" modelAttribute="deptForm" method="POST">
						<form:hidden path="deptID" />
						<div class="form-group">
							<div class="form-row">
								<div class="col-md-6">
									<label for="name">Department name</label>
									<form:input path="name" class="form-control" id="name"
										type="text" placeholder="Enter category name" />
								</div>
								<div class="col-md-6">
									<label for="description">Description</label>
									<form:input path="description" class="form-control"
										id="description" type="text" placeholder="Enter description" />
								</div>
							</div>
						</div>
						<input type="submit" value="Apply & Save"
							class="btn text-white bg-success btn-block" />
					</form:form>
					<a href="${pageContext.request.contextPath}/department/list"
						class="btn btn-secondary btn-block vert-offset-top-1">Back to
						List</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer & Logout -->
	<jsp:include page="logout.jsp" />
</body>
</html>
