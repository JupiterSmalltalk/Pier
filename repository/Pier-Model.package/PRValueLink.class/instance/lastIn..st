values
lastIn: aContext
	<value: 'last' comment: 'Display the last sibling of the current structure.'>
	
	^ self lookupStructure: aContext structure do: [ :structure |
		self 
			formatStructure: (aContext structure: structure) 
				siblings last
			in: aContext ]