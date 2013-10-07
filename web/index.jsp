<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String context = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to KunleyWidgets - a growing HTML5 Collection of Educational Widgets!</title>
<link rel="stylesheet" href="css/index.css" />
</head>
<body>

	<jsp:include page="/pages/common/header.jsp" />

	<div id="content" class="site-width">
		<section class="header">
			<h3>Welcome to KunleyWidgets!</h3>
			<p>
				We are dedicated to providing an ever growing collection of HTML5 widgets on different subjects for educational purposes. Please feel free to explore the site. Drop us <a
					href="mailto:<%=request.getAttribute("email")%>">an email</a> if you have any questions. Thanks!
			</p>
		</section>

		<section class="image-item">
			<table style="width:100%">
				<tr>
					<td>
						<div class="image">
							<a href="<%= context %>/wave"><img src="img/widgets/wave_small.png" width="250" height="178" alt="Wave Interference Generator">
						 </a></div>
					</td>
					<td>
						<div class="text">
							<h3>Wave Interference Generator</h3>
							<p>A visual demonstration of how two sine waves interact with each other. You have the freedom to change wavelength, amplitude, and phase for each sine wave and observe their interference
								pattern. Animate to see closer how that pattern changes over time. Change speed controls for each wave to interact with animation speed and direction. Enjoy!</p>
						</div></td>
				</tr>
			</table>
		</section>
	</div>

	<jsp:include page="/pages/common/footer.jsp" />


</body>
</html>