updating
updateRoot: html
	super updateRoot: html.
	self verificationKey isEmptyOrNil
		ifTrue: [ ^ self ].
	html meta
		name: 'verify-v1';
		content: self verificationKey