accessing
document
	^ link ifNil: [ link := super document ]