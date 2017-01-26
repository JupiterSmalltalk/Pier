values
editedIn: aContext
	<value: 'edited' comment: 'Display the last performed context.'>
	
	^ self lookupStructure: aContext structure do: [ :structure |
		aContext kernel persistency
			reverseDo: [ :each | ^ self contextIn: each ]
			for: structure.
		nil ]