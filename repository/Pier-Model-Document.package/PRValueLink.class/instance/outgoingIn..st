values
outgoingIn: aContext
	<value: 'outgoing' comment: 'Display all structures referenced from the current structure.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		self 
			formatStructureCollection: ((structure outgoingReferences
				select: [ :each | each isInternal ])
				collect: [ :each | each target ])
			in: aContext ]