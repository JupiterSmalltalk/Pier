collection creation
kernelPathPairs
	| kernelPathPairs |
	kernelPathPairs := OrderedCollection new.
	
	PRAdminSetup recursiveDispatcherHandersDo: [ :handler :handlerPath |
		| kernel |
		
		[ (handler isApplication and: [ (kernel := handler preferenceAt: #kernel) notNil ]) ifTrue: [
			kernelPathPairs add: (self kernel: kernel path: handlerPath) ]
		 ] 
		"no
		      WARequestHandler>>#preferenceAt:ifAbsent: 
	 	so have to handle the exception"
		on: WAAttributeNotFound do: [ :err | "do nothing" ] ].
	
	^ kernelPathPairs