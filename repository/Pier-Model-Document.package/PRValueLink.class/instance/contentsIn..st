values
contentsIn: aContext
	<value: 'contents' comment: 'Display all the children of the current structure.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		self 
			formatStructureCollection: (aContext
				enumeratorFor: structure) all
			in: aContext ]