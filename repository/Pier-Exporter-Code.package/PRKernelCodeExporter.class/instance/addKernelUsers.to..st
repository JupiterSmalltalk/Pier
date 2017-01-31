exporting - permissions
addKernelUsers: kernel to: component
	| method |
	method := String streamContents: [ :stream |
		stream << 'addUsersToKernel: aKernel' << String cr <<
			'	aKernel propertyAt: #users put: (Set new' << String cr. 
		kernel users do: [ :user |
			stream << '		add: '.
			self writeUser: user on: stream ]. 
	stream << '		yourself).' << String cr.
	stream << 
		'	aKernel propertyAt: #adminUser put: (aKernel userNamed: ''' << kernel adminUser name << ''' ifNone: nil)' << String cr ].
	self compileMethod: method intoComponent: component