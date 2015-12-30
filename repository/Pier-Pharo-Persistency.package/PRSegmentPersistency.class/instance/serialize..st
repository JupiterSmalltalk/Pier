private
serialize: aString
	| stream pointers |
	stream := self directory forceNewFileNamed: aString.
	pointers := [ [ ImageSegment new writeKernel: self kernel on: stream ]
		ensure: [ stream close ] ] on: Exception do: [ :error | nil ].
	(pointers isNil or: [ pointers anySatisfy: [ :each | (each isLiteral or: [ each isVariableBinding ]) not ] ]) 
		ifTrue: [ self directory deleteFileNamed: aString ifAbsent: [ ] ]