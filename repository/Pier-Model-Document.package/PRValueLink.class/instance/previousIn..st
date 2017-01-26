values
previousIn: aContext
	<value: 'previous' comment: 'Display the previous sibling of the current structure.'>
	
	^ self lookupStructure: aContext structure do: [ :target |
		| elements output |
		elements := (self hasParameter: 'nested')
			ifFalse: [ (aContext structure: target) siblings ]
			ifTrue: [ (aContext enumeratorFor: target root) everything contents ].
		(elements copyUpTo: target) reverseDo: [ :structure |
			(output := self formatStructure: structure in: aContext) notNil
				ifTrue: [ ^ output ] ].
		nil ]