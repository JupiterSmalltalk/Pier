values
firstIn: aContext
	<value: 'first' comment: 'Display the first sibling of the current structure.'>
	
	^ self lookupStructure: aContext structure do: [ :structure |
		self 
			formatStructure: (aContext structure: structure)
				siblings first
			in: aContext ]