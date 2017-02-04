accessing
label
	^ super label , ' ' , (self number ifNil: [ '' ])