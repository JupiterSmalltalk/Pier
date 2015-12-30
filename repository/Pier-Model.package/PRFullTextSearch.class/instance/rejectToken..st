accessing
rejectToken: aString
	"Add the token aString to be rejected."

	aString isEmpty
		ifFalse: [ rejectToken add: aString ]