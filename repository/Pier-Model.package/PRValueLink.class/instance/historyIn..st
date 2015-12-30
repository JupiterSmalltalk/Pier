values
historyIn: aContext
	<value: 'history' comment: 'Display the history for the current structure.'>
	
	| contexts |
	^ self lookupStructure: aContext structure do: [ :structure |
		contexts := (aContext kernel persistency historyFor: structure)
			collect: [ :context | self contextIn: context ].
		self formatCollection: contexts ]