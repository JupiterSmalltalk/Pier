private
recursiveHandersOn: aDispatcher path: path do: aBlock
	aDispatcher handlers associationsDo: [ :each | 
		| handlerPath |
		handlerPath := path, '/', each key.
		aBlock value: each value value: handlerPath.
		
		each value isDispatcher ifTrue: [ 
			self recursiveHandersOn: each value path: handlerPath do: aBlock ] ]