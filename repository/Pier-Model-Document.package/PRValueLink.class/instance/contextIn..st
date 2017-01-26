values
contextIn: aContext
	<value: 'context' comment: 'Display the current context.'>

	^ self formatDescribed: aContext default: #(command label)