(function ($) {
    $.fn.wave = function (options) {
        var wave = $.extend({
            color: "GreenYellow",
            width: "400px",
            height: "150px",
            wavelength: 100,
            amplitude: 100,
            phase: 0,
            speed: 4
        }, options);



//        wave.canvas = document.getElementById("canvas");
//        wave.buffer = document.createElement('canvas');
//        wave.buffer.width = wave.width;
//        wave.buffer.height = wave.height;
//        this.append(wave.canvas);
        //draw(wave);
    };

//    function draw(wave) {
//        var ctx = wave.buffer.getContext('2d');
//        ctx.clearRect(0, 0, wave.width, wave.height);
//
//        ctx.strokeStyle = wave.color;
//        ctx.lineWidth = 3;
//
//        var phase = wave.phase * Math.PI / 180;
//        var amp = (wave.height * wave.amplitude) / (2 * 100) - 2;
//        var freq = 2 * Math.PI * (1 / (wave.wavelength * WAVELENGTH_MAGNIFY));
//        var yOrigin = wave.height / 2;
//
//        var y1, y2;
//        ctx.beginPath();
//        for ( var i = 0; i < wave.width; i++) {
//            y1 = amp * Math.sin(phase + freq * i) + yOrigin;
//            y2 = amp * Math.sin(phase + freq * (i + 1)) + yOrigin;
//            ctx.moveTo(i, y1);
//            ctx.lineTo(i + 1, y2);
//        }
//        ctx.stroke();
//
//        var front_ctx = wave.canvas.getContext("2d");
//        front_ctx.clearRect(0, 0, wave.width, wave.height);
//        front_ctx.drawImage(wave.buffer, 0, 0);
//    }


}(jQuery));