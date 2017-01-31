accessing-files
toolbarCss
	^ '/*	Silk Icons 1.3 (http://www.famfamfam.com/lab/icons/silk/)
	Creative Commons Attribution 2.5 License
	Mark James */
	
td.wiki textarea,
textarea.wiki-inline {
	outline: 0;
	margin: 0;
	padding: 0;
	clear: both;
	width: 100%;
	height: 250px;
	font-size: 10px;
	font-family: Monaco, Courier, monospace;
}
	
td.wiki .pr-toolbar,
td.wiki .pr-toolbar * {
	border: 0;
	outline: 0;
	margin: 0;
	padding: 0;
	background-color: inherit;
}
td.wiki .pr-toolbar {
	width: 100%;
	position: relative;
}

td.wiki .pr-toolbar select {
	position: absolute;
	border: 1px solid #ccc;
	background-color: #eee;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
}

td.wiki .pr-toolbar div {
	float: left;
	width: 1px;
	clear: none;
	height: 16px;
	margin: 4px;
	display: block;
	background-color: #ccc;
}
td.wiki .pr-toolbar a {
	float: left;
	width: 16px;
	height: 16px;
	padding: 4px;
	display: block;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
}
td.wiki .pr-toolbar a:hover { background-color: #eee; }
td.wiki .pr-toolbar a:active { background-color: #ccc; }

td.wiki .pr-toolbar a span {
	width: 16px;
	height: 16px;
	display: block;
	background-color: inherit;
	background-repeat: no-repeat;
	background-image: url(toolbar.png);
}

td.wiki .pr-toolbar a.pr-bold span { background-position: 0px 0px; }
td.wiki .pr-toolbar a.pr-italic span { background-position: -16px 0px; }
td.wiki .pr-toolbar a.pr-underline span { background-position: -32px 0px; }
td.wiki .pr-toolbar a.pr-strikethrough span { background-position: -48px 0px; }
td.wiki .pr-toolbar a.pr-monospace span { background-position: -64px 0px; }
td.wiki .pr-toolbar a.pr-subscript span { background-position: -80px 0px; }
td.wiki .pr-toolbar a.pr-superscript span { background-position: -96px 0px; }

td.wiki .pr-toolbar a.pr-link span { background-position: -128px 0px; }
td.wiki .pr-toolbar a.pr-embed span { background-position: -144px 0px; }

td.wiki .pr-toolbar a.pr-anchor span { background-position: -176px 0px; }
td.wiki .pr-toolbar a.pr-header span { background-position: -192px 0px; }
td.wiki .pr-toolbar a.pr-ruler span { background-position: -208px 0px; }
td.wiki .pr-toolbar a.pr-ordered span { background-position: -224px 0px; }
td.wiki .pr-toolbar a.pr-unordered span { background-position: -240px 0px; }
td.wiki .pr-toolbar a.pr-term span { background-position: -256px 0px; }
td.wiki .pr-toolbar a.pr-data span { background-position: -272px 0px; }
td.wiki .pr-toolbar a.pr-table span { background-position: -288px 0px; }
td.wiki .pr-toolbar a.pr-preformatted span { background-position: -304px 0px; }

td.wiki .pr-toolbar a.pr-help span { background-position: -336px 0px; }'