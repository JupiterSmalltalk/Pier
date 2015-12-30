accessing
instanceNamed: aString
	"Answer a kernel named aString, create a new one if none exists."

	^ self instances 
		detect: [ :each | each name = aString ]
		ifNone: [ self named: aString ]