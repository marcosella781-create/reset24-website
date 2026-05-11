$lines = Get-Content -Path "index.html" -Encoding UTF8

$head_and_top = $lines[0..192] -join "`n"

$nav = @"
<nav style="position: sticky; top: 0; z-index: 9999; background: #fff; padding: 20px; border-bottom: 1px solid #ddd; display: flex; gap: 20px; justify-content: center; font-family: sans-serif; box-shadow: 0 4px 6px rgba(0,0,0,0.05); flex-wrap: wrap;">
  <a href="#hero" style="color: #DA2B68; text-decoration: none; font-weight: bold;">Hero</a>
  <a href="#typography" style="color: #DA2B68; text-decoration: none; font-weight: bold;">Typography</a>
  <a href="#colors" style="color: #DA2B68; text-decoration: none; font-weight: bold;">Colors & Surfaces</a>
  <a href="#components" style="color: #DA2B68; text-decoration: none; font-weight: bold;">UI Components</a>
  <a href="#layout" style="color: #DA2B68; text-decoration: none; font-weight: bold;">Layout & Spacing</a>
  <a href="#motion" style="color: #DA2B68; text-decoration: none; font-weight: bold;">Motion & Interaction</a>
  <a href="#icons" style="color: #DA2B68; text-decoration: none; font-weight: bold;">Icons</a>
</nav>

<style>
.ds-section {
    padding: 80px 20px;
    max-width: 1200px;
    margin: 0 auto;
}
.ds-section-title {
    font-size: 32px;
    color: #333;
    margin-bottom: 40px;
    padding-bottom: 10px;
    border-bottom: 2px solid #DA2B68;
    font-family: 'Poppins', sans-serif;
}
.ds-spec-table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 30px;
}
.ds-spec-table th, .ds-spec-table td {
    padding: 15px;
    border: 1px solid #eee;
    text-align: left;
}
.ds-spec-table th {
    background: #f9f9f9;
    font-family: monospace;
    color: #DA2B68;
}
.ds-color-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 20px;
}
.ds-color-card {
    height: 150px;
    border-radius: 8px;
    display: flex;
    align-items: flex-end;
    padding: 15px;
    font-weight: bold;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}
.ds-components-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 40px;
}
.ds-components-card {
    background: #fdfdfd;
    padding: 40px;
    border-radius: 12px;
    text-align: center;
    border: 1px solid #eee;
}
.ds-icon-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
    gap: 20px;
}
.ds-icon-card {
    background: #fdfdfd;
    padding: 20px;
    border-radius: 8px;
    text-align: center;
    border: 1px solid #eee;
}
.ds-icon-card svg {
	width: 40px;
	height: 40px;
	fill: #DA2B68;
}
</style>
"@

# Extract Hero (lines 193 to 356)
$hero = "<div id=`"hero`">`n" + ($lines[193..356] -join "`n") + "`n</div>"

# Typography Section
$typography = @"
<section id="typography" class="ds-section elementor elementor-19" data-elementor-type="wp-page">
    <h2 class="ds-section-title">Typography</h2>
    <table class="ds-spec-table elementor-widget-heading elementor-widget-text-editor elementor-widget-icon-box" style="margin-left: 0;">
        <tr>
            <th>Heading Title (H1/H2)<br><small>.elementor-heading-title.elementor-size-default</small></th>
            <td><h2 class="elementor-heading-title elementor-size-default">Crealoo Design System</h2></td>
        </tr>
        <tr>
            <th>Paragraph / Text Editor<br><small>.elementor-widget-text-editor p</small></th>
            <td><div class="elementor-widget-container"><p>A creatina da beleza com Glutationa + Colágeno e gostinho de chiclete nostálgico! Uma fórmula pensada para quem busca performance e cuidado.</p></div></td>
        </tr>
        <tr>
            <th>Icon Box Title<br><small>.elementor-icon-box-title</small></th>
            <td><div class="elementor-icon-box-wrapper"><div class="elementor-icon-box-content"><h3 class="elementor-icon-box-title">Mais Energia no Treino</h3></div></div></td>
        </tr>
        <tr>
            <th>Icon Box Description<br><small>.elementor-icon-box-description</small></th>
            <td><div class="elementor-icon-box-wrapper"><div class="elementor-icon-box-content"><p class="elementor-icon-box-description">Treinos com mais gás e menos sensação de pane logo no começo.</p></div></div></td>
        </tr>
        <tr>
            <th>Button Typography<br><small>.elementor-button-text</small></th>
            <td><span class="elementor-button-text" style="color:#000;">QUERO EXPERIMENTAR</span></td>
        </tr>
    </table>
