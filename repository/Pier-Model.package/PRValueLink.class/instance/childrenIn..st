values
childrenIn: aContext
	<value: 'children' comment: 'Display immediate children of the current structure.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		self
			formatStructureCollection: (aContext
				enumeratorFor: structure) 
			in: aContext ]