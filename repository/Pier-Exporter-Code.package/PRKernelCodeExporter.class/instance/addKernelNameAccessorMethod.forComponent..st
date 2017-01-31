exporting
addKernelNameAccessorMethod: aKernel forComponent: component
	| method |
	method := String streamContents: [ :stream |
		stream << 'kernelName' << String cr <<
			'	^ ' << aKernel name asCode ].
	self compile: method into: component classified: #constants