</section>
"@

# Colors & Surfaces Section
$colors = @"
<section id="colors" class="ds-section elementor elementor-19" data-elementor-type="wp-page">
    <h2 class="ds-section-title">Colors & Surfaces</h2>
    <div class="ds-color-grid">
        <div class="ds-color-card" style="background-color: #DA2B68; color: white;">#DA2B68<br>Primary Pink</div>
        <div class="ds-color-card" style="background-color: #741737; color: white;">#741737<br>Dark Pink</div>
        <div class="ds-color-card" style="background-image: linear-gradient(180deg, #FBEBEE 0%, #FFFFFF 100%); color: #333;">Linear Gradient<br>#FBEBEE to #FFFFFF</div>
        <div class="ds-color-card elementor-element-bc409cf" style="color: #fff;" data-element_type="container" data-settings='{"background_background":"gradient"}'>Hero Gradient<br>.elementor-element-bc409cf</div>
        <div class="ds-color-card" style="background-color: #f7f9fc; color: #333;">#f7f9fc<br>Surface Light</div>
        <div class="ds-color-card" style="background-color: rgba(47, 5, 19, 0.46); color: white;">rgba(47, 5, 19, 0.46)<br>Dark Overlay</div>
    </div>
</section>
"@

$accordion_head = $lines[1603..1608] -join "`n"
$accordion_close = $lines[1682..1685] -join "`n"

# UI Components Section
$components = @"
<section id="components" class="ds-section elementor elementor-19" data-elementor-type="wp-page">
    <h2 class="ds-section-title">UI Components</h2>
    <div class="ds-components-grid">
        <div class="ds-components-card">
            <h4 style="margin-bottom: 20px; font-family: sans-serif;">Primary Button<br><small>.elementor-button</small></h4>
            <div class="elementor-widget-button elementor-widget">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
						<a class="elementor-button elementor-button-link elementor-size-sm" href="#">
							<span class="elementor-button-content-wrapper">
								<span class="elementor-button-text">COMPRAR AGORA</span>
							</span>
						</a>
					</div>
				</div>
            </div>
        </div>
        <div class="ds-components-card">
            <h4 style="margin-bottom: 20px; font-family: sans-serif;">Hover Effect Button<br><small>.botao-hover-mantenedor</small></h4>
            <div class="elementor-widget-button elementor-widget">
				<div class="elementor-widget-container">
					<div class="elementor-button-wrapper">
						<a class="elementor-button elementor-button-link elementor-size-sm botao-hover-mantenedor" href="#">
							<span class="elementor-button-content-wrapper">
								<span class="elementor-button-text">HOVER ME</span>
							</span>
						</a>
					</div>
				</div>
            </div>
        </div>
        <div class="ds-components-card">
            <h4 style="margin-bottom: 20px; font-family: sans-serif;">Accordion Concept<br><small>Reusing existing icons</small></h4>
            <div style="text-align:left;">
				$accordion_head
					O que é o Design System?
				$accordion_close
            </div>
        </div>
    </div>
</section>
"@

# Layout Section
$layout = @"
<section id="layout" class="ds-section elementor elementor-19" data-elementor-type="wp-page">
    <h2 class="ds-section-title">Layout & Spacing (Containers)</h2>
    <div class="elementor-element e-flex e-con-boxed e-con e-parent" style="border: 2px dashed #DA2B68; padding: 20px; background: #fdfdfd; margin-bottom: 20px;">
        <div class="e-con-inner">
            <h4 style="text-align:center; width: 100%; font-family: sans-serif;">.e-con-boxed > .e-con-inner<br><small>Max-width container that centers content</small></h4>
        </div>
    </div>
    <div class="elementor-element e-con-full e-flex e-con e-parent" style="border: 2px dashed #741737; padding: 20px; background: #fdfdfd;">
        <div class="e-con-inner" style="width:100%;">
            <h4 style="text-align:center; width: 100%; font-family: sans-serif;">.e-con-full > .e-con-inner<br><small>Full-width edge-to-edge container stretch</small></h4>
        </div>
    </div>
</section>
"@

