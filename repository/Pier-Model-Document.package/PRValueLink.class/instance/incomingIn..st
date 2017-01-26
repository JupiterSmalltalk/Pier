values
incomingIn: aContext
	<value: 'incoming' comment: 'Display all structures referencing the current structure.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		self 
			formatStructureCollection: ((aContext root incomingReferences
				to: structure; 
				collect: [ :each | each owner ])
				select: [ :each | each notNil ]) asSet
			in: aContext ]