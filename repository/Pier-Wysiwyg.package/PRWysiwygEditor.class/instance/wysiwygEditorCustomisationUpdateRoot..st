updating
wysiwygEditorCustomisationUpdateRoot: anHtmlRoot
	| toolbarUrl |
	toolbarUrl :=  (PREditorScripts / #toolbarPng) greaseString.
	anHtmlRoot javascript url: PRWysiwygFileLibrary / #parseHtmlToPierWikiSyntaxJs.
	
	anHtmlRoot stylesheet add: '
.yui-toolbar-group {
	margin-top: 4px;
}
.yui-skin-sam .yui-toolbar-container .yui-toolbar-code span.yui-toolbar-icon {
	background-image: url( ', toolbarUrl, ');
	background-position: -64px 0px;
	margin-left: 5px;
	margin-top: 2px;
}

.yui-skin-sam .yui-toolbar-container .yui-toolbar-rule span.yui-toolbar-icon {
	background-image: url( ', toolbarUrl, ' );
	background-position: -208px 0px;
	margin-left: 5px;
	margin-top: 2px;
}

.yui-skin-sam .yui-toolbar-container .yui-toolbar-strike span.yui-toolbar-icon {
	background-image: url( ', toolbarUrl, ' );
	background-position: -48px 0px;
	margin-left: 5px;
	margin-top: 2px;
}

.yui-overlay {
	font: 13px/1.231 arial,  helvetica, clean, sans-serif;
}
'