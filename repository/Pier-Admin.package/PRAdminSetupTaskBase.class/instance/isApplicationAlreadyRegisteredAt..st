admin ui tasks
isApplicationAlreadyRegisteredAt: dispatcherPathName
	| alreadyDefinedDispatcher |
	
	alreadyDefinedDispatcher := (WADispatcher default handlerAt: dispatcherPathName ifAbsent: [ nil ]).
	^ alreadyDefinedDispatcher notNil