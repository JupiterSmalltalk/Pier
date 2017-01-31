stylesheets
rootStyleSheetContents
	^ '.header h1.heading { font-size: 2em; padding-top: 1.5em; margin-bottom: 0; color: white;}
.header h2 { font-size: 1.2em; margin-top: 0; padding-bottom: 1.25em; color: white;}
.header {background: #545454; color: white;}
.siteTitle {font-size:2em; margin-bottom:0.8em;padding-top:0.5em;}

/* HEADER */
.menu ul {
	margin: 0;
	margin-top: 0.2em;
	list-style-type: none;}
.menu ul li {
	display: inline;
	margin: 0;
	margin-right: 1.5em;
	list-style-type: none;}
.menu li a {
	padding-left: 1em;
	padding-right: 1em;
	padding-top: 0.5em;
	padding-bottom: 1em;}


/*BLOG*/
div.post {margin-bottom: 4.5em;}
div.comment {margin-bottom: 3em;}
.meta {font-size: 80%; color: #aaa;}
.leavecomment {margin-top: 4.5em; margin-bottom: 4.5em;}
.comments {margin-top: 4.5em;}

pre.shout {
  -moz-box-shadow: 5px 5px 5px #ccc;
  -webkit-box-shadow: 5px 5px 5px #ccc;
  box-shadow: 5px 5px 5px #ccc;
}

/* NAVIGATION */
.sidebar ul {
	margin-top: 0;
	margin-left: 0;
	list-style-type: none;}
.sidebar ul ul {
	margin-bottom: 0;
	margin-left: 1.5em;}
.sidebar ul li {
	margin-top: 1.5em;}
.sidebar ul li a {
/*	padding-left: 0.3em;
	padding-right: 0.3em;
*/	padding-top: 0.3em;
	padding-bottom: 0.3em;}
.sidebar p,
.sidebar h1, .sidebar h2, .sidebar h3,
.sidebar .blogPostTicker .timestamp,
.sidebar .blogPostTicker .summary {}
.sidebar .active,
.menu li a.active {
	color: white;
	background: #ff6633;}
.sidebar .sidebarDocument {
	padding-top: 0.3em;
}


/*MAIN BODY*/
.mainbody {
	padding-top: 4em;
	padding-bottom: 15em;}
.blogPostTicker ul {
	list-style: none;
	margin-left: 0;}
.blogPostTicker ul li {
	margin-bottom: 1.5em;}
.blogPostTicker .timestamp {display: inline; padding-left: 1em; color: #aaa; font-size: 80%;}
.blogPostTicker .subscribe,
.blogPostTicker .timestamp .time,
.blogPostTicker .timestamp .author {display: none;}


/* FOOTER */
.footer {
	color: #aaa;
	font-size: 80%;
	text-align: left;}
.footer a { color: #aaa;}
.footer ul {list-style: none; margin-left: 0em;}
.footer ul ul {margin-left: 1.5em;}
.footer .commands ul, .footer .views ul {display: inline;}
.footer .commands ul li, .footer .views ul li {display: inline; padding-right: 1em;}


/* META */
.metaenvironment h1.heading {display: none;}
.metaheader {background: #C3D9FF; font-size: 200%}
.metaheader ul {display: inline; margin: 0;}
.metaheader li {list-style: none; display: inline; margin: 0;}
.metaheader li:after {content: "/"}
.metaenvironment.container {border: 1px solid #C3D9FF; margin-top: 0;}
.metafooter {background: #C3D9FF;}
.metafooter li {list-style: none;}
.socialSharingWidget a:hover { border:none;}

/*DEFAULT*/
body {
	font-family: Verdana,Helvetica,Geneva,sans-serif;
	font-size: 13px;
	line-height: 1.538em;
	margin-top: 0;}
h1, h2, h3, h4, h5, h6 { margin: 0; font-weight: inherit; font-size: 100%; line-height: inherit; }
h1 { font-size: 1.5em; line-height: 1; margin-bottom: 1em; }
.maincontents {font-size: 1.5em;}
h2 { font-size: 1.2em; height: 1.25em; line-height: 1.25; margin-bottom: 1.25em; }
h3 { font-size: 1em; font-weight: bold; margin-bottom: 1.5em; }
h4 { font-size: 1em; font-weight: bold; }
h5 { font-size: 1em; }
textarea {width: 100%;}


/* PIER */
.broken { color: red; font-weight: bold;}
.protected { color: #aaa; }
a.view, a.command {color: gray;}
a.environment:after {content: "*";}
.right {text-align: right;}
.left {text-align: left;}
.center {text-align: center;}
.float {float: right;}
.nobullets ul {list-style: none; margin-left: 0;}
.nobullets ul li {list-style: none; margin-left: 0;}
th {background: #eee; font-weight: normal;}


a {
	color: royalBlue;
	text-decoration: none;
}

a:hover {
	border-bottom: 1px dotted;
	color: royalBlue;
}

.menu a {
    color: #FF6633;
}

.menu a:hover {
	color: white;
	background: #FF6633;
	border-bottom: 0px none;
}

h1 a {
	color:#545454;
}

h1 a:hover {
	color:#545454;
	background: white
}

h2.subHeading a {
	color:white;
}

h2.subHeading a:hover {
	color:#545454;
	background: white
}


/* BLOG template */
.blogArchiveTitle, .blogTagsTitle, .blogCloudTitle {
	border-bottom: 6px solid #dddddd;
	color: #444444;
	padding: 0 0 3px;
}

.blogArchiveTitle, .blogTagsTitle {
	border-bottom: 6px solid #dddddd;
	color: #444444;
	padding: 0 0 3px;
}

.blogArchive, .blogTags {
	text-align: right;
	font-size: 15px;
	color: #BBBBBB;
}

.blogArchive ul, .blogTags ul {
	margin: 0;
}

.blogArchive a, .blogTags a, .blogCloud a {
	color: #777777;
}

.meta {
	border-bottom: 1px solid;
}

div.post > div.meta {
	color: #333;
	background: #f3f3f3;
	padding: 5px 10px;
	margin: 0 0 30px 0;
	border-top: #bbb 1px solid;
}

div.meta > a.link {
	color: #333;
	font-weight: bold;
	margin-left: 10px;
}

div.meta > a.comment {
	color: #333;
	font-weight: bold;
	margin-left: 10px;
}

pre.shout, pre {
	background-color: #eee;
	border-radius: 5px 5px;
	padding: 5px;
	font-size: 0.9em;
}
'