rendering
defineElementIds: html
	self previewId: html nextId.
	self tabId: html nextId.
	self textId ifNil: [ self textId: html nextId ]