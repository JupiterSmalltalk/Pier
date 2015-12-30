copying
postCopy
	super postCopy.
	self setDecorations: (self decorations collect: [ :each |
		each copy postCopyTo: self ])