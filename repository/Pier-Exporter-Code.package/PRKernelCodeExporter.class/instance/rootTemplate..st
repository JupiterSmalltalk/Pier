exporting
rootTemplate: rootComponent
	^ String streamContents: [ :stream | 
		stream << 'root: aKernel
	^ root ifNil: [
		root := self ' << (rootComponent asSelector) << ': aKernel ]' ]