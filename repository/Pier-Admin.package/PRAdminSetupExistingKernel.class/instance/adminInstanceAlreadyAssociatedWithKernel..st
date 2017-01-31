tasks
adminInstanceAlreadyAssociatedWithKernel: kernelPathPair
	PRAdminSetup recursiveDispatcherHandersDo: [ :handler :handlerPath |
		[ (handler isApplication and: [ kernelPathPair = handler pierAdminKernelPathPair ]) ifTrue: [ ^ handlerPath ]
		 ] 
		"no
		      WARequestHandler>>#preferenceAt:ifAbsent: 
	 	so have to handle the exception"
		on: WAAttributeNotFound do: [ :err | "do nothing" ] ].	
	
	^ nil