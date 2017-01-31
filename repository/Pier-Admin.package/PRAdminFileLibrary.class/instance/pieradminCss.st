uploaded
pieradminCss
	^ '
html {
  height:100%;
  overflow:hidden;
}

body {
  background: white !important;
  font-family:Verdana, Helvetica, Geneva, sans-serif;
  font-size:75%;
  height:100%;
  margin:0 0 0 0px;
  overflow:hidden;
  padding:0;
}

a {
	text-decoration: none;
}

tr, th {
	-moz-border-radius: 0em !important;
	-webkit-border-radius: 0em !important;
	border-radius: 0em !important;
}

a.external { 
	background: url(/files/PRAdminFileLibrary/external.png) right center no-repeat; padding-right: 14px; 
}

.ui-layout-pane
{
  font-family:Verdana, Helvetica, Geneva, sans-serif;
  background:#FFF;
  border:1px solid #BBB;
  overflow:auto;
  padding: 1px; 
  text-align: left;
}

.ui-layout-pane-center
{
  padding:4px;
  padding-left:10px;
}

.ui-layout-pane-north
{
  border-bottom:0;
  padding:0;
}

.ui-layout-pane-west
{
  overflow:hidden;
}

.ui-layout-resizer
{
  background:#DDD;
}

.ui-layout-toggler
{
  background:#AAA;
}

.ui-layout-toggler .content
{
  font-size:12px;
  font-weight: bold;
  text-align:center;
}

.ui-layout-toggler-north .content
{
  font-size: 7px;
}

.ui-accordion .ui-accordion-content
{
  padding-bottom:4px!important;
  padding-top:0;
}

.icon a
{
  background:#FFF;
  outline:none;
}

.search input.text
{
  border:1px solid #FFF;
  color:#000;
}

.mainbody
{
  padding-bottom:15em;
  padding-top:4em;
}



#sidebar
{
  font-family:Verdana, Helvetica, Geneva, sans-serif;
  background:#fff;
  color:#000;
}

#sidebar #header h1{
	color: black;
	background: #eeeeee;
	padding: 2px;
	padding-left: 4px;
	height: 20px;
	margin-top: 4px;
	margin-right: 4px;
	margin-bottom: 5px;
	font-size:18px;
}

#sidebar #header.title {
	margin-left: 5px;
	margin-bottom: 10px;
}

#sidebar #browser .menuitem.page
{
  background-image:url(text-html.png);
}

#sidebar #browser .menuitem.system
{
  background-image:url(applications-system.png);
}

#sidebar #browser .menuitem.management
{
  background-image:url(preferences-system.png);
}

#sidebar #browser .menuitem.components
{
  background-image:url(package-x-generic.png);
}

#sidebar #browser .menuitem.templates
{
  background-image:url(x-office-document-template.png);
}

#sidebar #commands {
  margin-top: 30px;
  margin-left: 5px;
}

#sidebar #refreshNavigator {
	margin-top:5px;
}

#sidebar #pierInstanceLink {
  margin-top: 10px;
  margin-left: 5px;
}

.wiki a:hover {
	border: none;
}

.main
{
	height: 100%;
	width: 100%;
	overflow: hidden;
	
}

.jstree-default.jstree-focused {
	background: none;
}

div#tabs {
	font-family:Verdana, Helvetica, Geneva, sans-serif;
	background-color: #eeeeee;
	margin-bottom: 5px;
}

ul.tabs {
	margin: 0;
	padding: 0;
	list-style-type: none;
	list-style-image: none;
}

.tabs li {
	display: inline-block;
}

.tabs li a {
	padding: 0 1em 1px;
	line-height: 25px;
	font-size: 1.0em;
	color: black;
	text-decoration: none;
	margin-bottom: none;
}

.tabs li.active a,  .tabs  li a:hover {
	border-bottom: 2px solid #aaaaaa;
	background: none;
}

.tabs li.active a {
	border-bottom-color: #cccccc;
}

iframe#iFrameView {
	width:100%;
	height:800px;
	border:none;
	overflow: auto;
}

#main > #content {
	border: 1px;
	border-style: solid;
	border-color: #eeeeee;
	height: 800px;
}

#loggedInAs {
	font-size: 80%
}

#vakata-contextmenu {
	font-family:Verdana, Helvetica, Geneva, sans-serif;
}

#vakata-contextmenu ins {
	background:none ;
}

.adminLogin {
	padding: 10px;
}

.adminLogin h1 {
	font-size: 30px;
}

.adminLoginTitle {
	vertical-align: top;
}
'