# Motion & Interaction Section
$motion = @"
<section id="motion" class="ds-section elementor elementor-19" data-elementor-type="wp-page">
    <h2 class="ds-section-title">Motion & Interaction</h2>
    <div class="ds-components-grid">
        <div class="ds-components-card">
            <h4 style="margin-bottom: 20px; font-family: sans-serif;">animated fadeInDown</h4>
            <div class="elementor-widget-heading animated fadeInDown" style="animation-duration: 2s; animation-iteration-count: infinite;">
                <h2 class="elementor-heading-title elementor-size-default">Fade In Down</h2>
            </div>
        </div>
        <div class="ds-components-card">
            <h4 style="margin-bottom: 20px; font-family: sans-serif;">animated fadeInLeft</h4>
            <div class="elementor-widget-heading animated fadeInLeft" style="animation-duration: 2s; animation-iteration-count: infinite;">
                <h2 class="elementor-heading-title elementor-size-default">Fade In Left</h2>
            </div>
        </div>
        <div class="ds-components-card">
            <h4 style="margin-bottom: 20px; font-family: sans-serif;">parallax / scroll-left</h4>
            <div class="scroll-left elementor-motion-effects-element" style="background:#DA2B68; color:white; padding: 20px; border-radius: 8px;">
                Scroll triggers translation X/Y
            </div>
        </div>
        <div class="ds-components-card">
            <h4 style="margin-bottom: 20px; font-family: sans-serif;">Scale parallax effect</h4>
            <div class="elementor-motion-effects-parent" style="background:#741737; color:white; padding: 20px; border-radius: 8px; position:relative; overflow:hidden;">
               <div class="elementor-motion-effects-layer" style="width: 100%; height: 100%; --scale: 1.2; transform: scale(var(--scale)); background:rgba(255,255,255,0.1); position:absolute; top:0; left:0;"></div>
               <span style="position:relative;">Background Scale</span>
            </div>
        </div>
    </div>
</section>
"@

# Icons Section
$icons = @"
<section id="icons" class="ds-section elementor elementor-19" data-elementor-type="wp-page">
    <h2 class="ds-section-title">Icons</h2>
    <div class="ds-icon-grid">
        <div class="ds-icon-card">
            <span class="elementor-icon-list-icon">
                <svg aria-hidden="true" class="e-font-icon-svg e-fas-check" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M173.898 439.404l-166.4-166.4c-9.997-9.997-9.997-26.206 0-36.204l36.203-36.204c9.997-9.998 26.207-9.998 36.204 0L192 312.69 432.095 72.596c9.997-9.997 26.207-9.997 36.204 0l36.203 36.204c9.997 9.997 9.997 26.206 0 36.204l-294.4 294.401c-9.998 9.997-26.207 9.997-36.204-.001z"></path></svg>
            </span>
            <p>.e-fas-check</p>
        </div>
        <div class="ds-icon-card">
            <span class="elementor-icon-list-icon">
                <svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-right" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M696 533C708 521 713 504 713 487 713 471 708 454 696 446L400 146C388 133 375 125 354 125 338 125 325 129 313 142 300 154 292 171 292 187 292 204 296 221 308 233L563 492 304 771C292 783 288 800 288 817 288 833 296 850 308 863 321 871 338 875 354 875 371 875 388 867 400 854L696 533Z"></path></svg>
            </span>
            <p>.e-eicon-chevron-right</p>
        </div>
        <div class="ds-icon-card" style="background:#DA2B68; color:white;">
            <span class="elementor-icon-list-icon">
                <svg fill="#fff" height="40" viewBox="0 0 49 46" width="40" xmlns="http://www.w3.org/2000/svg"><path d="M47.7946 29.8378L40.9169 36.8123C40.6159 37.1197 40.2057 37.2917 39.7801 37.2917H34.4608V44.4925C34.4608 44.9149 34.2926 45.3372 33.9882 45.6416L27.0673 52.6247C26.7663 52.9224 26.3527 53.0978 25.9238 53.0978H20.6079V44.4925H25.9238V37.2917H20.6079V28.6865H15.292V20.0813H9.97607V15.7761H14.1522L20.6079 0H25.9238L34.4608 15.7761H40.9169L47.7946 22.8427C48.0923 23.1436 48.261 23.5471 48.261 23.966V28.7105C48.261 29.1361 48.0889 29.5464 47.7946 29.8378Z"></path></svg>
            </span>
            <p style="color:white;">SVG Custom</p>
        </div>
    </div>
</section>
"@

# Footer - Scripts to run elementor effects
$footer = $lines[2388..($lines.Length-1)] -join "`n"

$full = $head_and_top + "`n" + $nav + "`n" + $hero + "`n" + $typography + "`n" + $colors + "`n" + $components + "`n" + $layout + "`n" + $motion + "`n" + $icons + "`n</div></div>`n" + $footer

$full | Out-File -FilePath "design-system.html" -Encoding UTF8
