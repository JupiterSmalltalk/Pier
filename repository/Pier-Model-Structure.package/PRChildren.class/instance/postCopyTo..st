copying
postCopyTo: anObject
	super postCopyTo: anObject.
	children := children collect: [ :each | 
		each copy postCopyTo: self decorated ]