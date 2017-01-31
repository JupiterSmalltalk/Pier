stylesheets
rootStyleSheetContents
	^
'a:hover img {background: none;}
.about dd {font-family: Georgia, "Lucida Bright", "Times New Roman", serif; font-style: italic;}

code, pre {font-size: 0.9em;}

.clear {clear: both;}

pre.shout {
  -moz-box-shadow: 5px 5px 5px #ccc;
  -webkit-box-shadow: 5px 5px 5px #ccc;
  box-shadow: 5px 5px 5px #ccc;
}

/* TOOLS */
.inline, .inline p, .inline div { display: inline; }

/* ANNOTATIONS */
p.blockquote { padding: 0.8em; margin-left: 2em; margin-bottom: 1em; }
p.todo { color: red; }
p.todo:before { color: red; content: "TODO"; }
p.note { padding: 0.8em; margin-bottom: 1em; background: #eeeeee; -moz-border-radius: 0.5em; -webkit-border-radius: 0.5em; border-radius: 0.5em; }
p.note:before { color: #777; content: "Note"; }
p.note {font-style: italic;}
p.todo {  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; position: relative; }
p.todo:before, p.note:before {left: -20%; width: 18%; text-align: right; position: absolute; }
 
/* === head === */
.head {
	margin-left: 1em;
	margin-right: 1em;
	height: 44px;
	text-align: left;
	position: relative;
	-moz-border-radius: 1em;
	-webkit-border-radius: 1em; 
	border-radius: 1em;
}
.head img{max-width: 200px;}
.head h1 {
	float: left;
	margin: 10px;
	margin-left: 20px;
	font-size: 20px;
	line-height: 60px;
}
.head h1 a { color: #fff; }
.head .donate { float: right; margin-right: 20px; }
.head .donate form { line-height: 60px; }
.head .donate form input { vertical-align: middle; }
.head .search { float: right; margin-right: 20px; line-height: 60px; }
.head .search input { width: 150px; vertical-align: middle; }
 
/* BODY */
.wrap {
	text-align: left;
	margin: 1em;
	padding-top: 10ex;
	padding-bottom: 10ex;
	background-color: #FFF;
	border: 1px solid #CCC;
	-moz-border-radius: 1em;
	-webkit-border-radius: 1em; 
}
.body {
	margin: auto 10%;
	text-align: left;}
 
/* MAIN */
.main {
	float: left;
	width: 62.5%;
	text-align: left;
	position: relative;
}
.main h1.capt span {
	left: -20%;
	width: 18%;
	text-align: right;
	position: absolute;
}
.main div.figure {
	position: relative;
	margin-bottom: 1.6em;
}
.main div.figure img {
	float: none;
	margin: 0 auto;
	display: block;
	max-width: 100%;
	text-align: center;
}
.main div.figure label {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 90%;
	display: block;
	text-align: center;
	font-weight: normal;
	color: #888;
	margin-top: 1em;
}
.main div.figure label span {font-weight: italic;}
.main img {
	max-width: 100%;
}

.main .table-of-contents { font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; }
.main .table-of-contents dl { position: relative; }
.main .table-of-contents dt { width: 30px; position: absolute; }
.main .table-of-contents dd  { padding-left: 40px; }
.main .table-of-contents a.part { font-weight: bold; }
.main .table-of-contents a.section { padding-left: 2em; }
.main .table-of-contents a.subsection { padding-left: 4em; }
 
.main .table-of-figures dl { position: relative; }
.main .table-of-figures dt { width: 30px; position: absolute; text-align: right; }
.main .table-of-figures dd { padding-left: 40px; }
 
.main .keyword-index dl { position: relative; font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; }
.main .keyword-index dt { width: 200px; position: absolute; }
.main .keyword-index dd { padding-left: 220px; }
 
/* --- side --- */
.side {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; 
	width: 25%;
	float: right;
	text-align: left;
	position: relative;
}
.side dl dt {
	left: -50%;
	width: 45%;
	text-align: right;
	position: absolute;
}
.side p, .side li, .side dd, .side dt { text-align: left; }

.side ul {list-style: none; margin-left: 0;}

/* === footers === */
.admin, .footer { 
	padding: 2em;
	padding-bottom: 0;
	background-repeat: repeat-x;
	background-color: #DDD;
}
.hidden {
	width: 0px;
	height: 0px;
	left: -1000px;
	position: absolute;}
 
/* --- notes --- */
.notes { 
	border: 1px solid #CCC;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-align: left;
	margin: 1em;
	background-color: #eee;
	padding-left: 10%;
	padding-right: 10%;
	padding-top: 10ex;
	padding-bottom: 10ex;
	-moz-border-radius: 1em;
	-webkit-border-radius: 1em;  }
.notes h1 { font-size: 1.5em; line-height: 1; margin-bottom: 1em; }
.notes .listing {margin-bottom: 2em;}
.notes .listing .note { margin-bottom: 1em; }
.notes .listing .note .meta { border-bottom: 1px solid #ddd; margin-bottom: 1em; }
.notes .listing .note .meta .author { font-weight: normal; }
.notes .listing .note .meta .publication { font-size: 80%; }
.notes .listing .note .meta .commands { float: right; }
.notes .listing .note .body { margin: 0; font: 1em ''andale mono'', ''lucida console'', monospace; line-height: 1.5; }
.notes .listing .note .body p { margin: 0; }
.notes .addnote th { width: 120px; background: none;}
.notes .addnote textarea { height: 100px; width: 90%; }
.notes .addnote .buttons { margin-left: 130px; }
.notes .addnote .buttons input { margin-right: 1em; }
 
/* --- admin --- */
.admin { font-size: .8em; line-height: 1.875em; color: #555; }
.admin .tool { width: 25%; float: left; }
.admin .tool ul { margin: 0; padding: 0; list-style: none; }
.admin .tool li li { margin-left: 1em; }
.admin .tool li span.button { float: left; width: 1em; }
.admin .tool .active { font-weight: bold; }
 
/* --- foot --- */
.footer { font-size: 0.7em; font-style: italic; }
.footer p { text-align: center; }
 
/* === pages === */
body.book h1.capt { display: none; }
#body.book img { margin: 0; max-width: 515px; }

/*DEFAULT*/
textarea {width: 100%; max-width: 100%;}
p, li, dd, dt { text-align: left; }
dl dt {font-weight: normal;}
body { font-family: Georgia, "Lucida Bright", "Times New Roman", serif; font-size: 100%; margin: 0; background-color: #ddd;}
table, tr, td, th { margin: 0; border: 0; padding-left: 0; }
td, th {padding-left: 0.5em;}
table { margin-bottom: 1.6em; }
h1, h2, h3, h4, h5, h6 { font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; }
h1 a, h2 a, h3 a, h4 a, h5 a, h5 a, h6 a { color: #222; text-decoration: none; outline: none; }
.nohover a:hover { color: inherit; background: none;}
pre { padding: 5px; background-color: #eee; -moz-border-radius: 5px; -webkit-border-radius: 5px; }
code, tt { padding: 2px; background-color: #eee; -moz-border-radius: 3px; -webkit-border-radius: 3px; }
h1 { font-size: 2em; line-height: 1; margin-bottom: 0.75em; }
h2 { font-size: 1.5em; line-height: 1; margin-bottom: 1em; }
h3 { font-size: 1.2em; line-height: 1.25; margin-bottom: 1.25em; }
h4 { font-size: 1em; line-height: 1; margin-bottom: 1.5em; }
h5 { font-size: 1em; line-height: 1; }
ins { background: #E6EFC2; color: #264409; }
del { background: #FBE3E4; color: #8a1f11; }
label { font-weight:normal; }
form { font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;  }

/* PIER */
.errors, .broken { color: red; font-weight: bold;}
.error, .notice, .success { border: none; }
.protected { color: #aaa; }
a {color: #0066CC; text-decoration: none;}
a:hover, a.external:hover {background: #0066CC; color: white;}
a:hover.nobackground {background: white;}
a.view, a.command {color: gray;}
a.external { background: url(data:image/png;base64,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) right center no-repeat; padding-right: 14px; }
a {text-decoration: none;}
.right {text-align: right;}
.left {text-align: left;}
.center {text-align: center;}
tr th {background: #eee; font-weight: normal; -moz-border-radius: 0.5em; -webkit-border-radius: 0.5em; border-radius: 0.5em;}
tr.group th {background: white; font-size: 1em; font-weight: bold; margin-top: 1.5em; }
td.required:after {color: #ff6633; content: "*"; margin-left: 0.5em;}

span.aggregatedEdit {
	font-size: 14px; float: right; position: relative !important;
}

span.aggregatedEdit a {
	color: #0066cc;
}

span.aggregatedEdit a:hover {
	color: white;
}'