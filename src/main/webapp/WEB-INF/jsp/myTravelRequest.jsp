<%@include file="header.jsp" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>My Travel Request</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

<style type="text/css">
.modal-backdrop {
	/* bug fix - no overlay */
	display: none;
}
</style>
<style>

.dtr-title {
	font-size: 12px;
}

.dtr-data {
	font-size: 12px;
}
</style>
</head>

<body>

	<%
		String s = request.getContextPath();
		System.out.println(s);
	%>
	<div class="container-fluid">
	<br>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h1 class="panel-title">All User</h1>
			</div>
			<div class="panel-body">
				<div class="table">
					<table class="table table-striped table-bordered dt-responsive"
						style="width: 100%" id="ticketList">
						<thead style="font-size: 12px;">
							<tr bgcolor="#337ab7" style="color: white;">
								<th>Id:</th>
								<th>TravellingFor:</th>
								<th>From Date:</th>
								<th>To Date:</th>
								<th>Project:</th>
								<th>Applicant Name</th>
								<th>Designation:</th>
								
								
							</tr>
						</thead>

						<tbody>
						  
							<c:forEach items="${myTravelRequestList}" var="tr">
							
								<tr style="font-size: 12px; font-weight: bolder;">
									<td>${tr.travelRequestIdPk }</td>
									<td>${tr.tourProgram}</td>
									<td>${tr.fromDate}</td>
									<td>${tr.toDate }</td>
									<td>${tr.projectstatusMaster.projectName }</td>
									<td>${tr.numAppliedByEmpId.txtEmployeeName }</td>
									<td>${tr.numAppliedByEmpId.txtEmpLoyeeDesignation}</td>
								
								</tr>
								
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
	</div>

	
	
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
		
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
		
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
		
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
		
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>

	<script type="text/javascript">
  
	
 
 $('#ticketList').DataTable( {
     dom: 'Bfrtip',
     aaSorting:[[0,'desc']],
     buttons: [
         { extend:'copy', attr: { id: 'allan' } }, 'csv', 'excel', 'pdf', 'print'
     ]
 } );
  </script>
</body>
</html>
