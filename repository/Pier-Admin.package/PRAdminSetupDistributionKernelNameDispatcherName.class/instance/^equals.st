comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ kernelName = anObject kernelName
		and: [ dispatcherName = anObject dispatcherName and: [ distribution = anObject distribution ] ]