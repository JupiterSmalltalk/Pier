*pier-security
groupIn: aContext
	<value: 'group' comment: 'Display the group of the current structure.'>
	
	^ self lookupStructure: aContext structure do: [ :structure |
		self formatDescribed: structure group default: #name ]