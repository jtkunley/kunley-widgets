<%
    String context = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Wave Plugin</title>
    <script src="<%= context %>/js/jquery.js"></script>
    <script src="<%= context %>/js/wave.js"></script>
<script>
$(function() {
    $("#wave").wave({
        width: 800,
        phase: -90,
        grid: true
    });
});
</script>

</head>
<body>

<div id="wave" />

</body>
</html>