streaming
nextPut: aCharacter
	| string |
	string := LatexCharacters at: aCharacter ifAbsent: nil.
	string isNil
		ifTrue: [ stream nextPut: aCharacter ]
		ifFalse: [ stream nextPutAll: string ]