accessing
configuration
	^ configuration ifNil: [ configuration := PRWysiwygEditorConfiguration new ]