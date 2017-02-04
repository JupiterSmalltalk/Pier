accessing
process
	^ (Smalltalk classNamed: #OSProcess) ifNil: [ self error: 'OSProcess not found' ]