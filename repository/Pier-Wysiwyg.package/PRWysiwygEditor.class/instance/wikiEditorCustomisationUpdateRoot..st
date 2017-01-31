updating
wikiEditorCustomisationUpdateRoot: anHtmlRoot
	anHtmlRoot stylesheet add:  '
textarea#wikiEditor {
	width: ', self editorWidth,';
}

td.wiki {
	padding-left:0px;
	padding-right:0px;
	padding-bottom:0px;
}
'