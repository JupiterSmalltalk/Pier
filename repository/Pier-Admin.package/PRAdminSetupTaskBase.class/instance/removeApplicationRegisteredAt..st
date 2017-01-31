admin ui tasks
removeApplicationRegisteredAt: dispatcherPathName
	| alreadyDefinedDispatcher existingKernel |
	
	alreadyDefinedDispatcher := WADispatcher default handlerAt: dispatcherPathName.
		
	[ existingKernel := alreadyDefinedDispatcher preferenceAt: #kernel ] on: WAAttributeNotFound do: [ :err | "do nothing" ].
	existingKernel notNil ifTrue: [
		PRKernel instances remove: existingKernel ifAbsent: [ nil ] ].
	
	WAAdmin unregister: dispatcherPathName.
	
	"also try to remove any associated admin instance"
	WAAdmin unregister: dispatcherPathName, '-admin'