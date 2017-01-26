updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	self
		updateDtd: aHtmlRoot;
		updateBody: aHtmlRoot;
		updateStyleSheets: aHtmlRoot;
		updateNavigation: aHtmlRoot;
		updateCanonical: aHtmlRoot;
		updateIcon: aHtmlRoot