<%
    String context = request.getContextPath();
%>
<footer class="site">
    <hr/>
    <section id="mission" class="site-width">
        <p>
            KunleyWidgets is dedicated to serving an ever growing number of interactive HTML5 widgets for visually
            demonstrating key concepts in various educational disciplines. These widgets are FREE to use
            for educational purposes. If you'd like to use them commercially, please <a
                href="mailto:<%=request.getAttribute("email")%>">contact us</a>.
        </p>

        <p style="margin-top:10px;">
            While using this site, you agree to have read and accepted our <a href="<%= context %>/terms">terms of use</a> and <a
                href="<%= context %>/privacy">privacy policy</a>.
        </p>
    </section>

    <hr/>

    <section id="closure" class="site-width">
        <div id="copyright">Created by KunleyDesign, 2013.</div>
        <div id="links">
            <a href="<%= context %>/about">About</a> <a href="<%= context %>/terms">Terms of use</a> <a
                href="<%= context %>/privacy">Privacy</a>
            <a href="mailto:<%=request.getAttribute("email")%>">Contact Us</a>
        </div>
        <div id="social"></div>
    </section>
</footer>

<jsp:include page="/pages/common/analytics.js"/>