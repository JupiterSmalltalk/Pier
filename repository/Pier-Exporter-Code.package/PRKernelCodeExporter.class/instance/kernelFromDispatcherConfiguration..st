helpers
kernelFromDispatcherConfiguration: dispatcherPath
	^ self isPier1 
		ifTrue: [ (WADispatcher default entryPointAt: dispatcherPath) configuration valueAt: #kernel ]
		ifFalse: [ 
			| handler |
			handler := WADispatcher default handlerAt: dispatcherPath ifAbsent: nil.
			handler isNil
				ifTrue: [ nil ]
				ifFalse: [ handler configuration at: #kernel ] ]