values
findIn: aContext
	<value: 'find' comment: 'Display all the structures matching the query parameter.'>

	^ self parameters at: 'query' ifPresent: [ :query |
		self lookupStructure: aContext structure do: [ :structure |
			self
				formatStructureCollection: (structure fullTextSearch
					subString: query)
				in: aContext ] ]