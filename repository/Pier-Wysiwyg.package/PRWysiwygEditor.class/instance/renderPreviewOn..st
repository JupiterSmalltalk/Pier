rendering
renderPreviewOn: html
	html div
		id: self previewId;
		style: 'height: 300px; width: ', self editorWidth;
		with: [	
			| renderer |
			renderer := PRViewRenderer new.
			renderer withinContentDo: [ 
				renderer start: self document in: self on: html ] ]