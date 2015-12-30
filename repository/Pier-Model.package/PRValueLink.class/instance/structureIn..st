values
structureIn: aContext
	<value: 'structure' comment: 'Display the current structure.'>
	
	^ self lookupStructure: aContext structure do: [ :structure |
		self formatStructure: structure in: aContext ]