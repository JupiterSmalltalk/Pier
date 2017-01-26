copying
postCopy
	super postCopy.
	self parent: nil; tags: self tags copy.
	self magritteDescription do: [ :description |
		description isDocumentDescription ifTrue: [
			self
				write: (self readUsing: description) copy
				using: description ] ]