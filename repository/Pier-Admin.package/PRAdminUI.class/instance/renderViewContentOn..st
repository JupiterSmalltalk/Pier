rendering
renderViewContentOn: html
	html div
		id: #content;
			with: [
				self isShowingPreview
					ifTrue: [
						self renderIFrameViewOn: html ]
					ifFalse: [
						self onlyRenderPierComponent.
						self renderViewOn: html ]  ]