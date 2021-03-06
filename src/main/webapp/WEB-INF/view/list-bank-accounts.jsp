<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RetailIn - Bank Accounts</title>
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
					<i class="fa fa-table"></i>Bank Account Data
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>ID</th>
									<th>Account No</th>
									<th>Routing No</th>
									<th>Type</th>
									<th>Bank</th>
									<th>Address</th>
									<th>City</th>
									<th>State</th>
									<th>Zip code</th>
									<th>Employee ID</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="accts" items="${listAccounts}">
									<c:url var="updateURL" value="/bank-account/update">
										<c:param name="bankID" value="${accts.acctID}" />
									</c:url>
									<c:url var="deleteURL" value="/bank-account/delete">
										<c:param name="bankID" value="${accts.acctID}" />
									</c:url>

									<tr>
										<td>${accts.acctID}</td>
										<td>${accts.acctNumber}</td>
										<td>${accts.routingNumber}</td>
										<td>${accts.acctType}</td>
										<td>${accts.bankName}</td>
										<td>${accts.bankAddress}</td>
										<td>${accts.bankCity}</td>
										<td>${accts.bankState}</td>
										<td>${accts.zipCode}</td>
										<td><fmt:formatNumber pattern="00000000"
												value="${accts.empID}" /></td>
										<td>
											<!-- display the update link --> <a href="${updateURL}">Update</a>|<a
											href="${deleteURL}"
											onclick="if (!(confirm('Are you sure you want to delete this bank account?'))) return false">Delete</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<a href="${pageContext.request.contextPath}/bank-account/add"
						class="btn bg-success text-white">Add Bank Account</a> <a
						href="${pageContext.request.contextPath}/user/list"
						class="btn bg-secondary text-white">Back to List</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer & Logout -->
	<jsp:include page="logout.jsp" />
</body>
</html>
