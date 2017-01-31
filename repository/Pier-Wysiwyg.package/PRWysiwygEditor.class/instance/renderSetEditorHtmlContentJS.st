rendering
renderSetEditorHtmlContentJS
	| renderer wysiwygHtml jsStream |
		
	renderer := PRWysiwygEditorRenderer new.
	wysiwygHtml := WAHtmlCanvas builder	
		render: [ :r | 
			renderer withinContentDo: [ 
				renderer start: self document in: self on: r ] ].

	jsStream := JSStream new.
	jsStream nextPutAll: 'pierWysiwygEditor.setEditorHTML('.
	JSStream encodeString: wysiwygHtml on: jsStream stream.
	jsStream nextPutAll: ')'.
		
	^ jsStream