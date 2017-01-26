values
siblingsIn: aContext
	<value: 'siblings' comment: 'Display the siblings of the current structure.'>
	
	^ self lookupStructure: aContext structure do: [ :structure |
		self 
			formatStructureCollection: (aContext structure: structure)
				siblings
			in: aContext ]