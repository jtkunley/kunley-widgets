<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Privacy | KunleyWidgets</title>
<link rel="stylesheet" href="/css/legal.css" />
</head>
<body>

	<jsp:include page="/pages/common/header.jsp" />

	<div id="content" class="site-width">
		<section>
			<h2>Privacy Statement for KunleyWidgets</h2>
		</section>

		<section>
			<h3>Personal User Information</h3>
			<p>KunleyWidgets does not collect any information about its users or visitors.</p>
			<p>Users are free to visit KunleyWidgets, and navigate all its pages, without any user registration.</p>
		</section>

		<section>
			<h3>Cookies</h3>
			<p>KunleyWidgets does not use cookies, but since we might use ad companies to display ads, these ads might contain cookies.</p>
		</section>

		<section>
			<h3>Links</h3>
			<p>KunleyWidgets contains links to other sites. We are not responsible for the privacy practices or the content of such Web sites. This privacy document applies only to KunleyWidgets.</p>
		</section>

		<section>
			<h3>Contacting Us</h3>
			<p>
				For any questions about this privacy statement, please contact <a href="<%=request.getAttribute("email")%>"><%=request.getAttribute("email")%></a>.
			</p>
		</section>
	</div>

	<jsp:include page="/pages/common/footer.jsp" />


</body>
</html>