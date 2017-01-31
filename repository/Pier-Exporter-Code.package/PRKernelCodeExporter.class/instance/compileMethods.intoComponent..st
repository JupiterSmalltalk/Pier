exporting
compileMethods: methods intoComponent: component
	methods do: [ :method |
		self compileMethod: method intoComponent: component ]