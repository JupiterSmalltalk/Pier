updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	PREditorScripts default updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet url: PRWysiwygFileLibrary / #modifiedjqueryui1812redmondCss.