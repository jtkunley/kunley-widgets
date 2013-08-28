
<div id="widget">
	<div id="canvas-panel">
		<canvas id="canvas_bg" width="620" height="600" style="z-index:0"></canvas>
		<canvas id="canvas_1" width="600" height="140" style="z-index:1"></canvas>
		<canvas id="canvas_2" width="600" height="140" style="z-index:1"></canvas>
		<canvas id="canvas_sum" width="600" height="280" style="z-index:1"></canvas>
		<div id="wave_1" class="label">Wave 1</div>
		<div id="wave_2" class="label">Wave 2</div>
		<div id="sum" class="label">Interference</div>
	</div>
	<div id="control-panel">
		<div class="control-box">
			<h1>Wave 1</h1>
			<div class="slider-label">
				<span class="fixed">Wavelength</span><span id="value_11" class="value"></span>
			</div>
			<div id="slider_11" class="slider"></div>

			<div class="slider-label">
				<span class="fixed">Amplitude</span><span id="value_12" class="value"></span>
			</div>
			<div id="slider_12" class="slider"></div>

			<div class="slider-label">
				<span class="fixed">Phase</span><span id="value_13" class="value"></span>
			</div>
			<div id="slider_13" class="slider"></div>
		</div>

		<div class="control-box">
			<h1>Wave 2</h1>
			<div class="slider-label">
				<span class="fixed">Wavelength</span><span id="value_21" class="value"></span>
			</div>
			<div id="slider_21" class="slider"></div>

			<div class="slider-label">
				<span class="fixed">Amplitude</span><span id="value_22" class="value"></span>
			</div>
			<div id="slider_22" class="slider"></div>

			<div class="slider-label">
				<span class="fixed">Phase</span><span id="value_23" class="value"></span>
			</div>
			<div id="slider_23" class="slider"></div>
		</div>

		<div class="control-box">
			<h1>Animate</h1>
			<div class="slider-label">
				<span class="fixed">Speed 1</span><span id="value_s1" class="value"></span>
			</div>
			<div id="slider_s1" class="slider"></div>

			<div class="slider-label">
				<span class="fixed">Speed 2</span><span id="value_s2" class="value"></span>
			</div>
			<div id="slider_s2" class="slider"></div>

			<button id="animate">Start</button>
		</div>

	</div>
</div>
