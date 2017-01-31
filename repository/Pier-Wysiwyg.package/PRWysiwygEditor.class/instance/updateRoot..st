updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	self wysiwygEditorUpdateRoot: anHtmlRoot.
	self jQueryTabsCustomisationUpdateRoot: anHtmlRoot.
	self wikiEditorCustomisationUpdateRoot: anHtmlRoot