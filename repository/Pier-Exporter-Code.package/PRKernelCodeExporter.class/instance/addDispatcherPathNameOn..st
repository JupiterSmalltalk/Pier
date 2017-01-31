exporting
addDispatcherPathNameOn: component
	| method |
	method := String streamContents: [ :stream |
		stream << 'dispatcherPathName' << String cr <<
			'	^ ' << dispatcherPathName asCode ].
	self compile: method into: component classified: #constants