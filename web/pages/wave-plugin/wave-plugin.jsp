<%
    String context = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Wave Plugin</title>
    <script src="<%= context %>/js/jquery.js"></script>
    <script src="<%= context %>/js/wave-plugin.js"></script>
<script>
$(function() {
    $("#wave").wave();
});
</script>

</head>
<body>

<div id="wave" />

</body>
</html>