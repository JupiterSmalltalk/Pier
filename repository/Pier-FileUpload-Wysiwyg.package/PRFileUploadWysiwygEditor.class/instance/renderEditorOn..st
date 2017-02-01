rendering
renderEditorOn: html
	self defineElementIdsOn: html.
	self defineUploadConfiguration.
	
	self renderEditorInsertImagePopupOn: html.
	super renderEditorOn: html