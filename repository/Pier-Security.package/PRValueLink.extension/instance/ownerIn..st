*pier-security
ownerIn: aContext
	<value: 'owner' comment: 'Display the owner of the current structure.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		self formatDescribed: structure owner default: #name ]