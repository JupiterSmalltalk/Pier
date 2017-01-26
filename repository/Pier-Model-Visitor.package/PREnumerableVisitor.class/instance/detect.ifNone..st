enumerating
detect: aBlock ifNone: exceptionBlock
	"Evaluate aBlock for every structure visited by the receiver.  
	Answer the first element for which aBlock evaluates to true. If none  
	evaluate to true, then evaluate the argument, exceptionBlock."

	self do: [:each | (aBlock value: each) ifTrue: [^ each]].
	^ exceptionBlock value