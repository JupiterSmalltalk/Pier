exporting
addRootAccessorMethodOn: component
	| method |
	method := String streamContents: [ :stream |
		stream << 'root' << String cr <<
			'	^ root' ].
	self compileMethod: method intoComponent: component