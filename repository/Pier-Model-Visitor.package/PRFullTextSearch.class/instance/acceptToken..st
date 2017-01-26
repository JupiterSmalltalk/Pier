accessing
acceptToken: aString
	"Add the token aString to be accepted."
	
	aString isEmpty
		ifFalse: [ acceptToken add: aString ]