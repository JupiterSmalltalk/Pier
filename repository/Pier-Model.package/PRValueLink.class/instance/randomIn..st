values
randomIn: aContext
	<value: 'random' comment: 'Display a random child of the current structure.'>

	| structures |
	^ self lookupStructure: aContext structure do: [ :structure |
		structures := (aContext structure: structure)
			enumerator all contents.
		structures isEmpty 
			ifFalse: [ self formatStructure: structures atRandom in: aContext ] ]