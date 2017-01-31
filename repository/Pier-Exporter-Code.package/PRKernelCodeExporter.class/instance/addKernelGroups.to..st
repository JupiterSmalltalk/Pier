exporting - permissions
addKernelGroups: kernel to: component
	| method |
	method := String streamContents: [ :stream |
		stream << 'addGroupsToKernel: aKernel' << String cr <<
			'	aKernel propertyAt: #groups put:' << String cr <<
			' 		(Set new' << String cr. 
		kernel groups do: [ :group |
			stream << '			add: '.
			self writeGroup: group on: stream ]. 
	stream << '			yourself).' << String cr.
	stream << '	aKernel propertyAt: #adminGroup put: (aKernel groupNamed: ''' << kernel adminGroup name << ''' ifNone: nil)' << String cr ].
	self compileMethod: method intoComponent: component