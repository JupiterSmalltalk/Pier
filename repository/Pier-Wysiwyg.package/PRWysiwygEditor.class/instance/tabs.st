private
tabs
	^ tabs ifNil: [
		tabs := OrderedCollection new.
		tabs 
			add: (Association key: 'Wiki Editor' value: ((Dictionary new) 
				at: #renderer put: [ :r | self renderWikiEditorOn: r ];
				yourself));
			add: (Association key: 'Wysiwyg editor' value: ((Dictionary new) 
				at: #renderer put: [ :r | self renderWysiwygEditorOn: r ];
				yourself));
			add: (Association key: 'Preview' value: ((Dictionary new) 
				at: #renderer put: [ :r | self renderPreviewOn: r ];
				yourself));
			yourself ]