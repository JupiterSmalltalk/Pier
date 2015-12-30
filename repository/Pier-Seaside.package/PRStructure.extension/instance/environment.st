*pier-seaside-environment
environment
	"Answer the (inherited) environment structure of the receiver, if none is available a default one is created."

	^ self localEnvironment ifNil: [
		self isRoot
			ifTrue: [ self newEnvironment ]
			ifFalse: [ self parent environment ] ]