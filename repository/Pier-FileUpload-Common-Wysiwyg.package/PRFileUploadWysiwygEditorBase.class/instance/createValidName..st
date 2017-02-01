helpers
createValidName: filename
	^ (filename collect: [ :char |
		(PRPath isValidCharacter: char)
			ifTrue: [ char asLowercase ]
			ifFalse: [
				Character space = char
					ifTrue: [ $- ]
					ifFalse: [ $_ ] ] ])