<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Terms of use | KunleyWidgets</title>
<link rel="stylesheet" href="/css/legal.css" />
</head>
<body>

	<jsp:include page="/pages/common/header.jsp" />

	<div id="content" class="site-width">
		<section>
			<h2>Terms of Use</h2>
			<p>Use of KunleyWidgets implies an agreement to the following:</p>
		</section>

		<section>
			<h3>Copyright Information</h3>
			<p>Pages, code or other content from KunleyWidgets may not be redistributed or reproduced in any way, shape, or form without the written permission of KunleyDesign.</p>
			<p>Failure to do so is a violation of copyright laws.</p>
		</section>

		<section>
			<h3>Linking to KunleyWidgets</h3>
			<p>Any Web site may link to any of the pages on KunleyWidgets. However, pages from KunleyWidgets may not be embedded in a frame from the referring site, without the written permission of
				KunleyDesign.</p>
		</section>

		<section>
			<h3>Warranties</h3>
			<p>KunleyWidgets is provided without warranty of any kind. There are no guarantees that use of the site will not be subject to interruptions. All direct or indirect risk related to use of the
				site is borne entirely by the user. All information provided by KunleyWidgets is provided for educational purposes only without any warranties to performance, fitness, merchantability, and/or any
				other warranty (whether expressed or implied).</p>
			<p>KunleyWidgets may contain widget bugs, inaccuracies or errors. KunleyDesign makes no guarantees regarding the accuracy of the site or its contents. If you discover that the site or its contents contains
				errors, please <a href="mailto:<%=request.getAttribute("email")%>">contact us</a> so these can be corrected.</p>
		</section>
		
		<section>
			<h3>Linked Sites</h3>
			<p>KunleyWidgets contains links to other sites. KunleyDesign is not responsible for any content that appears on these linked sites.</p>
		</section>
		
		<section>
			<h3>Your Conduct</h3>
			<p>While using this site, you agree to have read and accepted all the information on this page.</p>
		</section>
	</div>

	<jsp:include page="/pages/common/footer.jsp" />


</body>
</html>