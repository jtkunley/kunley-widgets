// Author: KunleyDesign
// Created On: August, 2013
// Module: Wave Interference Generator 

var wave1, wave2, sum;
var wavelengthRange, amplitudeRange, phaseRange, speedRange;
var WAVELENGTH_MAGNIFY = 5;
var timer, animateBtn;

$(function() {
	wavelengthRange = range(1, 100);
	amplitudeRange = range(0, 100);
	phaseRange = range(0, 360);
	speedRange = range(0, 10);

	wave1 = wave("1", 30, 90, 0, "GreenYellow", 140);
	wave2 = wave("2", 30, 90, 0, "GreenYellow", 140);
	sum = wave("sum", 0, 0, 0, "DodgerBlue", 280);

	clearCanvas();
	drawWave(wave1);
	drawWave(wave2);
	drawSum();

	waveControls(wave1);
	waveControls(wave2);

	animateBtn = $("button#animate");
	animateBtn.button().click(function(event) {
		if (timer == null)
			animateStart();
		else
			animateStop();
	});
});

function animateStart() {
	timer = setInterval(function() {
		wave1.phase += wave1.speed;
		wave2.phase += wave2.speed;
		drawWave(wave1);
		drawWave(wave2);
		drawSum();
	}, 1000 / 25);
	animateBtn.button("option", "label", "Stop");
	$("#slider_13").slider("disable");
	$("#slider_23").slider("disable");
}

function animateStop() {
	clearInterval(timer);
	timer = null;
	animateBtn.button("option", "label", "Start");
	$("#slider_13").slider("enable");
	$("#slider_23").slider("enable");
}

function range(min, max) {
	var r = new Object();
	r.min = min;
	r.max = max;
	return r;
}

function wave(idx, wavelength, amplitude, phase, color, height) {
	var w = new Object();
	w.idx = idx;
	w.wavelength = wavelength;
	w.amplitude = amplitude;
	w.phase = phase;
	w.color = color;
	w.width = 710;
	w.height = height;
	w.speed = 4;

	w.canvas = document.getElementById("canvas_" + idx);
	w.buffer = document.createElement('canvas');
	w.buffer.width = w.width;
	w.buffer.height = w.height;
	return w;
}

function waveControls(wave) {
	slider(wave, 1, wavelengthRange, wave.wavelength);
	slider(wave, 2, amplitudeRange, wave.amplitude);
	slider(wave, 3, phaseRange, wave.phase);
	animateSlider(wave);
}

function slider(wave, i, range, val) {
	var idx = "" + wave.idx + i;
	$("#slider_" + idx).slider({
		range : "min",
		min : range.min,
		max : range.max,
		value : val,
		animate : true,
		slide : function(event, ui) {
			$("#value_" + idx).text(ui.value);
			adjustWave(wave, i, ui.value);
		}
	});
	$("#value_" + idx).text(val);
}

function animateSlider(wave) {
	$("#slider_s" + wave.idx).slider({
		range : "min",
		min : speedRange.min,
		max : speedRange.max,
		value : wave.speed,
		animate : true,
		slide : function(event, ui) {
			$("#value_s" + wave.idx).text(ui.value);
			wave.speed = ui.value;
			// adjustWave(wave, i, ui.value);
		}
	});
	$("#value_s" + wave.idx).text(wave.speed);
}

function adjustWave(wave, i, val) {
	if (i == 1)
		wave.wavelength = val;
	else if (i == 2)
		wave.amplitude = val;
	else if (i == 3)
		wave.phase = val;
	drawWave(wave);
	drawSum();
}

function drawSum() {
	var ctx = sum.buffer.getContext('2d');
	ctx.clearRect(0, 0, sum.width, sum.height);

	ctx.strokeStyle = sum.color;
	ctx.lineWidth = 3;

	var y11, y12, y21, y22;
	var phase1 = wave1.phase * Math.PI / 180;
	var phase2 = wave2.phase * Math.PI / 180;
	var amp1 = (wave1.height * wave1.amplitude) / (2 * 100) - 1;
	var amp2 = (wave2.height * wave2.amplitude) / (2 * 100) - 1;
	var freq1 = 2 * Math.PI / (wave1.wavelength * WAVELENGTH_MAGNIFY);
	var freq2 = 2 * Math.PI / (wave2.wavelength * WAVELENGTH_MAGNIFY);
	var yOrigin = sum.height / 2;

	ctx.beginPath();
	for ( var i = 0; i < sum.width; i++) {
		y11 = amp1 * Math.sin(phase1 + freq1 * i);
		y12 = amp1 * Math.sin(phase1 + freq1 * (i + 1));

		y21 = amp2 * Math.sin(phase2 + freq2 * i);
		y22 = amp2 * Math.sin(phase2 + freq2 * (i + 1));

		ctx.moveTo(i, y11 + y21 + yOrigin);
		ctx.lineTo(i + 1, y12 + y22 + yOrigin);
	}
	ctx.stroke();

	var front_ctx = sum.canvas.getContext("2d");
	front_ctx.clearRect(0, 0, sum.width, sum.height);
	front_ctx.drawImage(sum.buffer, 0, 0);
}

function drawWave(wave) {
	var ctx = wave.buffer.getContext('2d');
	ctx.clearRect(0, 0, wave.width, wave.height);

	ctx.strokeStyle = wave.color;
	ctx.lineWidth = 3;

	var phase = wave.phase * Math.PI / 180;
	var amp = (wave.height * wave.amplitude) / (2 * 100) - 2;
	var freq = 2 * Math.PI * (1 / (wave.wavelength * WAVELENGTH_MAGNIFY));
	var yOrigin = wave.height / 2;

	var y1, y2;
	ctx.beginPath();
	for ( var i = 0; i < wave.width; i++) {
		y1 = amp * Math.sin(phase + freq * i) + yOrigin;
		y2 = amp * Math.sin(phase + freq * (i + 1)) + yOrigin;
		ctx.moveTo(i, y1);
		ctx.lineTo(i + 1, y2);
	}
	ctx.stroke();

	var front_ctx = wave.canvas.getContext("2d");
	front_ctx.clearRect(0, 0, wave.width, wave.height);
	front_ctx.drawImage(wave.buffer, 0, 0);
}

function clearCanvas() {
	var canvas = document.getElementById("canvas_bg");
	var ctx = canvas.getContext('2d');
	var width = 730, height = 600;

	ctx.fillStyle = "#111";
	ctx.fillRect(0, 0, width, height);

	ctx.strokeStyle = "#ccc";
	ctx.lineWidth = .3;
	var increment = 12;

	ctx.beginPath();
	for ( var i = 1; i < height / increment; i++) {
		ctx.moveTo(0, i * increment);
		ctx.lineTo(width, i * increment);
	}
	for ( var j = 1; j < width / increment; j++) {
		ctx.moveTo(j * increment, 0);
		ctx.lineTo(j * increment, height);
	}
	ctx.stroke();
}

function log(msg) {
	console.log(msg);
}
