actions
absoluteReference
	self targetPath removeFirst.
	self writeDelimiter.
	self targetPath 	
		do: [ :each | self visit: each ]
		separatedBy: [ self writeDelimiter ].
	^ self stream contents