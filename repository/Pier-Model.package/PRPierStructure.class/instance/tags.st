accessing
tags
	"Answer a list of tags specific to the receiver."

	^ tags ifNil: [ tags := #() ]