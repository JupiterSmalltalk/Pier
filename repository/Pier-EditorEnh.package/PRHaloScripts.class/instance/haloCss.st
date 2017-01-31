accessing-files
haloCss
	^ '/*	Silk Icons 1.3 (http://www.famfamfam.com/lab/icons/silk/)
	Creative Commons Attribution 2.5 License
	Mark James */

.pr-halo { position: relative; }
.pr-halo .pr-halo-tools {
	z-index: 100;
	height: 24px;
	display: none; 
	position: absolute;
	background-color: transparent;
}
.pr-halo-hover {
	background-color: #fdb;
	background-color: rgba(256, 128, 0, 0.2);
}
.pr-halo .pr-halo-tools-hover { display: block; }

.pr-halo .pr-halo-tools div {
	float: left;
	width: 8px;
	clear: none;
	height: 16px;
	display: block;
	color: transparent;
	background-color: transparent;
}
.pr-halo .pr-halo-tools a {
	float: left;
	width: 16px;
	height: 16px;
	padding: 3px;
	outline: none;
	display: block;
	background-color: #fff;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
}
.pr-halo .pr-halo-tools a:hover { background-color: #eee; }
.pr-halo .pr-halo-tools a:active { background-color: #ccc; }

.pr-halo .pr-halo-tools a span {
	width: 16px;
	height: 16px;
	display: block;
	background-color: inherit;
	background-repeat: no-repeat;
	background-image: url(halo.png);
}

.pr-halo .pr-halo-tools a.pr-view span { background-position: 0px 0px; }
.pr-halo .pr-halo-tools a.pr-edit span { background-position: -16px 0px; }
.pr-halo .pr-halo-tools a.pr-settings span { background-position: -32px 0px; }
.pr-halo .pr-halo-tools a.pr-move span { background-position: -48px 0px; }
.pr-halo .pr-halo-tools a.pr-remove span { background-position: -64px 0px; }
.pr-halo .pr-halo-tools a.pr-owner span { background-position: -80px 0px; }
.pr-halo .pr-halo-tools a.pr-group span { background-position: -96px 0px; }
.pr-halo .pr-halo-tools a.pr-other span { background-position: -112px 0px; }'