<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Wave Interference Generator - Generate Sine Wave Interference Patterns with HTML5!</title>
    <meta name="description"
          content="Visual demonstration of how two sine waves interact with each other. Change wavelength, amplitude, and phase for each sine wave and observe their interference
		pattern. Animate to see closer how that pattern changes over time. Change speed controls for each wave to interact with animation speed. Enjoy!">
    <link rel="stylesheet" href="/pages/wave/js/jquery-ui/jquery-ui-1.10.3.custom.min.css"/>
    <link rel="stylesheet" href="/pages/wave/css/wave.css"/>
    <script src="/js/jquery.js"></script>
    <script src="/pages/wave/js/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="/pages/wave/js/wave.js"></script>
</head>
<body>

<jsp:include page="/pages/common/header.jsp"/>

<div class="site-width">
    <jsp:include page="/pages/common/social.jsp"/>

    <h1 id="title">Wave Interference Generator</h1>
    <section id="header">
        Hi. This is a visual demonstration of how two sine waves interact with each other. You have the freedom to
        change wavelength, amplitude, and phase for each sine wave and observe their interference
        pattern. Animate to see closer how that pattern changes over time. Change speed controls for each wave to
        interact with animation speed. Enjoy!

        <h4>Controls:</h4>
        <ul>
            <li><strong>Wavelength</strong> - stretches or compresses the length of the wave</li>
            <li><strong>Amplitude</strong> - grows or shrinks the height of the wave</li>
            <li><strong>Phase</strong> - shifts the starting position of the wave</li>
            <li><strong>Speed</strong> - increases or decreases the speed of each wave while animating</li>
        </ul>
    </section>

    <jsp:include page="/pages/wave/widget.jsp"/>

    <div id="write-up">
        <p style="text-align:center;margin:10px 0;">
            <img src="/pages/wave/img/formula.png">
        </p>

        <h3 style="margin:0 0 10px;">Sine Wave formula briefly described</h3>

        <p>
            <strong>A (amplitude)</strong> - peak deviation of the function from zero
        </p>

        <p>
            <strong>f (ordinary frequency)</strong> - number of oscillations occurring per time period
        </p>

        <p>
            <img src="/pages/wave/img/formula2.png" style="position:relative;top:5px;"> <strong>(angular
            frequency)</strong> - frequency measured in radians
        </p>

        <p>
            <img src="/pages/wave/img/formula3.png" style="position:relative;top:5px;"> <strong>(phase)</strong> -
            fraction of the wave cycle (in radians) which has elapsed relative to origin (t=0)
        </p>

        <h3 style="margin:20px 0 10px;">How wave controls are actually calculated</h3>

        <p>
            <strong>Wavelength</strong> - input ranges from 1 to 100; converted to angular frequency according to
            following formula <img src="/pages/wave/img/formula4.png"
                                   style="position:relative; top:6px; margin-left:100px;"> to produce a nice looking
            display.
        </p>

        <p>
            <strong>Amplitude</strong> - input ranges from 0 to 100; scaled to actual pixel values
        </p>

        <p>
            <strong>Phase</strong> - input is in degrees (0-360); converted to radians like this <img
                src="/pages/wave/img/formula5.png" style="position:relative;top:4px;margin-left:4px;">
        </p>

        <p style="margin-top:20px;">
            For further research, please see Wikipedia's <a href="http://en.wikipedia.org/wiki/Sine_wave">Sine Wave</a>,
            which describes smooth repetitive oscillation.
        </p>

    </div>

    <div id="notes">
        <p>
            All formulas generated using <a href="http://www.codecogs.com/latex/eqneditor.php">CodeCogs equation
            editor</a>.
        </p>

        <p>
            This widget is an HTML5 rewrite from original Java Applet, <a
                href="http://www.eserc.stonybrook.edu/ProjectJava/WaveInt/index.html">Interference of Sinusoidal
            Waveforms</a>, created for <a
                href="http://www.eserc.stonybrook.edu/ProjectJava/">ProjectJava</a>. If you have questions about this
            note, please <a href="mailto:<%=request.getAttribute("email")%>">contact us</a>.
        </p>
    </div>
</div>

<jsp:include page="/pages/common/footer.jsp"/>

</body>
</html>