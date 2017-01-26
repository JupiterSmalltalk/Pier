values
parentIn: aContext
	<value: 'parent' comment: 'Display the parent of the current structure.'>
	
	| output |
	^ self lookupStructure: aContext structure do: [ :target |
		target isRoot ifFalse: [
			target parent parents reverseDo: [ :structure |
				(output := self formatStructure: structure in: aContext) notNil
					ifTrue: [ ^ output ] ] ].
		nil ]