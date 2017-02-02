accessing
targetString: aString
	self targetString = aString 
		ifTrue: [ ^ self ].
	self target reference: aString.
	self refresh