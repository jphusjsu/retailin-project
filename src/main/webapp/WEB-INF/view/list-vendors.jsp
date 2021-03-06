<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RetailIn - Vendors</title>
<!-- Resources link -->
<jsp:include page="resources.jsp" />
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<jsp:include page="menu.jsp" />
	<!-- Content -->
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i>Vendor Data
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>EIN</th>
									<th>Name</th>
									<th>Address</th>
									<th>City</th>
									<th>State</th>
									<th>Zip code</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="vendor" items="${listVendors}">
									<c:url var="updateURL" value="/vendor/update">
										<c:param name="vendorId" value="${vendor.vendorID}" />
									</c:url>
									<c:url var="deleteURL" value="/vendor/delete">
										<c:param name="vendorId" value="${vendor.vendorID}" />
									</c:url>
									<tr>
										<td>${vendor.ein}</td>
										<td>${vendor.name}</td>
										<td>${vendor.address}</td>
										<td>${vendor.city}</td>
										<td>${vendor.state}</td>
										<td>${vendor.zipCode}</td>
										<td>
											<!-- display the update link --> <a href="${updateURL}">Update</a>|<a
											href="${deleteURL}"
											onclick="if (!(confirm('Are you sure you want to delete this vendor?'))) return false">Delete</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<a href="${pageContext.request.contextPath}/vendor/add"
						class="btn bg-success text-white">Add Vendor</a> <a
						href="${pageContext.request.contextPath}/"
						class="btn bg-secondary text-white">Back Home</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer & Logout -->
	<jsp:include page="logout.jsp" />
</body>
</html>
