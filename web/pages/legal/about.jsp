<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>About | KunleyWidgets</title>
    <link rel="stylesheet" href="/css/about.css"/>
</head>
<body>

<jsp:include page="/pages/common/header.jsp"/>

<div id="content" class="site-width">

    <div id="profile">
        <a href="http://about.me/jimkunley"><img id="pic" src="/img/profile.jpg"></a>

        <div id="text">
            Hi. My name is <a href="http://about.me/jimkunley">James Kunley</a>. I am <a
                href="http://www.linkedin.com/in/jameskunley">CEO of KunleyDesign</a> and main developer on this
            project. It was inspired by
            my earlier work
            for <a href="http://www.eserc.stonybrook.edu/ProjectJava/">ProjectJava</a> and the power of HTML5 canvas
            visualizations. I hope you enjoy this site and feel free to drop
            me a <a href="mailto:<%= request.getAttribute("email")%>">note</a> or check out my profile pages. Thanks and
            have a great day!
        </div>
        <div id="social">
            <a href="https://www.facebook.com/jim.kunley" title="Facebook"><img src="/img/social-icons/facebook_24.png"
                                                                                alt="Facebook"></a>
            <a href="http://www.linkedin.com/in/jameskunley" title="LinkedIn"><img
                    src="/img/social-icons/linkedin_24.png"
                    alt="LinkedIn"></a>
            <a href="https://plus.google.com/108889299109126731208" title="Google Plus"><img
                    src="/img/social-icons/google-plus_24.png" alt="Google Plus"></a>
            <a href="http://myskype.info/jtkunley" title="Skype"><img src="/img/social-icons/skype_24.png" alt="Skype"></a>
            <a href="https://twitter.com/jtkunley" title="Twitter"><img src="/img/social-icons/twitter_24.png"
                                                                        alt="Twitter"></a>
        </div>
    </div>

    <h3>Credits</h3>

    <div id="credits">
        <div class="item">
            Lots of thanks to <a href="http://subtlepatterns.com/">SubtlePatterns</a> for a wonderful collection of
            background patterns.
        </div>
        <div class="item">
            Special thanks to <a href="http://www.eserc.stonybrook.edu/ProjectJava/">ProjectJava</a> and <a
                href="http://html5rocks.com/en/">HTML5</a> for inspiring this project
        </div>
        <div style="text-align: center; margin-top:40px;">
            <img src="https://developers.google.com/appengine/images/appengine-silver-120x30.gif"
                 alt="Powered by Google App Engine"/>
        </div>
    </div>
</div>

<jsp:include page="/pages/common/footer.jsp"/>


</body>
</html>