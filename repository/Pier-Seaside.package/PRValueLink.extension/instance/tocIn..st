*pier-seaside
tocIn: aContext
	<value: 'toc' comment: 'Display the table of contents of the current structure.'>

	^ self lookupStructure: aContext structure do: [ :structure | [ :html |
		PRTocRenderer new 
			start: structure
			in: self 
			on: html ] ]