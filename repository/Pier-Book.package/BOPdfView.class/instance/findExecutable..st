private
findExecutable: aString
	| path |
	path := #('/usr/bin' '/usr/local/bin' '/usr/texbin')
		detect: [ :each | (FileDirectory on: each) fileExists: aString ]
		ifNone: [ self error: 'The command ' , aString printString , ' cannot be found.' ].
	^ (FileDirectory on: path) fullNameFor: aString