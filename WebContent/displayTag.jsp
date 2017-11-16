<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display tag example.</title>
<style type="text/css">
table {
	border: 1px solid #666;
	width: 80%;
	margin: 20px 0 20px 0 !important;
}
th,td {
	padding: 2px 4px 2px 4px !important;
	text-align: left;
	vertical-align: top;
}
thead tr {
	background-color: #999999;
}
th.sorted {
	background-color: #CCCCCC;
}
th a,th a:visited {
	color: black;
}
th a:hover {
	text-decoration: underline;
	color: black;
}
th.sorted a,th.sortable a {
	background-position: right;
	display: block;
	width: 100%;
}
tr.odd {
	background-color: #fff
}

tr.tableRowEven,tr.even {
	background-color: #CCCCCC
}
</style>

</head>
<body>
	<center>
		<display:table name="empList" id="empList" pagesize="2" requestURI="">
			<display:column property="name" sortable="true"></display:column>
			<display:column property="email" sortable="true" autolink="true"></display:column>
			<display:column property="address" sortable="true" autolink="true"></display:column>
		</display:table>
	</center>
</body>
</html>