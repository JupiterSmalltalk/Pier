rendering
renderContentOn: canvas
	canvas rendererInstance withinContentDo: [ 
		canvas rendererInstance
			continue: self document
			in: self on: canvas ]