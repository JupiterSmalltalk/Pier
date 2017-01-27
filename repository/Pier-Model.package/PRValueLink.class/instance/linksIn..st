values
linksIn: aContext
	<value: 'links' comment: 'Display all links from the current structure.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		self formatCollection: ((structure outgoingReferences 
			select: [ :each | each isInternal or: [ each isExternal ] ])
			collect: [ :each | each copy embedded: false ]) ]