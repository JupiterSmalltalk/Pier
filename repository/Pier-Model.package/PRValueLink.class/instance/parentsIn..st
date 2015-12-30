values
parentsIn: aContext
	<value: 'parents' comment: 'Display the parent chain of the current structure.'>
	
	^ self lookupStructure: aContext structure do: [ :structure |
		self 
			formatStructureCollection: structure parents
			in: aContext ]