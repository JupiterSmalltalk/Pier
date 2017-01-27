rendering
renderViewerOn: html
	self value isNil
		ifTrue: [ ^ html render: self string ].
	html anchor
		goto: (self context structure: self value);
		with: self string